#!/bin/sh

TMP_DIR="$(mktemp -d /tmp/jdtls.XXXXX)"
cp -R /usr/share/java/jdtls/config_linux "${TMP_DIR}"

trap "{ rm -rf ${TMP_DIR}; }" EXIT

JAR="/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
GRADLE_HOME=$HOME/gradle /usr/bin/java \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=false \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "${TMP_DIR}/config_linux" \
  -data "$HOME/workspace" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED
