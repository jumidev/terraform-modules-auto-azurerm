output "name" {
  value = azurerm_signalr_service_custom_domain.this.name
}

output "domain_name" {
  value = azurerm_signalr_service_custom_domain.this.domain_name
}

output "signalr_service_id" {
  value = azurerm_signalr_service_custom_domain.this.signalr_service_id
}

output "signalr_custom_certificate_id" {
  value = azurerm_signalr_service_custom_domain.this.signalr_custom_certificate_id
}

output "id" {
  description = "The ID of the SignalR Custom Domain."
  value       = azurerm_signalr_service_custom_domain.this.id
}

