#!/bin/bash

ARCH="${1:-x86_64}"
DISTRO="${2}"
TAG="${3:-v1.12.5}"

echo "🦑 Arch(${ARCH})"
echo "🫀 Distro(${DISTRO})"
echo "🏷️ Tag(${TAG})"

if [[ -z ${TAG} || ${TAG} == "master" ]] ; then
    TAG="v1.12.5"
    echo "Using default tag(${TAG})"
fi

echo "🐏 Cloning ..."
git clone --quiet --single-branch --branch="${TAG}" --depth=1 --recursive "https://github.com/RedisTimeSeries/RedisTimeSeries.git"
pushd "RedisTimeSeries"
git checkout --quiet --detach "${TAG}"
git describe --tags

./deps/readies/bin/getpy3

python3 --version

echo "🔨 Building ..."
make
popd

echo "🧊 Packing ..."
find . -type f -name "redistimeseries.so" -exec cp {} "redistimeseries.so" \;


echo "✨ Done"