#!/bin/bash

bundle install
NODE_ENV=development yarn install

rm -f tmp/pids/server.pid
bundle exec rails s -p 3000 -b '0.0.0.0'
