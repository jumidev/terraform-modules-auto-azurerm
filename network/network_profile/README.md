# azurerm_network_profile

Manages a Network Profile.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_profile" 
}

inputs = {
   name = "name of network_profile" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   container_network_interface = "container_network_interface of network_profile" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Network Profile. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.container_network_interface** | block | True | A `container_network_interface` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 

### `container_network_interface` block structure

>`name` (string): (REQUIRED) Specifies the name of the IP Configuration.
>`ip_configuration` (list): (REQUIRED) One or more 'ip_configuration' blocks.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Profile. | 
| **container_network_interface_ids** | list | No  | A list of Container Network Interface IDs. | 

Additionally, all variables are provided as outputs.
