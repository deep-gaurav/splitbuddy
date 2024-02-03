#!/bin/bash

git clone -b stable https://github.com/flutter/flutter.git
./flutter/bin/flutter build web --release --web-renderer html --no-web-resources-cdn --pwa-strategy none --dart-define "VAPID_KEY=$VAPID_KEY" --dart-define "ENDPOINT=$ENDPOINT"


# Generate robots.txt based on the current branch
if [ "$(git rev-parse --abbrev-ref HEAD)" = "main" ]; then
    # Allow everything in robots.txt for the 'main' branch
    echo "User-agent: *" > build/web/robots.txt
    echo "Disallow:" >> build/web/robots.txt
else
    # Disallow everything in robots.txt for other branches
    echo "User-agent: *" > build/web/robots.txt
    echo "Disallow: /" >> build/web/robots.txt
fi