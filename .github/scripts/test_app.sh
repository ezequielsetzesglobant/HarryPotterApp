#!/bin/bash

set -eo pipefail

xcodebuild -project HarryPotterApp.xcodeproj \
            -scheme HarryPotterApp \
            -destination platform=iOS\ Simulator,OS=14.4,name=iPhone\ 11 \
            clean test | xcpretty
