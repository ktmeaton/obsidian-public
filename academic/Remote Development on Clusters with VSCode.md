---
project: "[[Bioinformatics]]"
due: 2022-01-12
time: 10:00
people:
  - "[[Armin Sobhani]]"
tags: 💡 , 🦈
status: idea
title: Remote Development on Clusters with VSCode
type: Task
authors:
  - "[[Armin Sobhani]]"
url: 
  - https://sharcnet-ca.zoom.us/w/87950133189?tk=ukZIGw_gB4zEKNHnoM-TSfJQMHa_7NsBnxC5dUCGT4c.DQMAAAAUejyHxRZqSFJVbXdUelJ3Nm1ZQ2V6Sl9JTzV3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&pwd=bUdMTlFEUWtXN25NOTNVTkhOSU1sZz09
  - https://github.com/sharcnet/vscode-hpc
---

# Remote Development on Clusters with [[Visual Studio Code|VSCode]]

Presenter | [[Armin Sobhani]]
Date | [[2022-01-12]]

You can do remote development on login nodes or a compute nodes.

## Setup | Python Development

-   [Visual Studio Code (VSCode)](https://code.visualstudio.com/) on the system that you work on it along with the following extensions:
	- [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
    -   [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
	-   [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
    -   [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) (_optional_)

## WSL2

Open a WSL2 project in visual studio code:
```bash
code .

Installing VS Code Server for x64
```