#!/bin/bash
julia_version="$1"
julia_projects="$2"

set -ex

mkdir -pv /tmp/install-julia
cd /tmp/install-julia
/install-julia.sh "$julia_version"
cd -
julia -e 'using InteractiveUtils; versioninfo()'

export JULIA_PKG_PRECOMPILE_AUTO=0
for project in $julia_projects
do
    julia --project="$project" -e "import Pkg; Pkg.update()"
done
