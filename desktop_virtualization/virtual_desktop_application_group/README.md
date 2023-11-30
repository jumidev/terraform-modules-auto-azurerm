# azurerm_virtual_desktop_application_group

Manages a Virtual Desktop Application Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "desktop_virtualization/virtual_desktop_application_group" 
}

inputs = {
   name = "name of virtual_desktop_application_group" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   type = "type of virtual_desktop_application_group" 
   host_pool_id = "host_pool_id of virtual_desktop_application_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created. | 
| **var.type** | string |  `RemoteApp`, `Desktop`  |  Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created. | 
| **var.host_pool_id** | string |  -  |  Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.friendly_name** | string |  Option to set a friendly name for the Virtual Desktop Application Group. | 
| **var.default_desktop_display_name** | string |  Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. | 
| **var.description** | string |  Option to set a description for the Virtual Desktop Application Group. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Application Group. | 

Additionally, all variables are provided as outputs.
