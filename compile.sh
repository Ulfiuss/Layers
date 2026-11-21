#!/bin/bash
# Script to compile theme to my vault directory for testing
set -m
source ./.compile_variables


sass -w --no-source-map theme_next.scss ${theme_dirs[0]}/theme.css &
watch rsync -ruv ${theme_dirs[0]}/theme.css ${theme_dirs[1]}/theme.css &&
fg  