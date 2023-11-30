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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 
| **var.labels** | string | False | List of labels associated with this route table. | 
| **var.route** | block | False | One or more `route` blocks. | 

### `route` block structure

>`name` (string): (REQUIRED) The name which should be used for this route.
>`destinations` (list): (REQUIRED) A list of destination addresses for this route.
>`destinations_type` (string): (REQUIRED) The type of destinations. Possible values are 'CIDR', 'ResourceId' and 'Service'.
>`next_hop` (string): (REQUIRED) The next hop's resource ID.
>`next_hop_type` (string): The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Route Table. | 

Additionally, all variables are provided as outputs.
