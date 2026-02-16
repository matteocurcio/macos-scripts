#!/bin/bash

find . -name "*.zip" -exec sh -c 'unzip -o "$0" -d "${0%.*}" && rm "$0"' {} \;