Macros and python module for the ERCF V1.1

Refer to the ERCF manual for their installation and usage

Forked from the [ERCF Project](https://github.com/EtteGit/EnragedRabbitProject). Same licence applies.

# Using this repo

## Install
```sh
cd ~/klipper_config
git clone https://github.com/RomRider/ercf-klipper.git
```

## Add it as a service in Moonraker

```ini
[update_manager ERCF-Config]
type: git_repo
path: /home/pi/klipper_config/ercf_klipper
origin: https://github.com/RomRider/ercf-klipper.git
install_script: scripts/install.sh
is_system_service: False
managed_services: klipper
primary_branch: main
```

# How to maintain

## When cloning as a new repo

```sh
git clone <this repo>
git remote add upstream https://github.com/EtteGit/EnragedRabbitProject.git
git fetch upstream
git switch -c upstream-main upstream/main
```

## Pulling changes

```sh
git checkout upstream-main
git pull
git subtree split --prefix=Klipper_Files \
  --onto upstream-klipper -b upstream-klipper
git checkout upstream-klipper
git push --set-upstream origin upstream-klipper
git checkout main
git rebase upstream-klipper
```