#!/bin/bash
cat src/main/resources/p-process.bpmn | grep -oP "(?<=userTask ).*.html" | sort | uniq > forms-com-id.txt
