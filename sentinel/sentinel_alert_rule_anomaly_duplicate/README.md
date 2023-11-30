# azurerm_sentinel_alert_rule_anomaly_duplicate

Manages a Duplicated Anomaly Alert Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_anomaly_duplicate" 
}

inputs = {
   display_name = "display_name of sentinel_alert_rule_anomaly_duplicate" 
   built_in_rule_id = "built_in_rule_id of sentinel_alert_rule_anomaly_duplicate" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_anomaly_duplicate" 
   enabled = "enabled of sentinel_alert_rule_anomaly_duplicate" 
   mode = "mode of sentinel_alert_rule_anomaly_duplicate" 
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
| **var.display_name** | string | True | The Display Name of the built-in Anomaly Alert Rule. | 
| **var.built_in_rule_id** | string | True | The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **var.enabled** | bool | True | Should the Duplicated Anomaly Alert Rule be enabled? | 
| **var.mode** | string | True | mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 
| **var.multi_select_observation** | block | False | A list of `multi_select_observation` blocks. | | `multi_select_observation` block structure: || 
|   name (string): (REQUIRED) The name of the multi select observation. ||
|   description (string): The description of the multi select observation. ||
|   supported_values (list): A list of supported values of the multi select observation. ||
|   values (list): (REQUIRED) A list of values of the multi select observation. ||

| **var.single_select_observation** | block | False | A list of `single_select_observation` blocks. | | `single_select_observation` block structure: || 
|   name (string): (REQUIRED) The name of the single select observation. ||
|   description (string): The description of the single select observation. ||
|   supported_values (list): A list of supported values of the single select observation. ||
|   value (string): (REQUIRED) The value of the multi select observation. ||

| **var.prioritized_exclude_observation** | block | False | A list of `prioritized_exclude_observation` blocks. | | `prioritized_exclude_observation` block structure: || 
|   name (string): (REQUIRED) The name of the prioritized exclude observation. ||
|   description (string): The description of the prioritized exclude observation. ||
|   prioritize (string): The prioritized value per 'description'. ||
|   exclude (string): The excluded value per 'description'. ||

| **var.threshold_observation** | block | False | A list of `threshold_observation` blocks. | | `threshold_observation` block structure: || 
|   name (string): (REQUIRED) The name of the threshold observation. ||
|   description (string): The description of the threshold observation. ||
|   max (string): The max value of the threshold observation. ||
|   min (string): The min value of the threshold observation. ||
|   value (string): (REQUIRED) The value of the threshold observation. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Built-in Anomaly Alert Rule. | 
| **anomaly_settings_version** | string | No  | The version of the Anomaly Security ML Analytics Settings. | 
| **anomaly_version** | string | No  | The anomaly version of the Anomaly Alert Rule. | 
| **description** | string | No  | The description of the Anomaly Alert Rule. | 
| **frequency** | string | No  | The frequency the Anomaly Alert Rule will be run, such as "P1D". | 
| **is_default_settings** | bool | No  | Whether the current settings of the Anomaly Alert Rule equals default settings. | 
| **required_data_connector** | block | No  | A `required_data_connector` block. | 
| **settings_definition_id** | string | No  | The ID of the anomaly settings definition Id. | 
| **tactics** | list | No  | A list of categories of attacks by which to classify the rule. | 
| **techniques** | list | No  | A list of techniques of attacks by which to classify the rule. | 
| **connector_id** | string | No  | The ID of the required Data Connector. | 
| **data_types** | list | No  | A list of data types of the required Data Connector. | 

Additionally, all variables are provided as outputs.
