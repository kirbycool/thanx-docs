#!/usr/bin/env bash
set -o errexit # abort if any command fails
bundle exec middleman build --clean --build-dir docs
