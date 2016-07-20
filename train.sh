#!/bin/bash

. common.sh
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_training_data output_model"
    exit 1
fi

INPUT_TRAINING_DATA="$1"
OUTPUT_MODEL="$2"

rm -f "$OUTPUT_MODEL"

$JAVA cmu.arktweetnlp.Train "$INPUT_TRAINING_DATA" "$OUTPUT_MODEL"

test -e "$OUTPUT_MODEL" && echo "Success: generated file '$OUTPUT_MODEL'"
