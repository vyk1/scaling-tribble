#!/bin/bash

output_file="teste.bpmn"
cat /dev/null > $output_file

input_file="src/main/resources/p-process.bpmn"

awk '
    BEGIN {
        inside_user_task = 0
    }
    /<bpmn:userTask/ {
        inside_user_task = 1
    }
    {
        print $0
        if (inside_user_task) {
            print "      <bpmn:documentation>Comment inserted from this bash</bpmn:documentation>"
            inside_user_task = 0
        }
    }
' "$input_file" > "$output_file"
