#!/bin/bash

ARCH="${1:-x86_64}"
DISTRO="${2:-none}"
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

python3 --version
python3 -m venv _env
source  _env/bin/activate

echo "🔨 Building ..."
make
popd

echo "🧊 Packing ..."
find . -type f -name "redistimeseries.so" -exec cp {} "redistimeseries-${ARCH}-${DISTRO}-${TAG}.so" \;


echo "✨ Done"