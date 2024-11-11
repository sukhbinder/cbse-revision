#!/bin/bash
source ./genetate_pdf_json.sh
git add -A
git commit -m "Added another chapter $(date)"
git push
