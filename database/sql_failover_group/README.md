# azurerm_sql_failover_group

Create a failover group of databases on a collection of Azure SQL servers.-> **Note:** The `azurerm_sql_failover_group` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_failover_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_failover_group) resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the failover group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group containing the SQL server Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | The name of the primary SQL server. Changing this forces a new resource to be created. | 
| **var.databases** | list | False | A list of database ids to add to the failover group | 
| **var.partner_servers** | block | True | A list of `partner_servers` blocks. | 
| **var.read_write_endpoint_failover_policy** | block | True | A `read_write_endpoint_failover_policy` block. | 
| **var.readonly_endpoint_failover_policy** | block | False | A `readonly_endpoint_failover_policy` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **server_name** | string  | - | 
| **databases** | list  | - | 
| **partner_servers** | block  | - | 
| **read_write_endpoint_failover_policy** | block  | - | 
| **readonly_endpoint_failover_policy** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The failover group ID. | 
| **location** | string  | the location of the failover group. | 
| **server_name** | string  | the name of the primary SQL Database Server. Changing this forces a new resource to be created. | 
| **role** | string  | local replication role of the failover group instance. | 
| **databases** | string  | list of databases in the failover group. | 
| **partner_servers** | string  | list of partner server information for the failover group. | 