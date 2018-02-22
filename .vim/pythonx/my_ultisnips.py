#!/usr/bin/python3

def shebang(snip, prefix="/usr/bin/"):
    if not snip.c:
        filetype = snip.ft if snip.ft else "sh"
        snip.rv = "#!"+prefix+filetype
        for i in range(2-len(snip.buffer)): snip += ""
