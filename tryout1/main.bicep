param paramctr array = [
  '1'
  '2'
]

var paramsArray = [
  json(loadTextContent('./params.1.json')).parameters.accountinfo.value
  json(loadTextContent('./params.2.json')).parameters.accountinfo.value
]

module storagemod 'amodule.bicep' = [for i in paramsArray : {
  name: 'storagemoddeploy'
  params: {
    accountinfo: i
  }
}]

