# azurerm_mssql_virtual_machine_availability_group_listener

Manages a Microsoft SQL Virtual Machine Availability Group Listener.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created. | 
| **sql_virtual_machine_group_id** | string | True | -  |  -  | The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created. | 
| **availability_group_name** | string | False | -  |  -  | The name of the Availability Group. Changing this forces a new resource to be created. | 
| **load_balancer_configuration** | block | False | -  |  -  | A `load_balancer_configuration` block. Changing this forces a new resource to be created. | 
| **multi_subnet_ip_configuration** | block | False | -  |  -  | One or more `multi_subnet_ip_configuration` blocks. Changing this forces a new resource to be created. | 
| **port** | string | False | -  |  -  | The port of the listener. Changing this forces a new resource to be created. | 
| **replica** | block | True | -  |  -  | One or more `replica` blocks. Changing this forces a new resource to be created. | 

