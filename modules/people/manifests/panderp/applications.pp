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
  include skype
  include transmission
#  include kindle
  include cord
  include xquartz
  include vlc
  include handbrake
  include caffeine

}

