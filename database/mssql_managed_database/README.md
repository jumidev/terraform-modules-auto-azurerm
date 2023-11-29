# azurerm_mssql_managed_database

Manages an Azure SQL Azure Managed Database for a SQL Managed Instance.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Managed Database to create. Changing this forces a new resource to be created. | 
| **var.managed_instance_id** | string | True | The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created. | 
| **var.long_term_retention_policy** | block | False | A `long_term_retention_policy` block. | 
| **var.short_term_retention_days** | int | False | The backup retention period in days. This is how many days Point-in-Time Restore will be supported. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **managed_instance_id** | string  | - | 
| **long_term_retention_policy** | block  | - | 
| **short_term_retention_days** | int  | - | 
| **id** | string  | The Azure SQL Managed Database ID. | 