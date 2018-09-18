#/bin/sh

rm -rf ./install
mkdir -p ./install/live555/BasicUsageEnvironment/include
mkdir -p ./install/live555/groupsock/include
mkdir -p ./install/live555/liveMedia/include
mkdir -p ./install/live555/UsageEnvironment/include
mkdir -p ./install/live555/GssLiveConn/include
mkdir -p ./install/lib

cp -rf BasicUsageEnvironment/include/* install/live555/BasicUsageEnvironment/include/
cp -rf groupsock/include/* install/live555/groupsock/include/
cp -rf liveMedia/include/* install/live555/liveMedia/include/
cp -rf UsageEnvironment/include/* install/live555/UsageEnvironment/include/
cp -rf GssLiveConn/include/* install/live555/GssLiveConn/include/

cp BasicUsageEnvironment/libBasicUsageEnvironment.a install/lib/
cp groupsock/libgroupsock.a install/lib/
cp liveMedia/libliveMedia.a install/lib/
cp UsageEnvironment/libUsageEnvironment.a install/lib/
cp GssLiveConn/libgssliveconn.a install/lib/
