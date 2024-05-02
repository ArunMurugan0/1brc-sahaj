#!/bin/bash
#
#  Copyright 2023 The original authors
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

# Uncomment below to use sdk
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# sdk use java 21.0.1-graal 1>&2
#

source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk use java 22.0.1-graal 1>&2

if [ ! -f target/CalculateAverage_arun_murugan_image ]; then
    NATIVE_IMAGE_OPTS="-O3 -H:TuneInlinerExploration=1 -march=native"
    native-image $NATIVE_IMAGE_OPTS -cp target/average-1.0.0-SNAPSHOT.jar -o target/CalculateAverage_arun_murugan_image dev.morling.onebrc.CalculateAverage_arun_murugan
fi