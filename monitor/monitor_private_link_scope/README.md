# azurerm_monitor_private_link_scope

Manages an Azure Monitor Private Link Scope.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Monitor Private Link Scope. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Monitor Private Link Scope. | 