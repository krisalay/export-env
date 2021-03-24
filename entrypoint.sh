#!/bin/bash
set -e

while read p; do
  echo "$p" >> $GITHUB_ENV
done <${INPUT_FILENAME}
