# azurerm_mssql_managed_database

Manages an Azure SQL Azure Managed Database for a SQL Managed Instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_database" 
}

inputs = {
   name = "name of mssql_managed_database" 
   managed_instance_id = "managed_instance_id of mssql_managed_database" 
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
| **var.name** | string | True | The name of the Managed Database to create. Changing this forces a new resource to be created. | 
| **var.managed_instance_id** | string | True | The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created. | 
| **var.long_term_retention_policy** | block | False | A `long_term_retention_policy` block. | 
| **var.short_term_retention_days** | int | False | The backup retention period in days. This is how many days Point-in-Time Restore will be supported. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Azure SQL Managed Database ID. | 

Additionally, all variables are provided as outputs.
