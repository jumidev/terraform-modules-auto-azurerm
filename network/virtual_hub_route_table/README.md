# azurerm_virtual_hub_route_table

Manages a Virtual Hub Route Table.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created. | 
| **labels** | string | False | -  |  -  | List of labels associated with this route table. | 
| **route** | block | False | -  |  -  | One or more `route` blocks. | 

