
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