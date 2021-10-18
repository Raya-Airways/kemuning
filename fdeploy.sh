#!/bin/bash
git add --all;
git commit -m "speed deploy used";
git push origin main;
bundle exec mina staging deploy;
bundle exec mina staging puma:stop;
bundle exec mina staging puma:start;
