# azurerm_mssql_managed_database

Manages an Azure SQL Azure Managed Database for a SQL Managed Instance.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Managed Database to create. Changing this forces a new resource to be created. | 
| **managed_instance_id** | string |  The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **long_term_retention_policy** | [block](#long_term_retention_policy-block-structure) |  A `long_term_retention_policy` block. | 
| **short_term_retention_days** | int |  The backup retention period in days. This is how many days Point-in-Time Restore will be supported. | 

### `long_term_retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekly_retention` | string | No | - | The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. 'P1Y', 'P1M', 'P1W' or 'P7D'. |
| `monthly_retention` | string | No | - | The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. 'P1Y', 'P1M', 'P4W' or 'P30D'. |
| `yearly_retention` | string | No | - | The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. 'P1Y', 'P12M', 'P52W' or 'P365D'. |
| `week_of_year` | string | No | - | The week of year to take the yearly backup. Value has to be between '1' and '52'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Azure SQL Managed Database ID. | 

Additionally, all variables are provided as outputs.
