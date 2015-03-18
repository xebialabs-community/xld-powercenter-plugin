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

${pmrep} deleteobject -o workflow -f SCD_ADAPTER -n TESTWVR
${exitCodeCheck}

echo ------------------------------------------------------------------------

#echo Powercenter objects can not be deleted from a versioned repository using command line interface.
#echo NB: Use Repository Manager to delete object manually!
