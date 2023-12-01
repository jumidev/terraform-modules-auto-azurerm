# azurerm_sentinel_alert_rule_anomaly_built_in

Manages a Built-in Anomaly Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_anomaly_built_in" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_anomaly_built_in" 
   enabled = "enabled of sentinel_alert_rule_anomaly_built_in" 
   mode = "mode of sentinel_alert_rule_anomaly_built_in" 
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
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created. | 
| **enabled** | bool |  Should the Built-in Anomaly Alert Rule be enabled? | 
| **mode** | string |  mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The Name of the built-in Anomaly Alert Rule. | 
| **display_name** | string |  The Display Name of the built-in Anomaly Alert Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Built-in Anomaly Alert Rule. | 
| **anomaly_settings_version** | string | No  | The version of the Anomaly Security ML Analytics Settings. | 
| **anomaly_version** | string | No  | The anomaly version of the Anomaly Alert Rule. | 
| **description** | string | No  | The description of the threshold observation. | 
| **frequency** | string | No  | The frequency the Anomaly Alert Rule will be run. | 
| **required_data_connector** | block | No  | A `required_data_connector` block. | 
| **settings_definition_id** | string | No  | The ID of the anomaly settings definition Id. | 
| **tactics** | list | No  | A list of categories of attacks by which to classify the rule. | 
| **techniques** | list | No  | A list of techniques of attacks by which to classify the rule. | 
| **multi_select_observation** | block | No  | A list of `multi_select_observation` blocks. | 
| **single_select_observation** | block | No  | A list of `single_select_observation` blocks. | 
| **prioritized_exclude_observation** | block | No  | A list of `prioritized_exclude_observation` blocks. | 
| **threshold_observation** | block | No  | A list of `threshold_observation` blocks. | 
| **connector_id** | string | No  | The ID of the required Data Connector. | 
| **data_types** | list | No  | A list of data types of the required Data Connector. | 
| **name** | string | No  | The name of the threshold observation. | 
| **supported_values** | list | No  | A list of supported values of the single select observation. | 
| **values** | list | No  | A list of values of the single select observation. | 
| **value** | string | No  | The value of the threshold observation. | 
| **prioritize** | string | No  | The prioritized value per `description`. | 
| **exclude** | string | No  | The excluded value per `description`. | 
| **max** | string | No  | The max value of the threshold observation. | 
| **min** | string | No  | The min value of the threshold observation. | 

Additionally, all variables are provided as outputs.
