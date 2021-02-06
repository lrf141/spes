#!/bin/sh

SHARED_LIB_NAME="ha_spes.so"
SE_NAME="SPES"
SOFILE_STATUS=`ls ../../library_output_directory/plugin/ | grep $SHARED_LIB_NAME`

mysql -uroot -proot -e "UNINSTALL PLUGIN spes;"
mysql -uroot -proot -e "SHOW ENGINES" | grep $SE_NAME
if [ $SOFILE_STATUS != "" ]; then
  rm ../../library_output_directory/plugin/$SHARED_LIB_NAME
fi
cp ../../plugin_output_directory/$SHARED_LIB_NAME ../../library_output_directory/plugin/$SHARED_LIB_NAME
mysql -uroot -proot -e "INSTALL PLUGIN SPES SONAME '$SHARED_LIB_NAME'"
mysql -uroot -proot -e "SHOW ENGINES" | grep $SE_NAME