#!/usr/bin/env bash
# amputate.bash - convert DOS line endings (\r\n) to unix line endings (\n)

# USAGE: bash amputate.bash [file-to-fix]
# e.g. bash amputate.bash TESTbands.txt

# fixed file will have a '-fixed' suffix

cat $1 | tr -d '\r' > ${1}-fixed
exit
