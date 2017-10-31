#!/bin/sh

cd $(dirname $0)
./update_sous.rb $(./sous_releases.rb | versiontool sort | tail -n 1)
