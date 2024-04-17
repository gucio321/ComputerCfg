#!/bin/bash

rivalcfg --z1 black
rivalcfg --z2 black
rivalcfg --z3 black
rivalcfg --logo black

if [[ "$1" == "r" ]]; then
#          -e LIGHT_EFFECT, --light-effect LIGHT_EFFECT
#                        Set the light effect (values: rainbow-
#                        shift, breath-fast, breath, breath-
#                        slow, steady, rainbow-breath, disco,
#                        default: steady)
        rivalcfg -e rainbow-shift
fi
