Chef Presentation
=================

This project used [vagrant][1] to provision a [VirtualBox][2] machine
to demonstrate [Chef][3]. In particular [chef-solo][4].

Demonstration
-------------

A 'scratch' directory is created beneath the '/home/vagrant'
directory. In the 'scratch' directory a view git repositories are
checkout which demonstrate various means of provisioning a machine.

Meta
----

Note that this example has a certain meta-levelness. One should not
use vagrant to checkout repositories that provision the machine via
chef-solo. One should write recipes at the vagrant level instead.

[1]: http://vagrantup.com/ "Homepage for Vagrant"
[2]: https://www.virtualbox.org/ "Oracle's VirtualBox Homepage"
[3]: http://www.opscode.com/chef/ "Homepage for Opscode Chef"
[4]: http://wiki.opscode.com/display/chef/Chef+Solo "Documentation about chef-solo"