# azurerm_mssql_virtual_machine_availability_group_listener

Manages a Microsoft SQL Virtual Machine Availability Group Listener.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_virtual_machine_availability_group_listener" 
}

inputs = {
   name = "name of mssql_virtual_machine_availability_group_listener" 
   sql_virtual_machine_group_id = "sql_virtual_machine_group_id of mssql_virtual_machine_availability_group_listener" 
   replica = "replica of mssql_virtual_machine_availability_group_listener" 
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
| **var.name** | string | True | The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created. | 
| **var.sql_virtual_machine_group_id** | string | True | The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created. | 
| **var.availability_group_name** | string | False | The name of the Availability Group. Changing this forces a new resource to be created. | 
| **var.load_balancer_configuration** | block | False | A `load_balancer_configuration` block. Changing this forces a new resource to be created. | 
| **var.multi_subnet_ip_configuration** | block | False | One or more `multi_subnet_ip_configuration` blocks. Changing this forces a new resource to be created. | 
| **var.port** | string | False | The port of the listener. Changing this forces a new resource to be created. | 
| **var.replica** | block | True | One or more `replica` blocks. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft SQL Virtual Machine Availability Group Listener. | 

Additionally, all variables are provided as outputs.
