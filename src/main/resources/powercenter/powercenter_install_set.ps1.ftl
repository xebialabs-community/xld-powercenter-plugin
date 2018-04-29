<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->

<#assign pmrep=deployed.container.home + "\\server\\bin\\pmrep">
Write-Host "Connect to repository ${deployed.container.repository}  domain ${deployed.container.domain} as ${deployed.container.userName}"
${pmrep} connect -r ${deployed.container.repository} -d ${deployed.container.domain} -n ${deployed.container.userName} -x ${deployed.container.password}
$res=$?
if ( ! $res ) {
  exit $res
}

$files = Get-ChildItem ${deployed.file.path} -recurse | Where-Object {$_.PSIsContainer -eq $False} | % {$_.FullName}
ForEach ( $FILE_NAME in $files ) {
    Write-Host "----------------------------------------------------------------------"
	Write-Host "Process $FILE_NAME"
    ${pmrep} objectimport -i $FILE_NAME  -c powercenter/powercenter_controlfile.xml
}
$res=$?
if ( ! $res ) {
  exit $res
}
Write-Host "----------------------------------------------------------------------"
