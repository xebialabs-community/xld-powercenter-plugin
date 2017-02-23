<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE IMPORTPARAMS SYSTEM "impcntl.dtd">

<!--IMPORTPARAMS This inputs the options and inputs required for import operation -->

<!--CHECKIN_AFTER_IMPORT Check in objects on successful import operation -->

<!--CHECKIN_COMMENTS Check in comments -->

<!--APPLY_LABEL_NAME Apply the given label name on imported objects -->

<!--RETAIN_GENERATED_VALUE Retain existing sequence generator, normalizer and XML DSQ current values in the destination -->

<!--COPY_SAP_PROGRAM Copy SAP program information into the target repository -->

<!--APPLY_DEFAULT_CONNECTION Apply the default connection when a connection used by a session does not exist in the target repository -->

<!--IMPORTPARAMS This inputs the options and inputs required for import operation -->

<!--FOLDERMAP matches the folders in the imported file with the folders in the target repository -->

<IMPORTPARAMS CHECKIN_AFTER_IMPORT="YES" CHECKIN_COMMENTS="XL Deploy Test" RETAIN_GENERATED_VALUE="YES" COPY_SAP_PROGRAM="YES" APPLY_DEFAULT_CONNECTION="NO">  

<#if deployed.folderNameMap?has_content>>
  <#list deployed.folderNameMap?keys as key>
<FOLDERMAP SOURCEFOLDERNAME="${key}" SOURCEREPOSITORYNAME="${deployed.sourceRepository}" TARGETFOLDERNAME="${deployed.folderNameMap[key]}" TARGETREPOSITORYNAME="${deployed.container.repository}"/>
  </#list>
<#else>
  <#list deployed.folderNames as folderName>
<FOLDERMAP SOURCEFOLDERNAME="${folderName}" SOURCEREPOSITORYNAME="${deployed.sourceRepository}" TARGETFOLDERNAME="${folderName}" TARGETREPOSITORYNAME="${deployed.container.repository}"/>
  </#list>
</#if>

<!--RESOLVECONFLICT allows to specify resolution for conflicting objects during import. The combination of specified child nodes can be supplied -->

<RESOLVECONFLICT>

    <!--TYPEOBJECT allows objects of certain type to apply replace/reuse upon conflict-->
    <!--TYPEOBJECT OBJECTTYPENAME="ALL" RESOLUTION="REPLACE"/ -->

    <TYPEOBJECT OBJECTTYPENAME="ALL" RESOLUTION="REPLACE"/>
    <TYPEOBJECT OBJECTTYPENAME="ALL" RESOLUTION="REUSE"/>

</RESOLVECONFLICT>

</IMPORTPARAMS>
