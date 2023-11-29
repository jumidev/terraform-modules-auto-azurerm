# azurerm_virtual_desktop_workspace

Manages a Virtual Desktop Workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created. | 
| **friendly_name** | string | False | -  |  -  | A friendly name for the Virtual Desktop Workspace. | 
| **description** | string | False | -  |  -  | A description for the Virtual Desktop Workspace. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

