#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" == "master" ]; then
    echo -e "*** Generating docs ***\n"
    echo -e "*** Installing Jazzy ***\n"
    gem install jazzy
    echo -e "*** Creating documentation folder ***\n"
    rm -rf out || exit 0;
    mkdir out;
    cd out
    echo -e "*** Setting up git ***\n"
    git init
    git config user.email "travis@travis-ci.org"
    git config user.name "travis-ci"
    echo -e "*** Generating documentation ***\n"
    jazzy --swift-version 2.1.1 --source-directory . --output . --podspec Prompter.podspec
    echo -e "*** Adding docs to git ***\n"
    git add .
    git commit -m "Updated docs from travis build $TRAVIS_BUILD_NUMBER"
    git push --force --quiet "https://${GH_TOKEN}@github.com/mpclarkson/Prompter" master:gh-pages > /dev/null 2>&1
    echo -e "*** Published latest docs ***\n"
fi
