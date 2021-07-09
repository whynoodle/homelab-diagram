
#!/bin/bash
#
# This file is part of MagiskOnWSALocal.
#
# MagiskOnWSALocal is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# MagiskOnWSALocal is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with MagiskOnWSALocal.  If not, see <https://www.gnu.org/licenses/>.
#
# Copyright (C) 2022 LSPosed Contributors
#

if [ ! "$BASH_VERSION" ]; then
    echo "Please do not use sh to run this script, just execute it directly" 1>&2
    exit 1
fi
HOST_ARCH=$(uname -m)
if [ "$HOST_ARCH" != "x86_64" ] && [ "$HOST_ARCH" != "aarch64" ]; then
    echo "Unsupported architectures: $HOST_ARCH"
    exit 1
fi
cd "$(dirname "$0")" || exit 1
trap umount_clean EXIT
# export TMPDIR=$(dirname "$PWD")/WORK_DIR_
if [ "$TMPDIR" ] && [ ! -d "$TMPDIR" ]; then
    mkdir -p "$TMPDIR"
fi
WORK_DIR=$(mktemp -d -t wsa-build-XXXXXXXXXX_) || exit 1
DOWNLOAD_DIR=../download
DOWNLOAD_CONF_NAME=download.list
OUTPUT_DIR=../output
MOUNT_DIR="$WORK_DIR"/system
SUDO="$(which sudo 2>/dev/null)"
if [ -z "$SUDO" ]; then
    unset SUDO
fi
WSA_WORK_ENV="${WORK_DIR:?}"/ENV
if [ -f "$WSA_WORK_ENV" ]; then rm -f "${WSA_WORK_ENV:?}"; fi
touch "$WSA_WORK_ENV"
export WSA_WORK_ENV
umount_clean() {
    if [ -d "$MOUNT_DIR" ]; then
        echo "Cleanup Work Directory"
        if [ -d "$MOUNT_DIR/vendor" ]; then
            $SUDO umount "$MOUNT_DIR"/vendor
        fi
        if [ -d "$MOUNT_DIR/product" ]; then
            $SUDO umount "$MOUNT_DIR"/product
        fi
        if [ -d "$MOUNT_DIR/system_ext" ]; then
            $SUDO umount "$MOUNT_DIR"/system_ext
        fi
        $SUDO umount "$MOUNT_DIR"
        $SUDO rm -rf "${WORK_DIR:?}"
    else
        rm -rf "${WORK_DIR:?}"
    fi
    if [ "$TMPDIR" ] && [ -d "$TMPDIR" ]; then
        rm -rf "${TMPDIR:?}"
        unset TMPDIR
    fi
}
clean_download() {
    if [ -d "$DOWNLOAD_DIR" ]; then
        echo "Cleanup Download Directory"
        if [ "$CLEAN_DOWNLOAD_WSA" ]; then
            rm -f "${WSA_ZIP_PATH:?}"
        fi
        if [ "$CLEAN_DOWNLOAD_MAGISK" ]; then
            rm -f "${MAGISK_PATH:?}"
        fi
        if [ "$CLEAN_DOWNLOAD_GAPPS" ]; then
            rm -f "${GAPPS_PATH:?}"
        fi
    fi
}
abort() {
    echo "Build: an error has occurred, exit"
    if [ -d "$WORK_DIR" ]; then
        umount_clean
    fi
    clean_download
    exit 1
}
trap abort INT TERM

Gen_Rand_Str() {
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c"$1"
}

default() {
    ARCH=x64
    RELEASE_TYPE=retail
    MAGISK_VER=stable
    GAPPS_BRAND=MindTheGapps
    GAPPS_VARIANT=pico
    ROOT_SOL=magisk
}

exit_with_message() {
    echo "ERROR: $1"
    usage
    exit 1
}

ARCH_MAP=(
    "x64"
    "arm64"
)

RELEASE_TYPE_MAP=(
    "retail"
    "RP"
    "WIS"
    "WIF"
)

MAGISK_VER_MAP=(
    "stable"
    "beta"
    "canary"
    "debug"
    "release"
)

GAPPS_BRAND_MAP=(
    "OpenGApps"
    "MindTheGapps"
    "none"
)

GAPPS_VARIANT_MAP=(
    "super"
    "stock"
    "full"
    "mini"
    "micro"
    "nano"
    "pico"
    "tvstock"
    "tvmini"
)

ROOT_SOL_MAP=(
    "magisk"
    "none"
)

COMPRESS_FORMAT_MAP=(
    "7z"
    "xz"
    "zip"
)

