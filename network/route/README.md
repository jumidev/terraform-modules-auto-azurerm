# azurerm_route



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/route"   
}
inputs = {
   name = "The name of the route"   
   resource_group_name = "${resource_group}"   
   # route_table_name → set in component_inputs
   address_prefix = "The destination to which the route applies"   
   next_hop_type = "The type of Azure hop the packet should be sent to"   
}
component_inputs = {
   route_table_name = "path/to/route_table_component:name"   
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
| **name** | string |  -  |  The name of the route. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the route. Changing this forces a new resource to be created. | 
| **route_table_name** | string |  -  |  The name of the route table within which create the route. Changing this forces a new resource to be created. | 
| **address_prefix** | string |  `10.1.0.0/16`, `ApiManagement`, `AzureBackup`, `AzureMonitor`  |  The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format. | 
| **next_hop_type** | string |  `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance`, `None`  |  The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **next_hop_in_ip_address** | string |  Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **next_hop_in_ip_address** | string | No  | Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Route ID. | 

Additionally, all variables are provided as outputs.
