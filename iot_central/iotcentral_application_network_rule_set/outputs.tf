output "iotcentral_application_id" {
  value = azurerm_iotcentral_application_network_rule_set.this.iotcentral_application_id
}

output "apply_to_device" {
  value = azurerm_iotcentral_application_network_rule_set.this.apply_to_device
}

output "default_action" {
  value = azurerm_iotcentral_application_network_rule_set.this.default_action
}

output "ip_rule" {
  value = azurerm_iotcentral_application_network_rule_set.this.ip_rule
}

output "id" {
  description = "The ID of the IoT Central Application Network Rule Set."
  value       = azurerm_iotcentral_application_network_rule_set.this.id
}

