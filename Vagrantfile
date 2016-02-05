# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'ffi'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

module OS
    def OS.windows?
        (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    end

    def OS.mac?
        (/darwin/ =~ RUBY_PLATFORM) != nil
    end

    def OS.unix?
        !OS.windows?
    end

    def OS.linux?
        OS.unix? and not OS.mac?
    end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "172.21.12.10"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  mount_options = ["noatime,intr,rdirplus"]
  opts = if FFI::Platform::IS_WINDOWS
    { :mount_options => mount_options }
  else
    { :nfs => mount_options }
  end
  config.vm.synced_folder "./", "/var/www/ezpublish",
    opts

  config.vm.boot_timeout = 9000

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:

  config.vm.provider "virtualbox" do |vb|
    # Boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  if OS.windows?
      config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
      config.vm.provision :shell, path: "provisioning/windows.sh",
                          :keep_color => true

  else
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/vagrant.yml"
      # output as much as you can, or comment this out for silence
      ansible.verbose = "vvvv"
      ansible.sudo = true
    end
  end

end
