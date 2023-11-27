#!/bin/bash
cat src/main/resources/p-solicitar-materiais.bpmn | grep -oP "(?<=userTask ).*.html" | sort | uniq > forms-com-id.txt
