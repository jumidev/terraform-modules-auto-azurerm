# azurerm_virtual_network



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network"   
}
inputs = {
   name = "The name of the virtual network"   
   resource_group_name = "${resource_group}"   
   address_space = "The address space that is used the virtual network"   
   location = "${location}"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```
## Associated component


### `private_dns_zone_virtual_network_link` 

If set, makes a **azurerm_private_dns_zone_virtual_network_link** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `private_dns_zone_name` | string | True | null |
| `registration_enabled` | bool | False | false |
| `tags` | map | False | null |


Example component snippet

**See also** [private_dns/private_dns_zone](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/private_dns/private_dns_zone)

```hcl
inputs = {
   private_dns_zone_virtual_network_link = {
      name = "..."      
      resource_group_name = "${resource_group}"      
      registration_enabled = false      
      tags = "..."      
   }   
}
component_inputs = {
   private_dns_zone_virtual_network_link.private_dns_zone_name = "path/to/private_dns_zone_component:name"   
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | 
| **address_space** | string |  The address space that is used the virtual network. You can supply more than one address space. | 
| **location** | string |  The location/region where the virtual network is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **bgp_community** | string |  -  |  The BGP community attribute in format `<as-number>:<community-value>`. -> **NOTE** The `as-number` segment is the Microsoft ASN, which is always `12076` for now. | 
| **ddos_protection_plan** | [block](#ddos_protection_plan-block-structure) |  -  |  A `ddos_protection_plan` block. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  A `encryption` block. | 
| **dns_servers** | string |  `azurerm_virtual_network_dns_servers`, `[]`  |  List of IP addresses of DNS servers -> **NOTE** Since `dns_servers` can be configured both inline and via the separate `azurerm_virtual_network_dns_servers` resource, we have to explicitly set it to empty slice (`[]`) to remove it. | 
| **edge_zone** | string |  -  |  Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created. | 
| **flow_timeout_in_minutes** | number |  `4`, `30`  |  The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes. | 

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enforcement` | bool | Yes | - | Specifies if the encrypted Virtual Network allows VM that does not support encryption. Possible values are 'DropUnencrypted' and 'AllowUnencrypted'. |

### `ddos_protection_plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enable` | string | Yes | - | Enable/disable DDoS Protection Plan on Virtual Network. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **security_group** | string | No  | The Network Security Group to associate with the subnet. (Referenced by `id`, ie. `azurerm_network_security_group.example.id`) In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of this subnet. | 
| **name** | string | No  | The name of the virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group in which to create the virtual network. | 
| **location** | string | No  | The location/region where the virtual network is created. Changing this forces a new resource to be created. | 
| **address_space** | string | No  | The list of address spaces used by the virtual network. | 
| **guid** | string | No  | The GUID of the virtual network. | 
| **subnet** | block | No  | One or more `subnet` blocks. | 

Additionally, all variables are provided as outputs.
