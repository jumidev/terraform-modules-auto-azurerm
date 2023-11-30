# azurerm_sql_failover_group

Create a failover group of databases on a collection of Azure SQL servers.-> **Note:** The `azurerm_sql_failover_group` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_failover_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_failover_group) resource instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_failover_group" 
}

inputs = {
   name = "name of sql_failover_group" 
   resource_group_name = "${resource_group}" 
   server_name = "server_name of sql_failover_group" 
   partner_servers = "partner_servers of sql_failover_group" 
   read_write_endpoint_failover_policy = "read_write_endpoint_failover_policy of sql_failover_group" 
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
| **var.name** | string | True | The name of the failover group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group containing the SQL server Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | The name of the primary SQL server. Changing this forces a new resource to be created. | 
| **var.databases** | list | False | A list of database ids to add to the failover group | 
| **var.partner_servers** | block | True | A list of `partner_servers` blocks. | 
| **var.read_write_endpoint_failover_policy** | block | True | A `read_write_endpoint_failover_policy` block. | 
| **var.readonly_endpoint_failover_policy** | block | False | A `readonly_endpoint_failover_policy` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



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
