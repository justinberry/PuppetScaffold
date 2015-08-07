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
