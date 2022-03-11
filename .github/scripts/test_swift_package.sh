#!/bin/bash

set -eo pipefail

cd Domain; swift test --parallel; cd ..
cd Data; swift test --parallel; cd ..
cd Presentation; swift test --parallel; cd ..