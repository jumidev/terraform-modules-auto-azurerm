# azurerm_monitor_workspace

Manages an Azure Monitor Workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Is public network access enabled? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Monitor Workspace. | 

