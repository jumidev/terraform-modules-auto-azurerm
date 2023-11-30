# azurerm_virtual_hub_route_table

Manages a Virtual Hub Route Table.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_route_table" 
}

inputs = {
   name = "name of virtual_hub_route_table" 
   virtual_hub_id = "virtual_hub_id of virtual_hub_route_table" 
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
| **var.name** | string |  The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string |  The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.labels** | string |  List of labels associated with this route table. | 
| **var.route** | block |  One or more `route` blocks. | 

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destinations` | list | Yes | - | A list of destination addresses for this route. |
| `destinations_type` | string | Yes | - | The type of destinations. Possible values are 'CIDR', 'ResourceId' and 'Service'. |
| `next_hop` | string | Yes | - | The next hop's resource ID. |
| `next_hop_type` | string | No | ResourceId | The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Route Table. | 

Additionally, all variables are provided as outputs.
