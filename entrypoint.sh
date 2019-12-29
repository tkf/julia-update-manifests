#!/bin/bash
julia_version="$1"
julia_projects="$2"

set -ex

/install-julia.sh "$julia_version"

for project in $julia_projects
do
    julia --project="$project" -e "import Pkg; Pkg.update()"
done
