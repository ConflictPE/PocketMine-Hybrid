# PocketMine-Hybrid

__PocketMine-MP tuned for the @ConflictPE Networks servers.__

[![Build Status](https://travis-ci.com/ConflictPE/PocketMine-Hybrid.svg?token=fLqbLTxC2gbR3RqiksiT&branch=master)](https://travis-ci.com/ConflictPE/PocketMine-Hybrid)
[![CircleCI](https://circleci.com/gh/ConflictPE/PocketMine-Hybrid/tree/master.svg?style=svg&circle-token=5cc6cfdf621edb101105dddc2387eb5550c33b4f)](https://circleci.com/gh/ConflictPE/PocketMine-Hybrid/tree/master)
[![GitLabCI](https://gitlab.com/JackNoordhuis/PocketMine-Hybrid/badges/master/pipeline.svg)](https://gitlab.com/JackNoordhuis/PocketMine-Hybrid/pipelines?scope=branches)

## How To

Init the PocketMine-MP module: `git submodule update --init --recursive`

Apply patches: `./applyPatches.sh`

### Create patch ###

`cd PocketMine-Hybrid-Core`

Do changes

Add your file for commit: `git add <file>`

Commit: `git commit -m <msg>`

`cd ..`

Create patch: `./rebuildPatches.sh`



`applyPatches.sh`, `rebuildPatches.sh` and `upstreamMerge.sh` come from the [Spigot project](https://github.com/SpigotMC/Spigot)
