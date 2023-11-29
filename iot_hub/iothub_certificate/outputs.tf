output "name" {
  value = azurerm_iothub_certificate.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_certificate.this.resource_group_name
}

output "iothub_name" {
  value = azurerm_iothub_certificate.this.iothub_name
}

output "certificate_content" {
  value = azurerm_iothub_certificate.this.certificate_content
}

output "is_verified" {
  value = azurerm_iothub_certificate.this.is_verified
}

output "id" {
  description = "The ID of the IoTHub Certificate."
  value       = azurerm_iothub_certificate.this.id
}

