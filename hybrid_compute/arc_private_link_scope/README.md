# azurerm_arc_private_link_scope

Manages an Azure Arc Private Link Scope.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for the Azure Arc Private Link Scope. Changing this forces a new Azure Arc Private Link Scope to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created. | 
| **public_network_access_enabled** | bool | False | `False`  |  `true`, `false`  | Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints. Defaults to `false`. Possible values are `true` and `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Arc Private Link Scope. | 

