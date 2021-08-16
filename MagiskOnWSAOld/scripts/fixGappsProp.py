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

from __future__ import annotations
from io import TextIOWrapper
from typing import OrderedDict
from pathlib import Path
import sys
class Prop(OrderedDict):
    def __init__(self, file: TextIOWrapper) -> None:
        super().__init__()
        for i, line in enumerate(file.read().splitlines(False)):
            if '=' in line:
                k, v = line.split('=', 2)
                self[k] = v
            else:
                self[f".{i}"] = line

    def __str__(self) -> str:
        return '\n'.join([v if k.startswith('.') else f"{k}={v}" for k, v in self.items()])

    def __iadd__(self, other: str) -> Prop:
        self[f".{len(self)}"] = other
        return self


new_props = {
    ("product", "brand"): "google",
    ("product", "manufacturer"): "Google",
    ("build", "product"):