#!/bin/bash
bundle exec mina staging deploy;bundle exec mina staging puma:stop;bundle exec mina staging puma:start;