ARR_TO_STR() {
    local arr=("$@")
    local joined
    printf -v joined "%s, " "${arr[@]}"
    echo "${joined%, }"
}
GAPPS_PROPS_MSG1="\033[0;31mWARNING: Services such as the Play Store may stop working properly."
GAPPS_PROPS_MSG2="We are not responsible for any problems caused by this!\033[0m"
GAPPS_PROPS_MSG3="Info: https://support.google.com/android/answer/10248227"
usage() {
    default
    echo -e "
Usage:
    --arch              Architecture of WSA.

                        Possible values: $(ARR_TO_STR "${ARCH_MAP[@]}")
                        Default: $ARCH

    --release-type      Release type of WSA.
                        RP means Release Preview, WIS means Insider Slow, WIF means Insider Fast.

                        Possible values: $(ARR_TO_STR "${RELEASE_TYPE_MAP[@]}")
                        Default: $RELEASE_TYPE

    --magisk-ver        Magisk version.

                        Possible values: $(ARR_TO_STR "${MAGISK_VER_MAP[@]}")
                        Default: $MAGISK_VER

    --gapps-brand       GApps brand.
                        \"none\" for no integration of GApps

                        Possible values: $(ARR_TO_STR "${GAPPS_BRAND_MAP[@]}")
                        Default: $GAPPS_BRAND

    --gapps-variant     GApps variant.

                        Possible values: $(ARR_TO_STR "${GAPPS_VARIANT_MAP[@]}")
                        Default: $GAPPS_VARIANT

    --root-sol          Root solution.
                        \"none\" means no root.

                        Possible values: $(ARR_TO_STR "${ROOT_SOL_MAP[@]}")
                        Default: $ROOT_SOL

    --compress-format
                        Compress format of output file.
                        If this option is not specified and --compress is not specified, the generated file will not be compressed

                        Possible values: $(ARR_TO_STR "${COMPRESS_FORMAT_MAP[@]}")

Additional Options:
    --remove-amazon     Remove Amazon Appstore from the system
    --compress          Compress the WSA, The default format is 7z, you can use the format specified by --compress-format
    --offline           Build WSA offline
    --magisk-custom     Install custom Magisk
    --skip-download-wsa Skip download WSA
    --debug             Debug build mode
    --help              Show this help message and exit
    --nofix-props       No fix \"build.prop\"
                        $GAPPS_PROPS_MSG1
                        $GAPPS_PROPS_MSG2
                        $GAPPS_PROPS_MSG3

Example:
    ./build.sh --release-type RP --magisk-ver beta --gapps-variant pico --remove-amazon
    ./build.sh --arch arm64 --release-type WIF --gapps-brand OpenGApps --nofix-props
    ./build.sh --release-type WIS --gapps-brand none
    ./build.sh --offline --gapps-variant pico --magisk-custom
    "
}

ARGUMENT_LIST=(
    "arch:"
    "release-type:"
    "magisk-ver:"
    "gapps-brand:"
    "gapps-variant:"
    "nofix-props"
    "root-sol:"
    "compress-format:"
    "remove-amazon"
    "compress"
    "offline"
    "magisk-custom"
    "debug"
    "help"
    "skip-download-wsa"
)

default

opts=$(
    getopt \
        --longoptions "$(printf "%s," "${ARGUMENT_LIST[@]}")" \
        --name "$(basename "$0")" \
        --options "" \
        -- "$@"
) || exit_with_message "Failed to parse options, please check your input"

eval set --"$opts"
while [[ $# -gt 0 ]]; do
   case "$1" in
        --arch              ) ARCH="$2"; shift 2 ;;
        --release-type      ) RELEASE_TYPE="$2"; shift 2 ;;
        --gapps-brand       ) GAPPS_BRAND="$2"; shift 2 ;;
        --gapps-variant     ) GAPPS_VARIANT="$2"; shift 2 ;;
        --nofix-props       ) NOFIX_PROPS="yes"; shift ;;
        --root-sol          ) ROOT_SOL="$2"; shift 2 ;;
        --compress-format   ) COMPRESS_FORMAT="$2"; shift 2 ;;
        --remove-amazon     ) REMOVE_AMAZON="yes"; shift ;;
        --compress          ) COMPRESS_OUTPUT="yes"; shift ;;
        --offline           ) OFFLINE="on"; shift ;;
        --magisk-custom     ) CUSTOM_MAGISK="debug"; shift ;;
        --magisk-ver        ) MAGISK_VER="$2"; shift 2 ;;
        --debug             ) DEBUG="on"; shift ;;
        --skip-download-wsa ) DOWN_WSA="no"; shift ;;
        --help              ) usage; exit 0 ;;
        --                  ) shift; break;;
   esac
done

if [ "$CUSTOM_MAGISK" ]; then
    if [ -z "$MAGISK_VER" ]; then
        MAGISK_VER=$CUSTOM_MAGISK
    fi
fi

