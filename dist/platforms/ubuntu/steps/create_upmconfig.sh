#!/usr/bin/env bash

echo "Creating upmconfig.toml"


echo "[npmAuth.\"https://npm.pkg.github.com/@rrealmdev\"]" > ~/.upmconfig.toml
echo "token = \"$GIT_PRIVATE_TOKEN\"" >> ~/.upmconfig.toml
echo "email = \"arkadiusz.mirecki@everyrealm.com\"" >> ~/.upmconfig.toml
echo "alwaysAuth = true" >> ~/.upmconfig.toml

ls ~
cat ~/.upmconfig.toml
