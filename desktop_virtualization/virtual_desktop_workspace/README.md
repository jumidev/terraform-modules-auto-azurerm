# azurerm_virtual_desktop_workspace

Manages a Virtual Desktop Workspace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "desktop_virtualization/virtual_desktop_workspace"   
}

inputs = {
   name = "The name of the Virtual Desktop Workspace"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **location** | string |  The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **friendly_name** | string |  -  |  A friendly name for the Virtual Desktop Workspace. | 
| **description** | string |  -  |  A description for the Virtual Desktop Workspace. | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Workspace. | 

Additionally, all variables are provided as outputs.
