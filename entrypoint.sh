#!/bin/bash
set -e
cd /usr/app/
forever ./app.js
tail -f /dev/null