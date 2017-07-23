#!/bin/bash

tests="${1:-all}"
i=0

run() {
  echo -e "\n\n======================="
  echo "testing $1"
  echo "======================="
  pushd $1 > /dev/null
  ./test || ((i++))
  popd > /dev/null
}

if [ "$tests" = "all" ]; then
  for x in */;do
    run $x
  done
else
  for test in $tests; do
    run $test
  done
fi

exit $i
