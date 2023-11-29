output "name" {
  value = azurerm_iothub_dps_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_dps_certificate.this.resource_group_name
}

output "iot_dps_name" {
  value = azurerm_iothub_dps_certificate.this.iot_dps_name
}

output "certificate_content" {
  value = azurerm_iothub_dps_certificate.this.certificate_content
}

output "is_verified" {
  value = azurerm_iothub_dps_certificate.this.is_verified
}

output "id" {
  description = "The ID of the IoTHub Device Provisioning Service Certificate."
  value       = azurerm_iothub_dps_certificate.this.id
}

