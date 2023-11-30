# azurerm_mssql_failover_group

Manages a Microsoft Azure SQL Failover Group.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_id** | string  | - | 
| **partner_server** | block  | - | 
| **databases** | string  | - | 
| **readonly_endpoint_failover_policy_enabled** | bool  | - | 
| **read_write_endpoint_failover_policy** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Failover Group. | 
| **partner_server** | block  | A `partner_server` block. | 
| **location** | string  | The location of the partner server. | 
| **role** | string  | The replication role of the partner server. Possible values include `Primary` or `Secondary`. | 
| **create** | string  | (Defaults to 30 minutes) Used when creating the Failover Group. | 
| **update** | datetime  | (Defaults to 30 minutes) Used when updating the Failover Group. | 
| **read** | string  | (Defaults to 5 minutes) Used when retrieving the Failover Group. | 
| **delete** | string  | (Defaults to 30 minutes) Used when deleting the Failover Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_failover_group" 
}

inputs = {
   name = "name of mssql_failover_group" 
   server_id = "server_id of mssql_failover_group" 
   partner_server = "partner_server of mssql_failover_group" 
   read_write_endpoint_failover_policy = "read_write_endpoint_failover_policy of mssql_failover_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```