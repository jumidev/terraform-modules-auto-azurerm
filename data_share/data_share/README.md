# azurerm_data_share

Manages a Data Share.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Share. Changing this forces a new Data Share to be created. | 
| **var.account_id** | string | True | -  |  -  | The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created. | 
| **var.kind** | string | True | -  |  `CopyBased`, `InPlace`  | The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created. | 
| **var.description** | string | False | -  |  -  | The Data Share's description. | 
| **var.snapshot_schedule** | block | False | -  |  -  | A `snapshot_schedule` block. | 
| **var.terms** | string | False | -  |  -  | The terms of the Data Share. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **account_id** | string  | - | 
| **kind** | string  | - | 
| **description** | string  | - | 
| **snapshot_schedule** | block  | - | 
| **terms** | string  | - | 
| **id** | string  | The ID of the Data Share. | 