#!/bin/bash

message="$(date): random string added to trigger pipeline"
echo "$message" >> triggerfile

git commit -am "Triggered pipeline for testing"
git push --set-upstream origin main
