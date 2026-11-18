#!/bin/bash
# Script to compile theme to my vault directories for testing
set -e
source ./.theme_dirs

sass -w --no-source-map theme_next.scss "${theme_dirs[0]}"/theme.css

