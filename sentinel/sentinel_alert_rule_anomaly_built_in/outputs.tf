output "name" {
  value = azurerm_sentinel_alert_rule_anomaly_built_in.this.name
}

output "display_name" {
  value = azurerm_sentinel_alert_rule_anomaly_built_in.this.display_name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_anomaly_built_in.this.log_analytics_workspace_id
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_anomaly_built_in.this.enabled
}

output "mode" {
  value = azurerm_sentinel_alert_rule_anomaly_built_in.this.mode
}

output "id" {
  description = "The ID of the Built-in Anomaly Alert Rule."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.id
}

output "anomaly_settings_version" {
  description = "The version of the Anomaly Security ML Analytics Settings."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.anomaly_settings_version
}

output "anomaly_version" {
  description = "The anomaly version of the Anomaly Alert Rule."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.anomaly_version
}

output "description" {
  description = "The description of the threshold observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.description
}

output "frequency" {
  description = "The frequency the Anomaly Alert Rule will be run."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.frequency
}

output "required_data_connector" {
  description = "A 'required_data_connector' block."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.required_data_connector
}

output "settings_definition_id" {
  description = "The ID of the anomaly settings definition Id."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.settings_definition_id
}

output "tactics" {
  description = "A list of categories of attacks by which to classify the rule."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.tactics
}

output "techniques" {
  description = "A list of techniques of attacks by which to classify the rule."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.techniques
}

output "multi_select_observation" {
  description = "A list of 'multi_select_observation' blocks."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.multi_select_observation
}

output "single_select_observation" {
  description = "A list of 'single_select_observation' blocks."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.single_select_observation
}

output "prioritized_exclude_observation" {
  description = "A list of 'prioritized_exclude_observation' blocks."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.prioritized_exclude_observation
}

output "threshold_observation" {
  description = "A list of 'threshold_observation' blocks."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.threshold_observation
}

output "connector_id" {
  description = "The ID of the required Data Connector."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.connector_id
}

output "data_types" {
  description = "A list of data types of the required Data Connector."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.data_types
}

output "name" {
  description = "The name of the threshold observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.name
}

output "supported_values" {
  description = "A list of supported values of the single select observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.supported_values
}

output "values" {
  description = "A list of values of the single select observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.values
}

output "value" {
  description = "The value of the threshold observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.value
}

output "prioritize" {
  description = "The prioritized value per 'description'."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.prioritize
}

output "exclude" {
  description = "The excluded value per 'description'."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.exclude
}

output "max" {
  description = "The max value of the threshold observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.max
}

output "min" {
  description = "The min value of the threshold observation."
  value       = azurerm_sentinel_alert_rule_anomaly_built_in.this.min
}

