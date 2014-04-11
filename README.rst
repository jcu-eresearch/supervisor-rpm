Supervisor RPM compliation
==========================

`Supervisor <http://supervisord.org>`_ is an awesome process control system.
This repository contains the scripts and RPM spec required to build RPMs.

This is powered by `Vagrant <http://vagrantup.com>`_ to quickly spin up a
CentOS VM and compile the RPMs, destroy it afterwards.  If you're not so
inclined to use Vagrant, then you can use the ``build-supervisor.sh`` script
directly on your own RHEL or CentOS VM.

This has been tested with CentOS 6.5.

Go!
---

#. Ensure Vagrant is installed. This was tested with Vagrant 1.4.2 and
   VirtualBox 4.3.10.

#. Run this::

       git clone https://github.com/jcu-eresearch/supervisor-rpm.git
       cd supervisor-rpm
       vagrant up; vagrant destroy -f
       ls -lah ./RPMS/noarch

#. Look at the result of the final command and marvel at the RPMs.

Note
----

If you’re just looking to download something that works and don’t want to
rebuild things yourself, we have the packages available in a Yum
repo at https://www.hpc.jcu.edu.au/rpm/. You’ll need to trust our RPM
building skills, though.
