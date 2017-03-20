# xld-powercenter-plugin

This is the initial commit of an XL Deploy/PowerCenter plugin.  It provides a configuration item for a PowerCenter container, a control script to check the connection to it, and scripts to import and delete PowerCenter objects.  It also includes several support files.

# CI status #

[![Build Status][xld-powercenter-plugin-travis-image] ][xld-powercenter-plugin-travis-url]
[![Codacy Badge][xld-powercenter-plugin-codacy-image] ][xld-powercenter-plugin-codacy-url]
[![Code Climate][xld-powercenter-plugin-code-climate-image] ][xld-powercenter-plugin-code-climate-url]

[xld-powercenter-plugin-travis-image]: https://travis-ci.org/xebialabs-community/xld-powercenter-plugin.svg?branch=master
[xld-powercenter-plugin-travis-url]: https://travis-ci.org/xebialabs-community/xld-powercenter-plugin
[xld-powercenter-plugin-codacy-image]: https://api.codacy.com/project/badge/Grade/21ad78cccf7b47839547a1fcd9e342aa
[xld-powercenter-plugin-codacy-url]: https://www.codacy.com/app/joris-dewinne/xld-powercenter-plugin
[xld-powercenter-plugin-code-climate-image]: https://codeclimate.com/github/xebialabs-community/xld-powercenter-plugin/badges/gpa.svg
[xld-powercenter-plugin-code-climate-url]: https://codeclimate.com/github/xebialabs-community/xld-powercenter-plugin

### Version 1.1.0 ###
The powercenter.PowercenterXml has been updated in version 1.1.0 for the following behavior, remaining backwards-compatible with prior versions.

A new property folderNameMap has been introduced as a map_string_string kind to allow for source and target folder names to differ.  Multiple entries can be provided.  The key of each entry is the source folder name, while the value is the target folder name.  

If the folderNameMap is present (not empty), then the source and target folder names in it will be used instead of any folder names in the old folderList property.

The old property folderList is still present as a list_of_string kind to allow for 
compatibility with prior versions of this plugin.






