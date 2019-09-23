#!/usr/bin/env bash

VERSION=$(curl -v https://bintray.com/sonarsource/SonarQube/org.sonarsource.auth.bitbucket/_latestVersion 2>&1 |grep Location: | sed -e "s_.*/__" | sed -e "s/[^0-9\\.]//g")
curl -Lo sonar-auth-bitbucket-plugin-${VERSION}.jar "https://bintray.com/sonarsource/SonarQube/download_file?file_path=org%2Fsonarsource%2Fauth%2Fbitbucket%2Fsonar-auth-bitbucket-plugin%2F${VERSION}%2Fsonar-auth-bitbucket-plugin-${VERSION}.jar"