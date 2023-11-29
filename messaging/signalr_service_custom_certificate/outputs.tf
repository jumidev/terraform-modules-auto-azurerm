output "name" {
  value = azurerm_signalr_service_custom_certificate.this.name
}

output "signalr_service_id" {
  value = azurerm_signalr_service_custom_certificate.this.signalr_service_id
}

output "custom_certificate_id" {
  value = azurerm_signalr_service_custom_certificate.this.custom_certificate_id
}

output "id" {
  description = "The ID of the SignalR Custom Certificate."
  value       = azurerm_signalr_service_custom_certificate.this.id
}

output "certificate_version" {
  description = "The certificate version of the SignalR Custom Certificate service."
  value       = azurerm_signalr_service_custom_certificate.this.certificate_version
}

