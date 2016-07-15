<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
<#assign pmrep=deployed.container.home + "/server/bin/pmrep">
${pmrep} connect -r ${deployed.container.repository} -d ${deployed.container.domain} -n ${deployed.container.userName} -x ${deployed.container.password}

<#list deployed.folderNames as folderName>
<#list deployed.objectNames as objectName>
<#list deployed.objectTypes as objectType>
${pmrep} deleteobject -o ${objectType} -f ${folderName} -n ${objectName}
</#list>
</#list>
</#list>
