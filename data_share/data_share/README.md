# azurerm_data_share

Manages a Data Share.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Data Share. Changing this forces a new Data Share to be created. | 
| **account_id** | string | True | -  |  -  | The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created. | 
| **kind** | string | True | -  |  `CopyBased`, `InPlace`  | The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created. | 
| **description** | string | False | -  |  -  | The Data Share's description. | 
| **snapshot_schedule** | block | False | -  |  -  | A `snapshot_schedule` block. | 
| **terms** | string | False | -  |  -  | The terms of the Data Share. | 

