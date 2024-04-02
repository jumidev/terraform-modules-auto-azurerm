# azurerm_private_dns_zone



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_zone"   
}

inputs = {
   name = "The name of the Private DNS Zone"   
   resource_group_name = "${resource_group}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `private_dns_zone_virtual_network_link` 

If set, makes a **azurerm_private_dns_zone_virtual_network_link** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `virtual_network_id` | string | True | null |
| `registration_enabled` | bool | False | false |
| `tags` | map | False | null |


Example component snippet:

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
   private_dns_zone_virtual_network_link.virtual_network_id = "path/to/virtual_network_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created. -> **NOTE:** If you are going to be using the Private DNS Zone with a Private Endpoint the name of the Private DNS Zone must follow the **Private DNS Zone name** schema in the [product documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-dns#virtual-network-and-on-premises-workloads-using-a-dns-forwarder) in order for the two resources to be connected successfully. | 
| **resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **soa_record** | [block](#soa_record-block-structure) |  An `soa_record` block. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `soa_record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | The email contact for the SOA record. |
| `expire_time` | string | No | 2419200 | The expire time for the SOA record. Defaults to '2419200'. |
| `minimum_ttl` | string | No | 10 | The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to '10'. |
| `refresh_time` | string | No | 3600 | The refresh time for the SOA record. Defaults to '3600'. |
| `retry_time` | string | No | 300 | The retry time for the SOA record. Defaults to '300'. |
| `ttl` | number | No | 3600 | The Time To Live of the SOA Record in seconds. Defaults to '3600'. |
| `tags` | map | No | - | A mapping of tags to assign to the Record Set. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the Record Set. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Private DNS Zone ID. | 
| **soa_record** | block | No  | A `soa_record` block. | 
| **number_of_record_sets** | number | No  | The current number of record sets in this Private DNS zone. | 
| **max_number_of_record_sets** | number | No  | The maximum number of record sets that can be created in this Private DNS zone. | 
| **max_number_of_virtual_network_links** | number | No  | The maximum number of virtual networks that can be linked to this Private DNS zone. | 
| **max_number_of_virtual_network_links_with_registration** | number | No  | The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. | 
| **fqdn** | string | No  | The fully qualified domain name of the Record Set. | 
| **host_name** | string | No  | The domain name of the authoritative name server for the SOA record. | 
| **serial_number** | string | No  | The serial number for the SOA record. | 

Additionally, all variables are provided as outputs.
