#!/bin/bash
aws s3 sync . s3://tirefi.re/ --exclude '*' --include '*.html' --include '*.gif' --include '*.jpeg'
