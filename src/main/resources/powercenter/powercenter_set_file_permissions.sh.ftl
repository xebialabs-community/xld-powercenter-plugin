<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/sh

echo "Setting file permissions on ${deployed.targetDirectory}/${deployed.targetFile} to ${deployed.filePermissions}"
chmod ${deployed.filePermissions} ${deployed.targetDirectory}/${deployed.targetFile}

res=$?
if [ $res != 0 ] ; then
  exit $res
fi
