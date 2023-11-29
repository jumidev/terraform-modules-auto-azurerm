# azurerm_purview_account

Manages a Purview Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **identity** | block | True | -  |  -  | An `identity` block. | 
| **name** | string | True | -  |  -  | The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **public_network_enabled** | bool | False | `True`  |  -  | Should the Purview Account be visible to the public network? Defaults to `true`. | 
| **managed_resource_group_name** | string | False | -  |  -  | The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Purview Account. | 

