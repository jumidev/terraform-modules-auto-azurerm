output "name" {
  value = azurerm_web_pubsub_custom_domain.this.name
}

output "domain_name" {
  value = azurerm_web_pubsub_custom_domain.this.domain_name
}

output "web_pubsub_id" {
  value = azurerm_web_pubsub_custom_domain.this.web_pubsub_id
}

output "web_pubsub_custom_certificate_id" {
  value = azurerm_web_pubsub_custom_domain.this.web_pubsub_custom_certificate_id
}

output "id" {
  description = "The ID of the Web PubSub Custom Domain."
  value       = azurerm_web_pubsub_custom_domain.this.id
}

