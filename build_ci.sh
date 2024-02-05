#!/bin/bash

git clone -b stable https://github.com/flutter/flutter.git
./flutter/bin/flutter build web --release --base-href="/app/" --web-renderer html --no-web-resources-cdn --pwa-strategy none --dart-define "VAPID_KEY=$VAPID_KEY" --dart-define "ENDPOINT=$ENDPOINT"


# Generate robots.txt based on the IS_PROD environment variable
if [ "$IS_PROD" = "true" ]; then
    # Allow everything in robots.txt for production build
    echo "User-agent: *" > build/web/robots.txt
    echo "Disallow:" >> build/web/robots.txt
else
    # Disallow everything in robots.txt for other builds
    echo "User-agent: *" > build/web/robots.txt
    echo "Disallow: /" >> build/web/robots.txt
fi

cd landing_page/billdivide
npm install
npm run build

cp -r ../../build/web ./dist/app