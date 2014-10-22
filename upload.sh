#!/bin/sh
rsync -av --delete _site/ root@protocol.confabulous.com:/usr/share/nginx/protocol.confabulous.com/
