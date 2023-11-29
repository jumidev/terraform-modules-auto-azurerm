output "name" {
  value = azurerm_web_pubsub_custom_certificate.this.name
}

output "web_pubsub_id" {
  value = azurerm_web_pubsub_custom_certificate.this.web_pubsub_id
}

output "custom_certificate_id" {
  value = azurerm_web_pubsub_custom_certificate.this.custom_certificate_id
}

output "id" {
  description = "The ID of the Web PubSub Custom Certificate."
  value       = azurerm_web_pubsub_custom_certificate.this.id
}

output "certificate_version" {
  description = "The certificate version of the Web PubSub Custom Certificate."
  value       = azurerm_web_pubsub_custom_certificate.this.certificate_version
}

