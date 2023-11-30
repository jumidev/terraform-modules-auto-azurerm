# azurerm_network_profile

Manages a Network Profile.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_profile" 
}

inputs = {
   name = "name of network_profile" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   container_network_interface = {
      example_container_network_interface = {
         ip_configuration = "..."   
      }
  
   }
 
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
| **var.name** | string |  Specifies the name of the Network Profile. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.container_network_interface** | [block](#container_network_interface-block-structure) |  A `container_network_interface` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 

### `container_network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_configuration` | list | Yes | - | One or more 'ip_configuration' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Profile. | 
| **container_network_interface_ids** | list | No  | A list of Container Network Interface IDs. | 

Additionally, all variables are provided as outputs.
