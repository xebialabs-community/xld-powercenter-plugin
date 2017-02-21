#
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
# FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
#

from xldeploy.XLDeployClientUtil import XLDeployClientUtil


xldClient = XLDeployClientUtil.createXLDeployClient(xldeployServer, username, password)

if updater in ("read","Read"):
	task = getCurrentTask()
	task.description = xldClient.find_dictionary_values(dictId)
	taskApi.updateTask(task.id, task)

if updater in ("update","Update"):
	task = getCurrentTask()
	task.description = xldClient.update_dictionary_values(dictId, task.description)

if updater in ("read","update","Read","Update"):
	sys.exit(1)
if updater in ("done","Done"):
	sys.exit(0)