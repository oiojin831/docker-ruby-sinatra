#!/bin/bash
gem install sinatra
gem install shotgun
gem install sinatra-reloader
shotgun -I /usr/src/app $MAIN_APP_FILE -p 80 -o '0.0.0.0'
