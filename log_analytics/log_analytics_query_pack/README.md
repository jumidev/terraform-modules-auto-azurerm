# azurerm_log_analytics_query_pack

Manages a Log Analytics Query Pack.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Log Analytics Query Pack. | 

