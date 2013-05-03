#!/bin/bash

apt-get update


# == Apache install ==
apt-get install -y apache2
apt-get install -y php5 libapache2-mod-php5
apt-get install -y php5-gd
apt-get install -y php5-sqlite

a2enmod rewrite
service apache2 restart


# == Jenkins install ==
#apt-get install -y jenkins jenkins-cli


# == Pear installation ==
#apt-get install -y php-pear
#pear upgrade PEAR

# From http://jenkins-php.org/
#pear config-set auto_discover 1
#pear install pear.phpqatools.org/phpqatools

#pear channel-discover pear.phing.info
#pear install phing/phing

#pear update


# == Git install ==
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
