# azurerm_virtual_hub_route_table_route

Manages a Route in a Virtual Hub Route Table.~> **Note:** Route table routes can managed with this resource, or in-line with the [virtual_hub_route_table](virtual_hub_route_table.html) resource. Using both is not supported.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_hub_route_table_route"   
}

inputs = {
   # route_table_id → set in tfstate_inputs
   name = "The name which should be used for this route"   
   destinations = "A list of destination addresses for this route"   
   destinations_type = "The type of destinations"   
   next_hop = "The next hop's resource ID"   
}

tfstate_inputs = {
   route_table_id = "path/to/route_table_component:id"   
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
| **route_table_id** | string |  -  |  The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  The name which should be used for this route. Changing this forces a new resource to be created. | 
| **destinations** | list |  -  |  A list of destination addresses for this route. | 
| **destinations_type** | string |  `CIDR`, `ResourceId`, `Service`  |  The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`. | 
| **next_hop** | string |  -  |  The next hop's resource ID. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **next_hop_type** | string |  `ResourceId`  |  The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Route Table. | 

Additionally, all variables are provided as outputs.
