#!/bin/sh

find . -type f -exec mv '{}' '{}'.$1 \;
