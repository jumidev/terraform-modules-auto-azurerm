# azurerm_sentinel_alert_rule_anomaly_duplicate

Manages a Duplicated Anomaly Alert Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.display_name** | string | True | -  |  -  | The Display Name of the built-in Anomaly Alert Rule. | 
| **var.built_in_rule_id** | string | True | -  |  -  | The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **var.enabled** | bool | True | -  |  -  | Should the Duplicated Anomaly Alert Rule be enabled? | 
| **var.mode** | string | True | -  |  -  | mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 
| **var.multi_select_observation** | block | False | -  |  -  | A list of `multi_select_observation` blocks. | 
| **var.single_select_observation** | block | False | -  |  -  | A list of `single_select_observation` blocks. | 
| **var.prioritized_exclude_observation** | block | False | -  |  -  | A list of `prioritized_exclude_observation` blocks. | 
| **var.threshold_observation** | block | False | -  |  -  | A list of `threshold_observation` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **display_name** | string  | - | 
| **built_in_rule_id** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **enabled** | bool  | - | 
| **mode** | string  | - | 
| **multi_select_observation** | block  | - | 
| **single_select_observation** | block  | - | 
| **prioritized_exclude_observation** | block  | - | 
| **threshold_observation** | block  | - | 
| **id** | string  | The ID of the Built-in Anomaly Alert Rule. | 
| **anomaly_settings_version** | string  | The version of the Anomaly Security ML Analytics Settings. | 
| **anomaly_version** | string  | The anomaly version of the Anomaly Alert Rule. | 
| **description** | string  | The description of the Anomaly Alert Rule. | 
| **frequency** | string  | The frequency the Anomaly Alert Rule will be run, such as "P1D". | 
| **is_default_settings** | bool  | Whether the current settings of the Anomaly Alert Rule equals default settings. | 
| **required_data_connector** | block  | A `required_data_connector` block. | 
| **settings_definition_id** | string  | The ID of the anomaly settings definition Id. | 
| **tactics** | list  | A list of categories of attacks by which to classify the rule. | 
| **techniques** | list  | A list of techniques of attacks by which to classify the rule. | 
| **connector_id** | string  | The ID of the required Data Connector. | 
| **data_types** | list  | A list of data types of the required Data Connector. | 