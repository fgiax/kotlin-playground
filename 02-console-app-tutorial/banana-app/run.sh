#!/bin/sh


APP_NAME=banana
BUILD_DIR=build
SOURCE_CODE=src/main/kotlin/*.kt
CLASSES=build/classes

if [ "$1" = "clear" ]; then
  rm $CLASSES/*.class;
  rm $BUILD_DIR/*.jar;
  echo "> Clear [ ok ]";
  exit
fi

if kotlinc $SOURCE_CODE -d $CLASSES; then
  echo "> Compiled source code [ ok ]";
fi

if jar cfm ${BUILD_DIR}/${APP_NAME}.jar \
  ${CLASSES}/META-INF/MANIFEST.MF -C $CLASSES .; then
  echo "> Created ${APP_NAME}.jar [ ok ]";
fi

if java -jar ${BUILD_DIR}/${APP_NAME}.jar; then
  echo "> RUN SUCCESS!";
fi
