<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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

echo Connect to ${deployed.container.repository}  domain ${deployed.container.domain} as ${deployed.container.userName}
${pmrep} connect -r ${deployed.container.repository} -d ${deployed.container.domain} -n ${deployed.container.userName} -x ${deployed.container.password}
${exitCodeCheck}
#cat powercenter/powercenter_controlfile.xml
for ORIGINAL_FILE in `find ${deployed.file.path} -type f | sort`; do
    echo ------------------------------------------------------------------------
    echo Process $ORIGINAL_FILE
    ${pmrep} objectimport -i $ORIGINAL_FILE  -c powercenter/powercenter_controlfile.xml
    ${exitCodeCheck}
done
echo ------------------------------------------------------------------------



