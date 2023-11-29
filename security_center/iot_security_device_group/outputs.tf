output "name" {
  value = azurerm_iot_security_device_group.this.name
}

output "iothub_id" {
  value = azurerm_iot_security_device_group.this.iothub_id
}

output "allow_rule" {
  value = azurerm_iot_security_device_group.this.allow_rule
}

output "range_rule" {
  value = azurerm_iot_security_device_group.this.range_rule
}

output "id" {
  description = "The ID of the Iot Security Device Group resource."
  value       = azurerm_iot_security_device_group.this.id
}

