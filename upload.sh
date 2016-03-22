#!/bin/bash
AWS_PROFILE=$1 aws s3 sync . s3://tirefi.re/ --exclude '*' --include '*.html' --include '*.gif' --include '*.jpeg' --include '*.ico'
