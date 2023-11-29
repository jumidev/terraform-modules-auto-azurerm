# azurerm_monitor_workspace

Manages an Azure Monitor Workspace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Is public network access enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Monitor Workspace. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Monitor Workspace. | 
| **query_endpoint** | string  | The query endpoint for the Azure Monitor Workspace. | 