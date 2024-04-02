# azurerm_log_analytics_workspace_table



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_workspace_table"   
}

inputs = {
   name = "Specifies the name of a table in a Log Analytics Workspace..."   
   # workspace_id → set in component_inputs
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

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **plan** | string |  `Analytics`  |  `Analytics`, `Basic`  |  Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`. -> **Note:** The `name` of tables currently supported by the `Basic` plan can be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/basic-logs-configure?tabs=portal-1#supported-tables). | 
| **retention_in_days** | number |  -  |  `retention_in_days`, `plan`, `Basic`  |  The table's retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. -> **Note:** `retention_in_days` will revert back to the value of azurerm_log_analytics_workspace retention_in_days when a azurerm_log_analytics_workspace_table is deleted. -> **Note:** The `retention_in_days` cannot be specified when `plan` is `Basic` because the retention is fixed at eight days. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **retention_in_days** | number | No  | The table's data retention in days. | 
| **id** | string | No  | The Log Analytics Workspace Table ID. | 
| **workspace_id** | string | No  | The Workspace (or Customer) ID for the Log Analytics Workspace. | 

Additionally, all variables are provided as outputs.
