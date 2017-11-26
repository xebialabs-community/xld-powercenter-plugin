# XL Deploy PowerCenter plugin

[![Build Status][xld-powercenter-plugin-travis-image] ][xld-powercenter-plugin-travis-url]
[![Codacy Badge][xld-powercenter-plugin-codacy-image] ][xld-powercenter-plugin-codacy-url]
[![Code Climate][xld-powercenter-plugin-code-climate-image] ][xld-powercenter-plugin-code-climate-url]
[![License: MIT][xld-powercenter-plugin-license-image] ][xld-powercenter-plugin-license-url]
![Github All Releases][xld-powercenter-plugin-downloads-image]

[xld-powercenter-plugin-travis-image]: https://travis-ci.org/xebialabs-community/xld-powercenter-plugin.svg?branch=master
[xld-powercenter-plugin-travis-url]: https://travis-ci.org/xebialabs-community/xld-powercenter-plugin
[xld-powercenter-plugin-codacy-image]: https://api.codacy.com/project/badge/Grade/21ad78cccf7b47839547a1fcd9e342aa
[xld-powercenter-plugin-codacy-url]: https://www.codacy.com/app/joris-dewinne/xld-powercenter-plugin
[xld-powercenter-plugin-code-climate-image]: https://codeclimate.com/github/xebialabs-community/xld-powercenter-plugin/badges/gpa.svg
[xld-powercenter-plugin-code-climate-url]: https://codeclimate.com/github/xebialabs-community/xld-powercenter-plugin
[xld-powercenter-plugin-license-image]: https://img.shields.io/badge/License-MIT-yellow.svg
[xld-powercenter-plugin-license-url]: https://opensource.org/licenses/MIT
[xld-powercenter-plugin-downloads-image]: https://img.shields.io/github/downloads/xebialabs-community/xld-powercenter-plugin/total.svg

## Preface

This document describes the functionality provided by the XL Deploy|Release Description|Interface plugin.

See the [XL Deploy reference manual](https://docs.xebialabs.com/xl-deploy) for background information on XL Deploy and deployment automation concepts.  

## Overview

The XL Deploy PowerCenter plugin provides a configuration item for a PowerCenter container, a control script to check the connection to it, and scripts to import and delete PowerCenter objects.  It also includes several support files.

## Requirements

* XL Deploy 6.0+

## Installation

* Copy the latest JAR file from the [releases page](https://github.com/xebialabs-community/xld-powercenter-plugin/releases) into the `XL_DEPLOY_SERVER/plugins` directory.
* Restart the XL Deploy server.


## Usage

### Version 1.1.0

The powercenter.PowercenterXml has been updated in version 1.1.0 for the following behavior, remaining backwards-compatible with prior versions.

A new property folderNameMap has been introduced as a map\_string\_string kind to allow for source and target folder names to differ.  Multiple entries can be provided.  The key of each entry is the source folder name, while the value is the target folder name.  

If the folderNameMap is present (not empty), then the source and target folder names in it will be used instead of any folder names in the old folderList property.

The old property folderList is still present as a list_of_string kind to allow for 
compatibility with prior versions of this plugin.






