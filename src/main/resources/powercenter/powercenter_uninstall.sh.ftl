<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
export INFA_HOME=${deployed.container.home}
export LD_LIBRARY_PATH=${deployed.container.home}/server/bin

<#assign pmrep=deployed.container.home + "/server/bin/pmrep">
<#assign exitCodeCheck>
res=$?
if [ $res != 0 ] ; then
  exit $res
fi
</#assign>
${pmrep} connect -r ${deployed.container.repository} -d ${deployed.container.domain} -n ${deployed.container.userName} -x ${deployed.container.password}
${exitCodeCheck}

<#list deployed.folderNames as folderName>
<#list deployed.objectNames as objectName>
<#list deployed.objectTypes as objectType>
${pmrep} deleteobject -o ${objectType} -f ${folderName} -n ${objectName}
</#list>
</#list>
</#list>


${exitCodeCheck}

echo ------------------------------------------------------------------------

#echo Powercenter objects can not be deleted from a versioned repository using command line interface.
#echo NB: Use Repository Manager to delete object manually!
