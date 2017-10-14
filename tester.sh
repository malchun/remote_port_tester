#!/bin/bash

if [ $# -eq 2 ]; then
  (echo > /dev/tcp/${1}/${2}) >/dev/null 2>&1 && echo "  Open" || echo "  Close"
else
  echo "Usage: $0 <host> <port>"
fi
