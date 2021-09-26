#!/usr/bin/env bash

echo "start: $(date '+%T')"
curl -s -X POST "localhost:50021/audio_query?text=%E3%83%86%E3%82%B9%E3%83%88&speaker=1&is_kana=true" > query.json
echo "get: $(date '+%T')"
curl -s -X POST -H "Content-Type: application/json" -d @query.json "localhost:50021/synthesis?speaker=1" > audio.wav
echo "end: $(date '+%T')"
