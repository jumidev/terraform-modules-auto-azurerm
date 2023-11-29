# azurerm_logz_sub_account

Manages a logz Sub Account.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this logz Sub Account. Possible values must be between 1 and 32 characters in length and may contain only letters, numbers, hyphens and underscores. Changing this forces a new logz Sub Account to be created. | 
| **var.logz_monitor_id** | string | True | -  |  The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created. | 
| **var.user** | block | True | -  |  A `user` block. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Whether the resource monitoring is enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the logz Sub Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logz_monitor_id** | string  | - | 
| **user** | block  | - | 
| **enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the logz Sub Account. | 