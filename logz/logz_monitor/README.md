# azurerm_logz_monitor

Manages a logz Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this logz Monitor. Changing this forces a new logz Monitor to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **plan** | block | True | -  |  -  | A `plan` block. Changing this forces a new resource to be created. | 
| **user** | block | True | -  |  -  | A `user` block. Changing this forces a new resource to be created. | 
| **company_name** | string | False | -  |  -  | Name of the Logz organization. Changing this forces a new logz Monitor to be created. | 
| **enterprise_app_id** | string | False | -  |  -  | The ID of the Enterprise App. Changing this forces a new logz Monitor to be created. | 
| **enabled** | bool | False | `True`  |  -  | Whether the resource monitoring is enabled? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the logz Monitor. | 

