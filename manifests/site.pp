include homebrew

package {'nodejs':
  ensure   => installed,
  provider => brew,
}

package {'npm':
  ensure   => installed,
  provider => brew,
}

package { 'cordova':
  ensure   => 'present',
  provider => 'npm',
}


package { 'ionic':
  ensure   => 'present',
  provider => 'npm',
}

package { 'gulp':
  ensure   => 'present',
  provider => 'npm',
}

package { 'ios-sim':
  ensure   => 'present',
  provider => 'npm',
}

