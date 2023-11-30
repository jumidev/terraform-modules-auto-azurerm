# azurerm_virtual_hub_route_table

Manages a Virtual Hub Route Table.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 
| **var.labels** | string | False | List of labels associated with this route table. | 
| **var.route** | block | False | One or more `route` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **labels** | string  | - | 
| **route** | block  | - | 
| **id** | string  | The ID of the Virtual Hub Route Table. | 

## Example minimal hclt

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