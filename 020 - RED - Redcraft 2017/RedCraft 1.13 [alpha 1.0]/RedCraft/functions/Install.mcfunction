# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Installs "RedCraft 2017". To be used before using any other RedCraft 
# function for the first time.
#
# Usage:
# /function redcraft:install

gamerule commandBlockOutput false
gamerule gameLoopFunction redcraft:index

scoreboard objectives add REDslp dummy
scoreboard objectives add REDkbd trigger

scoreboard objectives add gm trigger
