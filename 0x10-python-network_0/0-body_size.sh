#!/bin/bash
# A script that takes in a URL, sends a request to that URL, and displays the size of the body of the response in bytes
curl -s -o /dev/null -w "%{size_download}\n" "$1"
