#!/bin/bash

# This re-copies sources from ../ocs3

echo 🔶  Setting up 'ocs2_api'
rm -r modules/ocs2_api/*
cp -r ../ocs3/modules/ocs2_api/src modules/ocs2_api/

echo 🔶  Setting up 'ocs2'
rm -r modules/ocs2/*
cp -r ../ocs3/modules/ocs2/src modules/ocs2/

echo 🔶  Setting up 'ephemeris'
rm -r modules/ephemeris/*
cp -r ../ocs3/modules/ephemeris/src modules/ephemeris/

echo 🔶  Setting up 'db'
rm -r modules/db/*
cp -r ../ocs3/modules/db/src modules/db/

echo 🔶  Setting up 'gen'
rm -r modules/gen/*
mkdir -p modules/gen/src/main
cp -r ../ocs3/modules/sql/src/main/scala modules/gen/src/main/

echo 🔶  Setting up 'schema'
rm -r modules/schema/*
mkdir -p modules/schema/src/main
cp -r ../ocs3/modules/sql/src/main/resources modules/schema/src/main/
# these files need newlines at the end
echo "" >> ./modules/schema/src/main/resources/db/migration/V060__Light_Sinks.sql
echo "" >> ./modules/schema/src/main/resources/db/migration/V058__Dhs_KeywordNames.sql

echo 🔶  Setting up 'model'
rm -r modules/model/*
mkdir -p modules/model/js/src
mkdir -p modules/model/jvm/src
mkdir -p modules/model/shared/src
cp -r ../ocs3/modules/core/js/src/main modules/model/js/src/
cp -r ../ocs3/modules/core/jvm/src/main modules/model/jvm/src/
cp -r ../ocs3/modules/core/shared/src/main modules/model/shared/src/

echo 🔶  Setting up 'testkit'
rm -r modules/testkit/*
mkdir -p modules/testkit/shared/src/main/scala/gem
cp -r ../ocs3/modules/core/shared/src/test/scala/gem/arb modules/testkit/shared/src/main/scala/gem/
cp -r ../ocs3/modules/core/shared/src/test/scala/gem/test modules/testkit/shared/src/main/scala/gem/

echo 🔶  Setting up 'model-tests'
rm -r modules/model-tests/*
mkdir -p modules/model-tests/shared/src
cp -r ../ocs3/modules/core/shared/src/test modules/model-tests/shared/src/
rm -r modules/model-tests/shared/src/test/scala/gem/arb
rm -r modules/model-tests/shared/src/test/scala/gem/test


