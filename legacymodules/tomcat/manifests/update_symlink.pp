## This class is to update the symlink after upgrading the tomcat

class tomcat::update_symlink(
  String $tomcat_home = '/usr/share/apache-tomcat',
  String $tomcat_dest = '/usr/share/apache-tomcat-8.5.15',
  String $owner       = hiera(),
  String $group       = hiera(),
){

  file { "${tomcat_home}":
    ensure => 'link',
    target => $tomcat_dest,
    user   => $owner,
    group  => $group,
    mode   => '0644',
  }
}
