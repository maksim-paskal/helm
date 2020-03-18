#!/bin/sh

set -ex
for repoDir in $(find . -name Chart.yaml)
do
  repo=`dirname $repoDir`
  echo check $repo...
  helm lint --strict $repo
  helm template $repo | kubectl apply --dry-run -f -
done
