#!/bin/bash

file=COMA-UI/src/public/js/workers/clientWorker.js
sed -i -e 's/^const coma_api/#const coma_api/' -e "/^#const coma_api/i const coma_api = 'http://localhost:8000/api/v1/';" $file

