# azurerm_route

Manages a Route within a Route Table.~> **NOTE on Route Tables and Routes:** Terraform currentlyprovides both a standalone [Route resource](route.html), and allows for Routes to be defined in-line within the [Route Table resource](route_table.html).At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the route. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the route. Changing this forces a new resource to be created. | 
| **var.route_table_name** | string | True | -  |  The name of the route table within which create the route. Changing this forces a new resource to be created. | 
| **var.address_prefix** | string | True | -  |  The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format. | 
| **var.next_hop_type** | string | True | `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance`, `None`  |  The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`. | 
| **var.next_hop_in_ip_address** | string | False | -  |  Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **route_table_name** | string  | - | 
| **address_prefix** | string  | - | 
| **next_hop_type** | string  | - | 
| **next_hop_in_ip_address** | string  | - | 
| **id** | string  | The Route ID. | 