class people::panderp::settings::dock (
  $my_homedir	= $people::panderp::params::my_homedir,
  $my_sourcedir	= $people::panderp::params::my_sourcedir,
  $my_username	= $people::panderp::params::my_username
  ) {

  propery_list_key { 'Lower Right Hotcorner - Screen Saver':
    ensure	=> present,
    path	=> "${#my_homedir}/Library/Preferences/com.apple.dock.plist",
    key 	=> 'wvous-br-corner',
    value	=> 10,
    value_type	=> 'integer',
    notify	=> Exec['Restart the Dock'],
    }

  exec { 'Restart the Dock':
    command	=> '/usr/bin/killall -HUP Dock',
    refreshonly	=> true,
    }

  file { 'Dock Plist':
    ensure	=> file,
    require	=> [
			Property_list_key['Lower Right Hotcorner - Screen Saver'],
		   ],
    path    => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
    mode    => '0600',
    notify     => Exec['Restart the Dock'],
  }

  include dockutil

  dockutil::Item { 'Add Chrome':
    item	=> "/Applications/Google Chrome.app",
    label	=> "Google Chrome",
    position	=> 1,
    action	=> "add",
    require	=> Class['chrome'],
  }

  dockutil::Item { 'Add Adium':
    item        => "/Applications/Adium.app",
    label       => "Adium",
    position    => 2,
    action      => "add",
    require     => Class['adium'],
  } 

  dockutil::Item { 'Add iTerm':
    item        => "/Applications/iTerm.app",
    label       => "iTerm",
    position    => 3,
    action      => "add",
    require     => Class['iterm::dev'],
  } 

  dockutil::Item { 'Add Cord':
    item        => "/Applications/Cord.app",
    label       => "Cord",
    position    => 4,
    action      => "add",
    require     => Class['cord'],
  } 

  dockutil::Item { 'Add Firefox':
    item        => "/Applications/Firefox.app",
    label       => "Firefox",
    position    => 5,
    action      => "add",
    require     => Class['firefox'],
  } 

  dockutil::Item { 'Add Skype':
    item        => "/Applications/Skype.app",
    label       => "Skype",
    position    => 6,
    action      => "add",
    require     => Class['skype'],
  } 

  dockutil::Item { 'Add VLC':
    item        => "/Applications/VLC.app",
    label       => "VLC",
    position    => 7,
    action      => "add",
    require     => Class['vlc'],
  } 

  dockutil::Item { 'Add Minecraft':
    item        => "/Applications/Minecraft.app",
    label       => "Minecraft",
    position    => 8, 
    action      => "add",
    require     => Class['minecraft'],
  } 

  dockutil::Item { 'Add Transmission':
    item        => "/Applications/Transmission.app",
    label       => "Transmission",
    position    => 9,
    action      => "add",
    require     => Class['transmission'],
  } 
} 
