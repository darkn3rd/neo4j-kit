TIME = Time.now.strftime("%Y%m%d%H%M%S")
APP_ENV = ENV['APP_ENV'] || 'default'
CONFIGFILE_HOSTS = "./config/#{APP_ENV}.hosts"

hosts = {}  # empty data-structure
File.readlines(CONFIGFILE_HOSTS).map(&:chomp).each do |line|
  ipaddr, hostname = line.split(/\s+/)             # only grab first two columns
  hosts[hostname] = ipaddr                         # store in hash
  PRIMARY_SYSTEM = hostname if (line =~ /primary/) # match primary
end

Vagrant.configure("2") do |config|
  hosts.each do |hostname, ipaddr|
    default = if hostname == PRIMARY_SYSTEM then true else false end
    # need to support disabled disabled: true | false
    config.vm.define hostname, primary: default do |node|
      node.vm.box = "ubuntu/trusty64"
      node.vm.hostname = "#{hostname}"
      node.vm.network "private_network", ip: ipaddr

      case hostname
      when /neo4j.dev/
        node.vm.provider "virtualbox" do |vbox|
          vbox.name = "#{hostname}_#{TIME}"
          vbox.memory = 1024
          vbox.cpus = 2
        end
      else
        node.vm.provider("virtualbox") { |vbox| vbox.name = "#{hostname}_#{TIME}" }
      end

    end
  end
end
