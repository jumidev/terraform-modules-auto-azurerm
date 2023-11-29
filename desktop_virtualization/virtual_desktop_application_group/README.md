# azurerm_virtual_desktop_application_group

Manages a Virtual Desktop Application Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  `RemoteApp`, `Desktop`  | Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created. | 
| **host_pool_id** | string | True | -  |  -  | Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created. | 
| **friendly_name** | string | False | -  |  -  | Option to set a friendly name for the Virtual Desktop Application Group. | 
| **default_desktop_display_name** | string | False | -  |  -  | Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. | 
| **description** | string | False | -  |  -  | Option to set a description for the Virtual Desktop Application Group. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

