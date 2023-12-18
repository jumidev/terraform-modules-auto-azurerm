# azurerm_sql_failover_group

Create a failover group of databases on a collection of Azure SQL servers.-> **Note:** The `azurerm_sql_failover_group` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_failover_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_failover_group) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_failover_group"   
}

inputs = {
   name = "The name of the failover group"   
   resource_group_name = "${resource_group}"   
   # server_name → set in tfstate_inputs
   partner_servers = {
      this_partner_servers = {
      }
      
   }
   
   read_write_endpoint_failover_policy = {
      mode = "..."      
   }
   
}

tfstate_inputs = {
   server_name = "path/to/sql_server_component:name"   
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
| **name** | string |  The name of the failover group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group containing the SQL server Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the primary SQL server. Changing this forces a new resource to be created. | 
| **partner_servers** | [block](#partner_servers-block-structure) |  A list of `partner_servers` blocks. | 
| **read_write_endpoint_failover_policy** | [block](#read_write_endpoint_failover_policy-block-structure) |  A `read_write_endpoint_failover_policy` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **databases** | list |  A list of database ids to add to the failover group | 
| **readonly_endpoint_failover_policy** | [block](#readonly_endpoint_failover_policy-block-structure) |  A `readonly_endpoint_failover_policy` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `partner_servers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |

### `readonly_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | Failover policy for the read-only endpoint. Possible values are 'Enabled', and 'Disabled' |

### `read_write_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | the failover mode. Possible values are 'Manual', 'Automatic' |
| `grace_minutes` | number | No | - | Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The failover group ID. | 
| **location** | string | No  | the location of the failover group. | 
| **server_name** | string | No  | the name of the primary SQL Database Server. Changing this forces a new resource to be created. | 
| **role** | string | No  | local replication role of the failover group instance. | 
| **databases** | string | No  | list of databases in the failover group. | 
| **partner_servers** | string | No  | list of partner server information for the failover group. | 

Additionally, all variables are provided as outputs.
