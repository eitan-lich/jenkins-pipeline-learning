#!/bin/bash


message="$(date): random string added to trigger pipeline"
echo "$message" >> triggerfile

git add .
git commit -am "Triggered pipeline for testing"
git push

