sh <<SCRIPT
  curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add -

  # add treasure data repository to apt
  echo "deb http://packages.treasuredata.com/2/debian/jessie/ jessie contrib" > /etc/apt/sources.list.d/treasure-data.list

  # update your sources
  apt-get update

  # install the toolbelt
  apt-get install -y --force-yes td-agent
SCRIPT
