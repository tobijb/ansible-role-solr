Feature: Basic Sanity Check

    Scenario: Simple probing of the system

        Given there is a running VM called "vagrant-ansible-role-solr-build"
        When I run the shell command `id`
        Then the stdout of that shell command should match /vagrant/
        And the stdout of that shell command should not match /root/
        And the stderr of that shell command should match /^$/

        Given there is a running VM called "vagrant-ansible-role-solr-build"
        When I run the shell command `id` as root
        Then the stdout of that shell command should match /root/
        And the stdout of that shell command should not match /vagrant/

        Given there is a running VM called "vagrant-ansible-role-solr-build"
        When I run the shell command `java -version`
        Then the stderr of that shell command should match /java version/
