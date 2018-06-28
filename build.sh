#!/bin/bash


function usage() {
  echo "Usage: build.sh [OPTIONS] <dockrfile directory name>"
  echo 
  echo "Options:"
  echo "  --prefix  --prefixで指定した名前を生成するイメージの頭につける。"
}


BUILD_PREFIX=""

if [ -z $DOCKER_BIN ]; then
  DOCKER_BIN="docker"
fi


while [ ! -z $1 ]
do
  case "$1" in
    '-h'|'--help' )
      usage
      exit 0
      ;;
    '--prefix' )
      BUILD_PREFIX=$2
      echo "ok!"
      shift 2
      ;;
    '--p2' )
      echo "ok2"
      shift 2
      ;;
    *)
      BUILD_NAME=$1
      shift 1
      ;;
  esac
done

if [ -z $BUILD_NAME ]; then
  echo "何か指定する必要があります。"
  exit 1
fi

# 指定したディレクトリが存在するか確認
find "./${BUILD_NAME}" &> /dev/null
if [ "$?" != 0 ]; then
  echo "${BUILD_NAME} not found."
  exit 1
fi

TARGET_BUILD_NAME=$BUILD_NAME
if [ ! -z $BUILD_PREFIX ]; then
  TARGET_BUILD_NAME="${BUILD_PREFIX}-${BUILD_NAME}"
fi

# execute build
cd $BUILD_NAME && $DOCKER_BIN build -t $TARGET_BUILD_NAME ./
