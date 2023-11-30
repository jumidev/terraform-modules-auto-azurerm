# azurerm_sql_managed_database

Manages a SQL Azure Managed Database.-> **Note:** The `azurerm_sql_managed_database` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_managed_database`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_database) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_managed_database" 
}

inputs = {
   name = "name of sql_managed_database" 
   sql_managed_instance_id = "sql_managed_instance_id of sql_managed_database" 
   location = "${location}" 
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
| **var.name** | string |  The name of the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.sql_managed_instance_id** | string |  The SQL Managed Instance ID that this Managed Database will be associated with. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
