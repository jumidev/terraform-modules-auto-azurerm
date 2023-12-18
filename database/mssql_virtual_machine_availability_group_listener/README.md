# azurerm_mssql_virtual_machine_availability_group_listener

Manages a Microsoft SQL Virtual Machine Availability Group Listener.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_virtual_machine_availability_group_listener"   
}

inputs = {
   name = "The name which should be used for the Microsoft SQL Virtual Machine Availability..."   
   sql_virtual_machine_group_id = "The ID of the SQL Virtual Machine Group to create the listener..."   
   replica = {
      this_replica = {
         commit = "Possible values: Synchronous_Commit | Asynchronous_Commit"         
         failover_mode = "Possible values: Manual | Automatic"         
         readable_secondary = "Possible values: No | Read_Only | All"         
         role = "Possible values: Primary | Secondary"         
         sql_virtual_machine_id = "..."         
      }
      
   }
   
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
| **name** | string |  The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created. | 
| **sql_virtual_machine_group_id** | string |  The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created. | 
| **replica** | [block](#replica-block-structure) |  One or more `replica` blocks. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **availability_group_name** | string |  The name of the Availability Group. Changing this forces a new resource to be created. | 
| **load_balancer_configuration** | [block](#load_balancer_configuration-block-structure) |  A `load_balancer_configuration` block. Changing this forces a new resource to be created. | 
| **multi_subnet_ip_configuration** | [block](#multi_subnet_ip_configuration-block-structure) |  One or more `multi_subnet_ip_configuration` blocks. Changing this forces a new resource to be created. | 
| **port** | string |  The port of the listener. Changing this forces a new resource to be created. | 

### `load_balancer_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `load_balancer_id` | string | Yes | - | The ID of the Load Balancer. Changing this forces a new resource to be created. |
| `private_ip_address` | string | Yes | - | The private IP Address of the listener. Changing this forces a new resource to be created. |
| `probe_port` | string | Yes | - | The probe port of the listener. Changing this forces a new resource to be created. |
| `sql_virtual_machine_ids` | string | Yes | - | Specifies a list of SQL Virtual Machine IDs. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | The ID of the Subnet to create the listener. Changing this forces a new resource to be created. |

### `replica` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `commit` | string | Yes | - | The replica commit mode for the availability group. Possible values are 'Synchronous_Commit' and 'Asynchronous_Commit'. Changing this forces a new resource to be created. |
| `failover_mode` | string | Yes | - | The replica failover mode for the availability group. Possible values are 'Manual' and 'Automatic'. Changing this forces a new resource to be created. |
| `readable_secondary` | string | Yes | - | The replica readable secondary mode for the availability group. Possible values are 'No', 'Read_Only' and 'All'. Changing this forces a new resource to be created. |
| `role` | string | Yes | - | The replica role for the availability group. Possible values are 'Primary' and 'Secondary'. Changing this forces a new resource to be created. |
| `sql_virtual_machine_id` | string | Yes | - | The ID of the SQL Virtual Machine. Changing this forces a new resource to be created. |

### `multi_subnet_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_ip_address` | string | Yes | - | The private IP Address of the listener. Changing this forces a new resource to be created. |
| `sql_virtual_machine_id` | string | Yes | - | The ID of the Sql Virtual Machine. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | The ID of the Subnet to create the listener. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft SQL Virtual Machine Availability Group Listener. | 

Additionally, all variables are provided as outputs.
