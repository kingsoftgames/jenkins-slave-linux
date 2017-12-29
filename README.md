# jenkins-slave-linux

Initialize build environment of jenkins slaves (Linux), via a Jenkins pipeline job.

## Prerequisites

**Important**

*Perform the following steps on jenkins slave.*

### Install Java 8

Note: this only needs to be done **once**.

    ./java8-oracle.sh

Otherwise jenkins master won't be able to connect to slave via SSH.

### Remove password requirement from group *sudo*

Note: this only needs to be done **once**.

    echo "%sudo ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/50-group-sudo-nopasswd

Otherwise you will see the following error when running pipeline:

    sudo: no tty present and no askpass program specified

### Temporarily grant *sudo* privilege

Some scripts need *sudo* to install system-level packages.

Before running the pipeline, temporarily add jenkins slave user to group *sudo*.

```
sudo gpasswd -a [username] sudo
```

After running the pipeline, be a good linux citizen and remove jenkins slave user from group *sudo*, so jenkins slave is running with least privilege. 

```
sudo gpasswd -d [username] sudo
```

## Additional Notes

After running the pipeline, you may need to **Disconnect / Relaunch** jenkins slave agent to pickup new environment variables set in `$HOME/.bashrc`.
