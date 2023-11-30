# azurerm_sentinel_alert_rule_anomaly_built_in

Manages a Built-in Anomaly Alert Rule.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | False | The Name of the built-in Anomaly Alert Rule. | 
| **var.display_name** | string | False | The Display Name of the built-in Anomaly Alert Rule. | 
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created. | 
| **var.enabled** | bool | True | Should the Built-in Anomaly Alert Rule be enabled? | 
| **var.mode** | string | True | mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **enabled** | bool  | - | 
| **mode** | string  | - | 
| **id** | string  | The ID of the Built-in Anomaly Alert Rule. | 
| **anomaly_settings_version** | string  | The version of the Anomaly Security ML Analytics Settings. | 
| **anomaly_version** | string  | The anomaly version of the Anomaly Alert Rule. | 
| **description** | string  | The description of the threshold observation. | 
| **frequency** | string  | The frequency the Anomaly Alert Rule will be run. | 
| **required_data_connector** | block  | A `required_data_connector` block. | 
| **settings_definition_id** | string  | The ID of the anomaly settings definition Id. | 
| **tactics** | list  | A list of categories of attacks by which to classify the rule. | 
| **techniques** | list  | A list of techniques of attacks by which to classify the rule. | 
| **multi_select_observation** | block  | A list of `multi_select_observation` blocks. | 
| **single_select_observation** | block  | A list of `single_select_observation` blocks. | 
| **prioritized_exclude_observation** | block  | A list of `prioritized_exclude_observation` blocks. | 
| **threshold_observation** | block  | A list of `threshold_observation` blocks. | 
| **connector_id** | string  | The ID of the required Data Connector. | 
| **data_types** | list  | A list of data types of the required Data Connector. | 
| **name** | string  | The name of the threshold observation. | 
| **supported_values** | list  | A list of supported values of the single select observation. | 
| **values** | list  | A list of values of the single select observation. | 
| **value** | string  | The value of the threshold observation. | 
| **prioritize** | string  | The prioritized value per `description`. | 
| **exclude** | string  | The excluded value per `description`. | 
| **max** | string  | The max value of the threshold observation. | 
| **min** | string  | The min value of the threshold observation. | 

## Example minimal hclt

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