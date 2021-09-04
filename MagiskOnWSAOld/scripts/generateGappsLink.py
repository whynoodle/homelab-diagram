#!/usr/bin/python3
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

import sys

import requests
import json
import re
from pathlib import Path

arch = sys.argv[1]
brand = sys.argv[2]
variant = sys.argv[3]
download_dir = Path.cwd().parent / \
    "download" if sys.argv[4] == "" else Path(sys.argv[4]).resolve()
tempScript = sys.argv[5]
android_api = sys.argv[6]
file_name = sys.argv[7]
print(
    f"Generating {brand} download link: arch={arch} variant={variant}", flush=True)
abi_map = {"x64": "x86_64", "arm64": "arm64"}
android_api_map = {"30": "11.0", "32": "12.1", "33": "13.0"}
release = android_api_map[android_api]
if brand == "OpenGApps":
    # Use Android 12.1 build of OpenGApps (also supports more variants like Full)
    if arch == "x64" and variant == "pico":
        link 