output "configuration_store_id" {
  value = azurerm_app_configuration_feature.this.configuration_store_id
}

output "description" {
  value = azurerm_app_configuration_feature.this.description
}

output "enabled" {
  value = azurerm_app_configuration_feature.this.enabled
}

output "key" {
  value = azurerm_app_configuration_feature.this.key
}

output "label" {
  value = azurerm_app_configuration_feature.this.label
}

output "locked" {
  value = azurerm_app_configuration_feature.this.locked
}

output "name" {
  value = azurerm_app_configuration_feature.this.name
}

output "percentage_filter_value" {
  value = azurerm_app_configuration_feature.this.percentage_filter_value
}

output "tags" {
  value = azurerm_app_configuration_feature.this.tags
}

output "targeting_filter" {
  value = azurerm_app_configuration_feature.this.targeting_filter
}

output "timewindow_filter" {
  value = azurerm_app_configuration_feature.this.timewindow_filter
}

output "id" {
  description = "The App Configuration Feature ID."
  value       = azurerm_app_configuration_feature.this.id
}

