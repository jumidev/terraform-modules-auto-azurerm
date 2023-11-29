# azurerm_monitor_data_collection_endpoint

Manages a Data Collection Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 
| **description** | string | False | -  |  -  | Specifies a description for the Data Collection Endpoint. | 
| **kind** | string | False | -  |  `Linux`, `Windows`  | The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`. | 
| **public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  | Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Data Collection Endpoint. | 

