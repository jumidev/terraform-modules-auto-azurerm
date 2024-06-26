# azurerm_network_profile



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_profile"   
}
inputs = {
   name = "Specifies the name of the Network Profile"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   container_network_interface = {
      name = "..."      
      ip_configuration = "..."      
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
| **name** | string |  Specifies the name of the Network Profile. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **container_network_interface** | [block](#container_network_interface-block-structure) |  A `container_network_interface` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags assigned to the resource. | 

### `container_network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the IP Configuration. |
| `ip_configuration` | string | Yes | - | One or more 'ip_configuration' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **subnet_id** | string | No  | Reference to the subnet associated with the IP Configuration. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Network Profile. | 
| **container_network_interface_ids** | list | No  | A list of Container Network Interface IDs. | 

Additionally, all variables are provided as outputs.
