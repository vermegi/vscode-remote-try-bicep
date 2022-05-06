param paramctr array = [
  '1'
  '2'
]

var paramsArray = [
  json(loadTextContent('./params.1.json')).parameters.accountinfo.value
  json(loadTextContent('./params.2.json')).parameters.accountinfo.value
]

module storagemod1 'amodule.bicep' = {
  name: 'storagemoddeploy1'
  params: {
    accountinfo: paramsArray[0]
  }
}

module storagemod2 'amodule.bicep' = {
  name: 'storagemoddeploy2'
  params: {
    accountinfo: paramsArray[1]
  }
}
