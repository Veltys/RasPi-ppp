# RasPi-ppp
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/e4fb13793a394d86aab96654e49d4603)](https://www.codacy.com/gh/Veltys/RasPi-ppp/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Veltys/RasPi-ppp&amp;utm_campaign=Badge_Grade)
[![GitHub release](https://img.shields.io/github/release/Veltys/RasPi-ppp.svg)](https://GitHub.com/Veltys/RasPi-ppp/releases/)
[![GitHub commits](https://badgen.net/github/commits/Veltys/RasPi-ppp)](https://GitHub.com/Veltys/RasPi-ppp/commit/)
[![GitHub latest commit](https://badgen.net/github/last-commit/Veltys/RasPi-ppp)](https://GitHub.com/Veltys/RasPi-ppp/commit/)
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/Veltys/RasPi-ppp/blob/master/LICENSE.md)

Scripts to connect Two Raspberry Pi through UART cable


## Descripción
A set of scripts that facilitate the establishment of a connection between two Raspberry Pi devices using an UART cable


## Changelog
All important changes in this project will be documented in this section.

Its format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### Pendiente (*TODO*)
- [ ] Make a *TODO* list

### [1.2.1] - 2023-01-08
#### Fixed
- Improved help

### [1.2.0] - 2023-01-08
#### Added
- Installer help

### [1.1.2] - 2023-01-08
#### Fixed
- Executable permissions

### [1.1.1] - 2023-01-08
#### Addedd
- Codacy badge

### [1.1.0] - 2023-01-08
#### Addedd
- Enable the traffic forwarding in server installation in **install.sh**
- Acknowledgments section in **README.me**

### [1.0.0] - 2023-01-08
#### Addedd
- **README.me** document
- **pppd-client.sh** system
- **pppd-server.sh** system
- **pppd-client.service** *systemd* service
- **pppd-server.service** *systemd* service
- **install.sh** system


## Acknowledgments, sources consulted and other credits
* To *ludeks*, for his/her [Instructables tutorial](https://www.instructables.com/Connect-the-Raspberry-Pi-to-network-using-UART/), my inspiration to make these scripts collection
* To the [official systemd.service documentation](https://www.freedesktop.org/software/systemd/man/systemd.service.html), for obvious reasons