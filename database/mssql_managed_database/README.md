# azurerm_mssql_managed_database

Manages an Azure SQL Azure Managed Database for a SQL Managed Instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Managed Database to create. Changing this forces a new resource to be created. | 
| **managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created. | 
| **long_term_retention_policy** | block | False | -  |  -  | A `long_term_retention_policy` block. | 
| **short_term_retention_days** | int | False | -  |  -  | The backup retention period in days. This is how many days Point-in-Time Restore will be supported. | 

