# installing flask from pip3 using puppet

package {'flask':
  ensure   => '2.1.0', # to install this specific version instead of the latest one
  provider => 'pip', # can't directly use pip3
}

