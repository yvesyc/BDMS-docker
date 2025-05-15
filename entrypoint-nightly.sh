#!/bin/sh

working_dir=/opt/server

working_dir_bak=/opt/server_backup
 
mkdir -p $working_dir

if [ -z "$(ls -A $working_dir)" ]; then
    echo "first run container , cp files from backup."
    cp -r $working_dir_bak/* $working_dir
fi

rm -rf $working_dir_bak

<<<<<<< HEAD
cd $working_dir && java -jar ./BeiDou.jar --spring.config.location=./application.yml $@
=======
cd $working_dir && java -jar ./bdms.jar --spring.config.location=./application.yml $@
>>>>>>> 4e65c5970a105ae545d6d37dd087487b1c8fb20f
