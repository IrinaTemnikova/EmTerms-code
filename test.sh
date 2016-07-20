#!/bin/bash

. common.sh

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 input_model input_data output_data"
    exit 1
fi

INPUT_MODEL="$1"
INPUT_DATA="$2"
OUTPUT_DATA="$3"

rm -f "$OUTPUT_DATA"
$JAVA cmu.arktweetnlp.RunTagger --model "$INPUT_MODEL" "$INPUT_DATA" > "$OUTPUT_DATA"

test -e "$OUTPUT_DATA" && echo "Success: generated '$OUTPUT_DATA'"
