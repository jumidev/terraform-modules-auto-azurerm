# azurerm_log_analytics_workspace_table

Manages a Table in a Log Analytics (formally Operational Insights) Workspace.~> **Note:** This resource does not create or destroy tables. This resource is used to update attributes (currently only retention_in_days) of the tables created when a Log Analytics Workspace is created. Deleting an azurerm_log_analytics_workspace_table resource will not delete the table. Instead, the table's retention_in_days field will be set to the value of azurerm_log_analytics_workspace retention_in_days

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_workspace_table"   
}

inputs = {
   name = "Specifies the name of a table in a Log Analytics Workspace..."   
   # workspace_id → set in component_inputs
   retention_in_days = "The table's retention in days"   
}

component_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  Specifies the name of a table in a Log Analytics Workspace. | 
| **workspace_id** | string |  The object ID of the Log Analytics Workspace that contains the table. | 
| **retention_in_days** | string |  The table's retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Log Analytics Workspace Table ID. | 
| **workspace_id** | string | No  | The Workspace (or Customer) ID for the Log Analytics Workspace. | 
| **retention_in_days** | number | No  | The table's data retention in days. | 

Additionally, all variables are provided as outputs.
