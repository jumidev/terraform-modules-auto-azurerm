# azurerm_virtual_hub_route_table_route

Manages a Route in a Virtual Hub Route Table.~> **Note:** Route table routes can managed with this resource, or in-line with the [virtual_hub_route_table](virtual_hub_route_table.html) resource. Using both is not supported.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_route_table_route" 
}

inputs = {
   route_table_id = "route_table_id of virtual_hub_route_table_route" 
   name = "name of virtual_hub_route_table_route" 
   destinations = "destinations of virtual_hub_route_table_route" 
   destinations_type = "destinations_type of virtual_hub_route_table_route" 
   next_hop = "next_hop of virtual_hub_route_table_route" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Route Table. | 

Additionally, all variables are provided as outputs.
