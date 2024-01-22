#!/bin/bash
atlas deployments setup --type local --port 27778 --bindIpAll --username root --password root --force && tail -f /dev/null