#!/usr/bin/env python3
import sys
from pathlib import Path

# either Psalm-Organ, Ant-Organ, Ant-Cantor
pattern = sys.argv[1]

allFiles = (path for path in Path('.').glob(pattern + '.ly'))
for item in allFiles:
    sys.stdout.write(f" {item.name} ")

