#!/usr/bin/env python3
import sys
import pysrt

def cleaner(file):
    lines_seen = set()  # holds lines already seen
    out = []
    with open(file.replace(".srt", ".txt"), "wt") as outFile:
        sub = pysrt.open(file).text.split('\n')
        for line in sub:
            if line not in lines_seen:  # not a duplicate
                lines_seen.add(line)
                out.append(line)
        outFile.write("\n".join(out))

if __name__ == "__main__":
    if len(sys.argv) != 2: raise SystemExit("Usage: clearnSrt.py <fileName.srt>")
    cleaner(sys.argv[1])
