#!/usr/bin/env python3
from pathlib import Path

def main():
    p = Path('/home/ryan/sheetmusic/lbi/offices/')
    def recur(dir):
        if not [z for z in dir.iterdir()]:
            dir.joinpath('readme.md').touch()
            # print(f"create readme at {dir.absolute()}")
            return
        for item in dir.iterdir():
            if item.is_dir():
                recur(item)
    recur(p)




if __name__ == "__main__":
    main()

