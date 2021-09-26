#!/usr/bin/env bash

START_TIME=$(date '+%s')

curl -s -X POST "localhost:50021/audio_query?text=%E3%83%86%E3%82%B9%E3%83%88&speaker=1&is_kana=true" > query.json
curl -s -H "Content-Type: application/json" -X POST -d @query.json "localhost:50021/synthesis?speaker=1" > audio.wav

END_TIME=$(date '+%s')
RUN_TIME=$((END_TIME - START_TIME))

echo "end: $RUN_TIME sec."