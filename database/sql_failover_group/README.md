# azurerm_sql_failover_group

Create a failover group of databases on a collection of Azure SQL servers.-> **Note:** The `azurerm_sql_failover_group` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_failover_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_failover_group) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the failover group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group containing the SQL server Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | The name of the primary SQL server. Changing this forces a new resource to be created. | 
| **databases** | list | False | -  |  -  | A list of database ids to add to the failover group | 
| **partner_servers** | block | True | -  |  -  | A list of `partner_servers` blocks. | 
| **read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **readonly_endpoint_failover_policy** | block | False | -  |  -  | A `readonly_endpoint_failover_policy` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

