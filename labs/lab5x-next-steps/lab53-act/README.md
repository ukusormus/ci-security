# Lab53 - ACT

Learn how to use [nektos/act](https://github.com/nektos/act) and run pipelines locally.

## TODO

More text and the table

<details>
  <summary>Spoiler warning - more info about solution</summary>

You will likely face additional difficulties at `4x` labs when you try to run docker inside docker. Nevertheless what could work is something like following. This requires you to have docker already setup in wsl (or whatever is your weapon of choice).

```bash
# Install to WSL to directory where you are
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
# List jobs
./bin/act -l
# Pull the docker images that act uses (e.g. following)
docker pull catthehacker/ubuntu:full-latest
# Configure to have pipeline artifacts somewhere you can access them
nano /home/whoyouare/.config/act/actrc
# Add line (e.g.)
--artifact-server-path /home/whoyouare/act-artifacts
# Run for example job named cyclonedx
./bin/act -j cyclonedx
```

</details>
