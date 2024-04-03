# azurerm_virtual_hub_route_table



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_hub_route_table"   
}
inputs = {
   name = "The name which should be used for Virtual Hub Route Table..."   
   # virtual_hub_id → set in component_inputs
}
component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **labels** | string |  List of labels associated with this route table. | 
| **route** | [block](#route-block-structure) |  One or more `route` blocks. | 

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this route. |
| `destinations` | list | Yes | - | A list of destination addresses for this route. |
| `destinations_type` | string | Yes | - | The type of destinations. Possible values are 'CIDR', 'ResourceId' and 'Service'. |
| `next_hop` | string | Yes | - | The next hop's resource ID. |
| `next_hop_type` | string | No | ResourceId | The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'. ~> **Note:** The Routes can alternatively be created using the [virtual_hub_route_table_route](virtual_hub_route_table_route.html) resource. Using both inline and external routes is not supported and may result in unexpected configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **next_hop_type** | string | No  | The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`. ~> **Note:** The Routes can alternatively be created using the [virtual_hub_route_table_route](virtual_hub_route_table_route.html) resource. Using both inline and external routes is not supported and may result in unexpected configuration. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Hub Route Table. | 

Additionally, all variables are provided as outputs.
