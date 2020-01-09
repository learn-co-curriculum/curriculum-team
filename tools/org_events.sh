#!/usr/bin/env bash

# Gets the last 300 events from learn-co-curriculum
# Usage: ./org_events.sh [path/to/issues_output_dir/date]
# Gets the last 300 events, excludes forks and captures the relevant information
# Without any args, events are output in the last day in issues_output/

if [ -z "$1" ]
then
  EVENTS_DIR="issues_output/$(ls issues_output | tail -n 1)"
else
  EVENTS_DIR="$1"
fi

for page in {1..10}
do
  curl "https://api.github.com/orgs/learn-co-curriculum/events?page=${page}" | tee "$EVENTS_DIR/events${page}.json"
done

jq -s '.[0] + .[1] + .[2] + .[3] + .[4] + .[5] + .[6] + .[7] + .[8] + .[9]' $EVENTS_DIR/events1.json $EVENTS_DIR/events2.json $EVENTS_DIR/events3.json $EVENTS_DIR/events4.json $EVENTS_DIR/events5.json $EVENTS_DIR/events6.json $EVENTS_DIR/events7.json $EVENTS_DIR/events8.json $EVENTS_DIR/events9.json $EVENTS_DIR/events10.json | jq 'map(select(.type!="ForkEvent")) | map({name: .actor.login, type: .type, repo: .repo.url}) | unique' | tee $EVENTS_DIR/events.json

for page in {1..10}
do
  rm "$EVENTS_DIR/events${page}.json"
done
