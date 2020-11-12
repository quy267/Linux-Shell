#!/bin/bash
while read -r line; do
  echo "$line" | cut -f2-
done
