#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -ex
HADOOP_VERSION="2.7.3.2.5.0.0-1245"
HBASE_VERSION="1.1.2.2.5.0.0-1245"
PIG_VERSION="0.12.0.2.5.0.0-1245"
FLUME_VERSION="1.5.2.2.5.0.0-1245"
SPARK_VERSION="1.6.1.2.5.0.0-1245"

mvn -Dhadoop.version=$HADOOP_VERSION  \
    -Dhadoop-two.version=$HADOOP_VERSION  \
    -Dhbase.version=$HBASE_VERSION  \
    -Dpig.version=$PIG_VERSION  \
    -Dflume.version=$FLUME_VERSION  \
    -Dspark.version=${SPARK_VERSION} \
    -DskipTests install "$@"
rm -rf build
mkdir build

# Make binary tar
rm -rf $(find . -type d -name archive-tmp);

#phoenix_jars=$(find -iname phoenix-*.jar)
#cp $phoenix_jars build/;
#
#cp -R bin build/;
#
#cp -R phoenix-pherf/config build/bin/
#

