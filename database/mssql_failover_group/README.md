# azurerm_mssql_failover_group

Manages a Microsoft Azure SQL Failover Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_failover_group" 
}

inputs = {
   name = "name of mssql_failover_group" 
   server_id = "server_id of mssql_failover_group" 
   partner_server = {
      example_partner_server = {
      }
  
   }
 
   read_write_endpoint_failover_policy = {
      example_read_write_endpoint_failover_policy = {
         mode = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Failover Group. Changing this forces a new resource to be created. | 
| **var.server_id** | string | True | -  |  The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created. | 
| **var.partner_server** | block | True | -  |  A `partner_server` block. | 
| **var.databases** | string | False | -  |  A set of database names to include in the failover group. | 
| **var.readonly_endpoint_failover_policy_enabled** | bool | False | `False`  |  Whether failover is enabled for the readonly endpoint. Defaults to `false`. | 
| **var.read_write_endpoint_failover_policy** | block | True | -  |  A `read_write_endpoint_failover_policy` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `partner_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |

### `read_write_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The failover policy of the read-write endpoint for the failover group. Possible values are 'Automatic' or 'Manual'. |
| `grace_minutes` | int | No | - | The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when 'mode' is 'Automatic'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Failover Group. | 
| **partner_server** | block | No  | A `partner_server` block. | 
| **location** | string | No  | The location of the partner server. | 
| **role** | string | No  | The replication role of the partner server. Possible values include `Primary` or `Secondary`. | 
| **create** | string | No  | (Defaults to 30 minutes) Used when creating the Failover Group. | 
| **update** | datetime | No  | (Defaults to 30 minutes) Used when updating the Failover Group. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Failover Group. | 
| **delete** | string | No  | (Defaults to 30 minutes) Used when deleting the Failover Group. | 

Additionally, all variables are provided as outputs.
