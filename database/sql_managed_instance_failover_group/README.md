# azurerm_sql_managed_instance_failover_group

Manages a SQL Instance Failover Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_managed_instance_failover_group"   
}

inputs = {
   name = "The name which should be used for this SQL Instance Failover Group..."   
   # managed_instance_name → set in component_inputs
   location = "${location}"   
   # partner_managed_instance_id → set in component_inputs
   read_write_endpoint_failover_policy = {
      mode = "..."      
   }
   
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   managed_instance_name = "path/to/sql_server_component:name"   
   partner_managed_instance_id = "path/to/sql_managed_instance_component:id"   
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
| **name** | string |  The name which should be used for this SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **managed_instance_name** | string |  The name of the SQL Managed Instance which will be replicated using a SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **location** | string |  The Azure Region where the SQL Instance Failover Group exists. Changing this forces a new resource to be created. | 
| **partner_managed_instance_id** | string |  ID of the SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **read_write_endpoint_failover_policy** | [block](#read_write_endpoint_failover_policy-block-structure) |  A `read_write_endpoint_failover_policy` block. | 
| **resource_group_name** | string |  The name of the Resource Group where the SQL Instance Failover Group should exist. Changing this forces a new SQL Instance Failover Group to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **readonly_endpoint_failover_policy_enabled** | bool |  `True`  |  Failover policy for the read-only endpoint. Defaults to `true`. | 

### `read_write_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The failover mode. Possible values are 'Manual', 'Automatic' |
| `grace_minutes` | number | No | - | Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Instance Failover Group. | 
| **partner_region** | block | No  | A `partner_region` block. | 
| **role** | string | No  | The partner replication role of the SQL Instance Failover Group. | 
| **location** | string | No  | The Azure Region where the SQL Instance Failover Group partner exists. | 

Additionally, all variables are provided as outputs.
