export BMLT_TEST_ROOT_SERVER=http://localhost:8888/_/bmltfed/main_server
#export BMLT_TEST_ROOT_SERVER=https://na-bmlt.org/eccbc87e4b5ce2fe28308fd9f2a7baf3/bmltfed/main_server
echo "Test #1"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/json/?switcher=GetServerInfo"
echo "Test #2"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/serverInfo.xml"
echo "Test #3"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/xml/index.php?switcher=GetFormats"
echo "Test #4"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/xml/GetLangs.php"
echo "Test #5"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/xml/GetServiceBodies.php"
echo "Test #6"
curl "${BMLT_TEST_ROOT_SERVER}/client_interface/xsd/GetSearchResults.php"
echo "Test #7"
curl -g "${BMLT_TEST_ROOT_SERVER}/client_interface/json/?switcher=GetSearchResults&weekdays[]=1&weekdays[]=2&lat_val=35.542279819197&long_val=-78.64231134299&geo_width=-20"
