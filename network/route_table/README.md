# azurerm_route_table



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/route_table"   
}
inputs = {
   name = "The name of the route table"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```
## Associated component


### `subnet_id` 

- If set to a valid `azurerm_subnet` `id`, makes a **azurerm_subnet_route_table_association** - 

Example component snippet (**See also** [network/subnet](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/subnet))

```hcl
component_inputs = {
   subnet_id = "path/to/subnet_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the route table. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the route table. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **routes** | [block](#route-block-structure) |  List of `route` objects representing routes as defined below. Each object accepts the arguments documented below. -> **NOTE** Since `route` can be configured both inline and via the separate `azurerm_route` resource, we have to explicitly set it to empty slice (`[]`) to remove it. | 
| **disable_bgp_route_propagation** | bool |  Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the route. |
| `address_prefix` | string | Yes | - | The destination to which the route applies. Can be CIDR (such as '10.1.0.0/16') or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as 'ApiManagement', 'AzureBackup' or 'AzureMonitor') format. |
| `next_hop_type` | string | Yes | - | The type of Azure hop the packet should be sent to. Possible values are 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance' and 'None'. |
| `next_hop_in_ip_address` | string | No | - | Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is 'VirtualAppliance'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **next_hop_in_ip_address** | string | No  | Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Route Table ID. | 
| **subnets** | string | No  | The collection of Subnets associated with this route table. | 

Additionally, all variables are provided as outputs.
