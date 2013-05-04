package { 'apache2':
	ensure => present,
}

package { 'php5': 
	ensure => present,
}

package	{ 'libapache2-mod-php5':
	ensure => present,
}

package { 'php5-gd':
	ensure => present,
}

package { 'php5-sqlite':
	ensure => present,
}

package { 'jenkins':
	ensure => present,
}

package { 'jenkins-cli':
	ensure => present,
}

package { 'php-pear':
	ensure => present,
}

package { 'git':
	ensure => present,
}