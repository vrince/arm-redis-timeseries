#!/bin/bash

ARCH="${1:-x86_64}"
DISTRO="${2}"
TAG="${3:-v1.12.5}"

echo "🦑 Arch(${ARCH})"
echo "🫀 Disto(${DISTRO})"
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

echo "🔨 Building ..."
make setup
make build
popd

echo "🧊 Packing ..."
find . -type f -name "redis*.so" -exec gzip -v {} -c > "redis_timeseries-linux-${ARCH}-${DISTRO}-${TAG}.gz" \;


echo "✨ Done"