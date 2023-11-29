# azurerm_virtual_desktop_workspace

Manages a Virtual Desktop Workspace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created. | 
| **var.friendly_name** | string | False | -  |  -  | A friendly name for the Virtual Desktop Workspace. | 
| **var.description** | string | False | -  |  -  | A description for the Virtual Desktop Workspace. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **friendly_name** | string  | - | 
| **description** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Virtual Desktop Workspace. | 