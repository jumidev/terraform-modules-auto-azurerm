# azurerm_virtual_hub_route_table

Manages a Virtual Hub Route Table.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 
| **var.labels** | string | False | -  |  -  | List of labels associated with this route table. | 
| **var.route** | block | False | -  |  -  | One or more `route` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **labels** | string  | - | 
| **route** | block  | - | 
| **id** | string  | The ID of the Virtual Hub Route Table. | 