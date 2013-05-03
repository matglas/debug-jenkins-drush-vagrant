#!/bin/bash

apt-get update
apt-get install -y apache2
apt-get install -y php5

apt-get install -y jenkins jenkins-cli

apt-get install -y  php-pear

apt-get install -y git


# Install drush
drush_lib="/usr/local/share/drush"
drush_drush="/usr/lib/bin/drush"

if [ ! -d $drush_lib ]
	then
  git clone http://git.drupal.org/project/drush.git $drush_lib
  cd $drush_lib
  git checkout 7.x-5.8
  ln -s $drush_lib/drush $drush_drush
fi


# Install kraftwagen
drush_kw_git="git://github.com/kraftwagen/kraftwagen.git"
drush_kw_dir="/usr/local/share/drush/kraftwagen"

if [ ! -d $drush_kw_dir ]
	then
  git clone $drush_kw_git $drush_kw_dir
fi
