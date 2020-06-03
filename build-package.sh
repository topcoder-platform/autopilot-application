#!/bin/bash
#Preparing paackage
APPNAME=$1
VER=`date "+%Y%m%d%H%M%S"`
SCRIPTDIR="./deployscripts"
APJAR_SRC='/root/online_review/build/ant/auto_pilot/dist/auto_pilot_app.jar'

create_cdpacakge()
{
  AWS_CD_PACKAGE_NAME="${APPNAME}-${VER}.zip"
  PACKAGEPATH="dist-cdpack"
  rm -rf $PACKAGEPATH
  mkdir -p $PACKAGEPATH
  cp -Rvf $SCRIPTDIR/* $PACKAGEPATH/
  cp $APJAR_SRC $PACKAGEPATH/
  zip -j $AWS_CD_PACKAGE_NAME $PACKAGEPATH/*
}

create_cdpacakge
echo "export APAPPVER=\"$VER\"">apppackagever
