<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
@echo off
<#assign pmrep=previousDeployed.container.home + "/server/bin/pmrep">
${pmrep} connect -r ${previousDeployed.container.repository} -d ${previousDeployed.container.domain} -n ${previousDeployed.container.userName} -x ${previousDeployed.container.password}

<#list previousDeployed.folderNames as folderName>
<#list previousDeployed.objectNames as objectName>
<#list previousDeployed.objectTypes as objectType>
${pmrep} deleteobject -o ${objectType} -f ${folderName} -n ${objectName}
</#list>
</#list>
</#list>
