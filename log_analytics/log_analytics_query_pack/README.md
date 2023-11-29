# azurerm_log_analytics_query_pack

Manages a Log Analytics Query Pack.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Log Analytics Query Pack. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Log Analytics Query Pack. | 