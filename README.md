![pgporada.packer](https://img.shields.io/badge/role-pgporada.packer-yellow.svg)
[![License](https://img.shields.io/badge/license-GPLv3-brightgreen.svg)](LICENSE)
[![](https://img.shields.io/badge/Supports%20Packer%20Version-1.3.2-blue.svg)](https://github.com/hashicorp/packer/blob/v1.3.2/CHANGELOG.md)

# Overview: pgporada.packer

One less thing for me to have to go out to the internet to grab when setting up my dev machine(s).

- - - -
# Role Variables

Installs the specified version of [Hashicorp_Packer](https://packer.io).

    packer_version: 1.3.2

- - - -
# Example Playbook

To run the local playbook, issue the following command.

    ansible-playbook local_playbook.yml -b -K

To use this role in another playbook

    cat << EOF > some_playbook.yml
    ---
    - hosts: localhost
      connection: local
      roles:
        - pgporada.packer
    ...
    EOF
    ansible-playbook some_playbook.yml -b -K

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need a ruby environment with gem and bundler for these tests.

    # This takes care of twiddling all the bits that need to be updated when bumping the packer version
    ./update_automagic.sh x.x.x

    # This will run your packer update through the test system
	bundle update
	bundle install
	bundle exec kitchen create
   	bundle exec kitchen converge
   	bundle exec kitchen verify
	bundle exec kitchen destroy

- - - -
# License and Author Information
GPLv3

2017 - [Phil Porada](https://philporada.com)

- - - -
# Theme Song
[Desmond Dekker - The Israelites (1968)](https://www.youtube.com/watch?v=83Y2hv-3UCM)
