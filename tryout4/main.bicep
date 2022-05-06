var paramsArray = [
  json(loadTextContent('./params.0.json')).parameters.accountinfo.value
  json(loadTextContent('./params.1.json')).parameters.accountinfo.value
]

var paramsArray2 = [for i in range(0, 2): json(loadTextContent('./params.${i}.json')).parameters.accountinfo.value]

module storagemod1 'amodule.bicep' = [for i in range(0, 2) : {
  name: 'storagemoddeploy${i}'
  params: {
    accountinfo: paramsArray[i]
  }
}]
