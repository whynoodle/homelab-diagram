
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
from xml.dom import minidom
import html
import warnings
import re
from pathlib import Path
import os

warnings.filterwarnings("ignore")

arch = sys.argv[1]

release_name_map = {"retail": "Retail", "RP": "Release Preview",
                    "WIS": "Insider Slow", "WIF": "Insider Fast"}
release_type = sys.argv[2] if sys.argv[2] != "" else "Retail"
release_name = release_name_map[release_type]
download_dir = Path.cwd().parent / "download" if sys.argv[3] == "" else Path(sys.argv[3]).resolve()
tempScript = sys.argv[4]
cat_id = '858014f3-3934-4abe-8078-4aa193e74ca8'
print(f"Generating WSA download link: arch={arch} release_type={release_name}", flush=True)
with open(Path.cwd().parent / ("xml/GetCookie.xml"), "r") as f:
    cookie_content = f.read()

out = requests.post(
    'https://fe3.delivery.mp.microsoft.com/ClientWebService/client.asmx',
    data=cookie_content,
    headers={'Content-Type': 'application/soap+xml; charset=utf-8'},
    verify=False
)
doc = minidom.parseString(out.text)
cookie = doc.getElementsByTagName('EncryptedData')[0].firstChild.nodeValue

with open(Path.cwd().parent / "xml/WUIDRequest.xml", "r") as f:
    cat_id_content = f.read().format(cookie, cat_id, release_type)

out = requests.post(