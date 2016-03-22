#!/bin/bash
aws s3 sync . s3://tirefi.re/ --exclude 'LICENSE' --exclude 'README.md' --exclude '*.sh' --exclude '.git'
