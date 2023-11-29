output "name" {
  value = azurerm_mobile_network_service.this.name
}

output "mobile_network_id" {
  value = azurerm_mobile_network_service.this.mobile_network_id
}

output "location" {
  value = azurerm_mobile_network_service.this.location
}

output "service_precedence" {
  value = azurerm_mobile_network_service.this.service_precedence
}

output "pcc_rule" {
  value = azurerm_mobile_network_service.this.pcc_rule
}

output "service_qos_policy" {
  value = azurerm_mobile_network_service.this.service_qos_policy
}

output "tags" {
  value = azurerm_mobile_network_service.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Service."
  value       = azurerm_mobile_network_service.this.id
}

