output "display_name" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.display_name
}

output "built_in_rule_id" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.built_in_rule_id
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.log_analytics_workspace_id
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.enabled
}

output "mode" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.mode
}

output "multi_select_observation" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.multi_select_observation
}

output "single_select_observation" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.single_select_observation
}

output "prioritized_exclude_observation" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.prioritized_exclude_observation
}

output "threshold_observation" {
  value = azurerm_sentinel_alert_rule_anomaly_duplicate.this.threshold_observation
}

output "id" {
  description = "The ID of the Built-in Anomaly Alert Rule."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.id
}

output "anomaly_settings_version" {
  description = "The version of the Anomaly Security ML Analytics Settings."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.anomaly_settings_version
}

output "anomaly_version" {
  description = "The anomaly version of the Anomaly Alert Rule."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.anomaly_version
}

output "description" {
  description = "The description of the Anomaly Alert Rule."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.description
}

output "frequency" {
  description = "The frequency the Anomaly Alert Rule will be run, such as 'P1D'."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.frequency
}

output "is_default_settings" {
  description = "Whether the current settings of the Anomaly Alert Rule equals default settings."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.is_default_settings
}

output "required_data_connector" {
  description = "A 'required_data_connector' block."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.required_data_connector
}

output "settings_definition_id" {
  description = "The ID of the anomaly settings definition Id."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.settings_definition_id
}

output "tactics" {
  description = "A list of categories of attacks by which to classify the rule."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.tactics
}

output "techniques" {
  description = "A list of techniques of attacks by which to classify the rule."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.techniques
}

output "connector_id" {
  description = "The ID of the required Data Connector."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.connector_id
}

output "data_types" {
  description = "A list of data types of the required Data Connector."
  value       = azurerm_sentinel_alert_rule_anomaly_duplicate.this.data_types
}

