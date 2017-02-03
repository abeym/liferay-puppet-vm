#################################
##       Configurations        ##
#################################

class { 'vmbuilder' : 
  ############### DB config 

  db_user              => "liferay",
  db_password          => "D3P4ssw0rd",
  db_name              => "lportal",

  ############### To ensure the clock is synchronized 

  timzone              => "US/New York",

  ############### Liferay configuration 

  liferay_user         => "liferay",
  liferay_group        => "www",
  install_path         => "/opt",

  ############### Liferay Databse to use 
  # Possibel  values are: mysql, postgresql
  # Default to mysql

  #liferay_db           => "postgresql",

  ############### Install Liferay from local archive 

  #liferay_zip_filename => "liferay-dxp-digital-enterprise-tomcat-7.0-ga1-20160617092557801.zip",
  
  #Liferay folder name inside zip archive
  #liferay_folder       => "liferay-dxp-digital-enterprise-7.0-ga1",
  
  #Tomcat folder (only if needed)
  #tomcat_folder        => "tomcat-8.0.32",

  ################ Development mode
  # Default to false

  liferay_dev          => true,

  ############### Tomcat info 

  xmx                  => "1024",
  permsize             => "256",

  ############### Enable firewall. false by default

  #use_firewall         => true,

  ############### Java distribution to be used
  # Default oracle
  
  #java_distribution    => "openjdk",

  ############### Mail Server
  # https://github.com/sj26/mailcatcher/issues/277
  # Should give an error but it will work
  # Don't forget to check if mailcatcher service is up and running.
  # If not, please start the service manually (sudo service mailcatcher start)
  
  #mail_server          => "mailcatcher",

  ############### Http server
  # By default will not install a http server
  # possible values = apache2 | nginx

  httpserver           => "apache2",
  #httpserver           => "nginx",

  ############### Install External Tools
  # By default it will not install any external tool
  # External tools to install: ImageMagicK, OpenOffice/LibreOffice and Xuggler

  #external_tools       => true,

}






