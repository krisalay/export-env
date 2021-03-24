#!/bin/bash
set -e

while read p; do
  echo "$p"
done <${INPUT_FILENAME}
