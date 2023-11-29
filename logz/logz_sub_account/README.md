# azurerm_logz_sub_account

Manages a logz Sub Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this logz Sub Account. Possible values must be between 1 and 32 characters in length and may contain only letters, numbers, hyphens and underscores. Changing this forces a new logz Sub Account to be created. | 
| **logz_monitor_id** | string | True | -  |  -  | The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created. | 
| **user** | block | True | -  |  -  | A `user` block. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Whether the resource monitoring is enabled? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the logz Sub Account. | 

