# azurerm_virtual_hub_route_table_route

Manages a Route in a Virtual Hub Route Table.~> **Note:** Route table routes can managed with this resource, or in-line with the [virtual_hub_route_table](virtual_hub_route_table.html) resource. Using both is not supported.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.route_table_id** | string | True | -  |  -  |  The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this route. Changing this forces a new resource to be created. | 
| **var.destinations** | list | True | -  |  -  |  A list of destination addresses for this route. | 
| **var.destinations_type** | string | True | -  |  `CIDR`, `ResourceId`, `Service`  |  The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`. | 
| **var.next_hop** | string | True | -  |  -  |  The next hop's resource ID. | 
| **var.next_hop_type** | string | False | `ResourceId`  |  -  |  The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **route_table_id** | string  | - | 
| **name** | string  | - | 
| **destinations** | list  | - | 
| **destinations_type** | string  | - | 
| **next_hop** | string  | - | 
| **next_hop_type** | string  | - | 
| **id** | string  | The ID of the Virtual Hub Route Table. | 