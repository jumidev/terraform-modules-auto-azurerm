# azurerm_sql_managed_database

Manages a SQL Azure Managed Database.-> **Note:** The `azurerm_sql_managed_database` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_managed_database`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_database) resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.sql_managed_instance_id** | string | True | The SQL Managed Instance ID that this Managed Database will be associated with. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **sql_managed_instance_id** | string  | - | 
| **location** | string  | - | 