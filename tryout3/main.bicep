var paramsArray = [
  json(loadTextContent('./params.1.json')).parameters.accountinfo.value
  json(loadTextContent('./params.2.json')).parameters.accountinfo.value
]

module storagemod1 'amodule.bicep' = [for i in range(0, 2) : {
  name: 'storagemoddeploy${i}'
  params: {
    accountinfo: paramsArray[i]
  }
}]
