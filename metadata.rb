name             'resolvconf'
maintainer       'Chris Aumann'
maintainer_email 'me@chr4.org'
license          'GNU Public License 3.0'
description      'Installs/Configures resolvconf'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.6'
supports         'ubuntu', '>= 10.04'
supports         'debian', '>= 6.0'
recipe           'resolvconf', 'Installs and configures resolvconf package'
recipe           'resolvconf::install', 'Installs resolvconf package'

attribute 'resolvconf/nameserver',
          description: 'Nameserver(s) to use',
          default: "[ '208.67.222.222', '208.67.220.220' ]"

attribute 'resolvconf/search',
          description: 'Domain(s) to add to search',
          default: "node['domain']"

attribute 'resolvconf/options',
          description: 'Options to set',
          default: '[]'

attribute 'resolvconf/sortlist',
          description: 'Sortlist to use',
          default: '[]'

attribute 'resolvconf/head',
          description: 'String(s) to be placed at the top of /etc/resolv.conf, typically a warning',
          default: <<-DEFAULT
            [
              '# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)',
              '#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN'
            ]
          DEFAULT

attribute 'resolvconf/base',
          description: 'String(s) to be placed in the of /etc/resolv.conf, in addition to nameserver, search and options',
          default: '[]'

attribute 'resolvconf/tail',
          description: 'String(s) to be placed at the bottom of /etc/resolv.conf',
          default: '[]'

attribute 'resolvconf/clear-dns-from-interfaces',
          description: 'Remove dns-* settings from /etc/network/interfaces, as they might interferre with the configured settings',
          default: 'true'
