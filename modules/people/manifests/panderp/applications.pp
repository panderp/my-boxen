class people::panderp::applications (
  $my_homedir   = $people::panderp::params::my_homedir,
  $my_sourcedir = $people::panderp::params::my_sourcedir,
  $my_username  = $people::panderp::params::my_username
) {

  include minecraft
  include chrome
  include firefox
  include iterm2::dev
  include adium
#  include skype
  include transmission
#  include kindle
  include cord
  include xquartz
  include vlc
  include handbrake
  include caffeine

package { 'GoodSync':
	source		=> 'http://www.goodsync.com/download/goodsync-mac.dmg',
	provider	=> appdmg,
	}

package { 'League of Legends':
	source		=> 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg',
	provider	=> 'appdmg',
	}


}