check_list() {
    local input=$1
    if [ -n "$input" ]; then
        local name=$2
        shift
        local arr=("$@")
        local list_count=${#arr[@]}
        for i in "${arr[@]}"; do
            if [ "$input" == "$i" ]; then
                echo "INFO: $name: $input"
                break
            fi
            ((list_count--))
            if (("$list_count" <= 0)); then
                exit_with_message "Invalid $name: $input"
            fi
        done
    fi
}

check_list "$ARCH" "Architecture" "${ARCH_MAP[@]}"
check_list "$RELEASE_TYPE" "Release Type" "${RELEASE_TYPE_MAP[@]}"
check_list "$MAGISK_VER" "Magisk Version" "${MAGISK_VER_MAP[@]}"
check_list "$GAPPS_BRAND" "GApps Brand" "${GAPPS_BRAND_MAP[@]}"
check_list "$GAPPS_VARIANT" "GApps Variant" "${GAPPS_VARIANT_MAP[@]}"
check_list "$ROOT_SOL" "Root Solution" "${ROOT_SOL_MAP[@]}"
check_list "$COMPRESS_FORMAT" "Compress Format" "${COMPRESS_FORMAT_MAP[@]}"

if [ "$DEBUG" ]; then
    set -x
fi

require_su() {
    if test "$(whoami)" != "root"; then
        if [ -z "$SUDO" ] || [ "$($SUDO whoami)" != "root" ]; then
            echo "ROOT/SUDO is required to run this script"
            abort
        fi
    fi
}

declare -A RELEASE_NAME_MAP=(["retail"]="Retail" ["RP"]="Release Preview" ["WIS"]="Insider Slow" ["WIF"]="Insider Fast")
declare -A ANDROID_API_MAP=(["30"]="11.0" ["32"]="12.1" ["33"]="13.0")
RELEASE_NAME=${RELEASE_NAME_MAP[$RELEASE_TYPE]} || abort

echo -e "Build: RELEASE_TYPE=$RELEASE_NAME"

WSA_ZIP_PATH=$DOWNLOAD_DIR/wsa-$RELEASE_TYPE.zip
vclibs_PATH=$DOWNLOAD_DIR/Microsoft.VCLibs."$ARCH".14.00.Desktop.appx
xaml_PATH=$DOWNLOAD_DIR/Microsoft.UI.Xaml_"$ARCH".appx
MAGISK_ZIP=magisk-$MAGISK_VER.zip
MAGISK_PATH=$DOWNLOAD_DIR/$MAGISK_ZIP
if [ "$CUSTOM_MAGISK" ]; then
    if [ ! -f "$MAGISK_PATH" ]; then
        echo "Custom Magisk $MAGISK_ZIP not found"
        MAGISK_ZIP=app-$MAGISK_VER.apk
        echo "Fallback to $MAGISK_ZIP"
        MAGISK_PATH=$DOWNLOAD_DIR/$MAGISK_ZIP
        if [ ! -f "$MAGISK_PATH" ]; then
            echo -e "Custom Magisk $MAGISK_ZIP not found\nPlease put custom Magisk in $DOWNLOAD_DIR"
            abort
        fi
    fi
fi
ANDROID_API=32
update_gapps_zip_name() {
    if [ "$GAPPS_BRAND" = "OpenGApps" ]; then
        # TODO: keep it 11.0 since official opengapps does not support 12+ yet
        # As soon as opengapps is available for 12+, we need to get the sdk/release from build.prop and download the corresponding version
        ANDROID_API=30
        GAPPS_ZIP_NAME="$GAPPS_BRAND-$ARCH-${ANDROID_API_MAP[$ANDROID_API]}-$GAPPS_VARIANT".zip
    else
        GAPPS_ZIP_NAME="$GAPPS_BRAND-$ARCH-${ANDROID_API_MAP[$ANDROID_API]}".zip
    fi
    GAPPS_PATH=$DOWNLOAD_DIR/$GAPPS_ZIP_NAME
}
update_gapps_zip_name
if [ -z "${OFFLINE+x}" ]; then
    trap 'rm -f -- "${DOWNLOAD_DIR:?}/${DOWNLOAD_CONF_NAME}"' EXIT
    require_su
    if [ "${DOWN_WSA}" != "no" ]; then
        echo "Generate Download Links"
        python3 generateWSALinks.py "$ARCH" "$RELEASE_TYPE" "$DOWNLOAD_DIR" "$DOWNLOAD_CONF_NAME" || abort
        # shellcheck disable=SC1091
        source "${WORK_DIR:?}/ENV" || abort
    else
        DOWN_WSA_MAIN_VERSION=2211
    fi
    if [[ "$DOWN_WSA_MAIN_VERSION" -ge 2211 ]]; then
        ANDROID_API=33