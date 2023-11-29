output "name" {
  value = azurerm_web_pubsub.this.name
}

output "resource_group_name" {
  value = azurerm_web_pubsub.this.resource_group_name
}

output "location" {
  value = azurerm_web_pubsub.this.location
}

output "sku" {
  value = azurerm_web_pubsub.this.sku
}

output "capacity" {
  value = azurerm_web_pubsub.this.capacity
}

output "public_network_access_enabled" {
  value = azurerm_web_pubsub.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_web_pubsub.this.tags
}

output "live_trace" {
  value = azurerm_web_pubsub.this.live_trace
}

output "identity" {
  value = azurerm_web_pubsub.this.identity
}

output "local_auth_enabled" {
  value = azurerm_web_pubsub.this.local_auth_enabled
}

output "aad_auth_enabled" {
  value = azurerm_web_pubsub.this.aad_auth_enabled
}

output "tls_client_cert_enabled" {
  value = azurerm_web_pubsub.this.tls_client_cert_enabled
}

output "id" {
  description = "The ID of the Web PubSub service."
  value       = azurerm_web_pubsub.this.id
}

output "hostname" {
  description = "The FQDN of the Web PubSub service."
  value       = azurerm_web_pubsub.this.hostname
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_web_pubsub.this.identity
}

output "external_ip" {
  description = "The publicly accessible IP of the Web PubSub service."
  value       = azurerm_web_pubsub.this.external_ip
}

output "public_port" {
  description = "The publicly accessible port of the Web PubSub service which is designed for browser/client use."
  value       = azurerm_web_pubsub.this.public_port
}

output "server_port" {
  description = "The publicly accessible port of the Web PubSub service which is designed for customer server side use."
  value       = azurerm_web_pubsub.this.server_port
}

output "primary_access_key" {
  description = "The primary access key for the Web PubSub service."
  value       = azurerm_web_pubsub.this.primary_access_key
}

output "primary_connection_string" {
  description = "The primary connection string for the Web PubSub service."
  value       = azurerm_web_pubsub.this.primary_connection_string
}

output "secondary_access_key" {
  description = "The secondary access key for the Web PubSub service."
  value       = azurerm_web_pubsub.this.secondary_access_key
}

output "secondary_connection_string" {
  description = "The secondary connection string for the Web PubSub service."
  value       = azurerm_web_pubsub.this.secondary_connection_string
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_web_pubsub.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_web_pubsub.this.tenant_id
}

