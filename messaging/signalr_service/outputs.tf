output "name" {
  value = azurerm_signalr_service.this.name
}

output "resource_group_name" {
  value = azurerm_signalr_service.this.resource_group_name
}

output "location" {
  value = azurerm_signalr_service.this.location
}

output "sku" {
  value = azurerm_signalr_service.this.sku
}

output "cors" {
  value = azurerm_signalr_service.this.cors
}

output "connectivity_logs_enabled" {
  value = azurerm_signalr_service.this.connectivity_logs_enabled
}

output "messaging_logs_enabled" {
  value = azurerm_signalr_service.this.messaging_logs_enabled
}

output "http_request_logs_enabled" {
  value = azurerm_signalr_service.this.http_request_logs_enabled
}

output "live_trace_enabled" {
  value = azurerm_signalr_service.this.live_trace_enabled
}

output "identity" {
  value = azurerm_signalr_service.this.identity
}

output "public_network_access_enabled" {
  value = azurerm_signalr_service.this.public_network_access_enabled
}

output "local_auth_enabled" {
  value = azurerm_signalr_service.this.local_auth_enabled
}

output "aad_auth_enabled" {
  value = azurerm_signalr_service.this.aad_auth_enabled
}

output "tls_client_cert_enabled" {
  value = azurerm_signalr_service.this.tls_client_cert_enabled
}

output "serverless_connection_timeout_in_seconds" {
  value = azurerm_signalr_service.this.serverless_connection_timeout_in_seconds
}

output "service_mode" {
  value = azurerm_signalr_service.this.service_mode
}

output "upstream_endpoint" {
  value = azurerm_signalr_service.this.upstream_endpoint
}

output "live_trace" {
  value = azurerm_signalr_service.this.live_trace
}

output "tags" {
  value = azurerm_signalr_service.this.tags
}

output "id" {
  description = "The ID of the SignalR service."
  value       = azurerm_signalr_service.this.id
}

output "hostname" {
  description = "The FQDN of the SignalR service."
  value       = azurerm_signalr_service.this.hostname
}

output "ip_address" {
  description = "The publicly accessible IP of the SignalR service."
  value       = azurerm_signalr_service.this.ip_address
}

output "public_port" {
  description = "The publicly accessible port of the SignalR service which is designed for browser/client use."
  value       = azurerm_signalr_service.this.public_port
}

output "server_port" {
  description = "The publicly accessible port of the SignalR service which is designed for customer server side use."
  value       = azurerm_signalr_service.this.server_port
}

output "primary_access_key" {
  description = "The primary access key for the SignalR service."
  value       = azurerm_signalr_service.this.primary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "The primary connection string for the SignalR service."
  value       = azurerm_signalr_service.this.primary_connection_string
}

output "secondary_access_key" {
  description = "The secondary access key for the SignalR service."
  value       = azurerm_signalr_service.this.secondary_access_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The secondary connection string for the SignalR service."
  value       = azurerm_signalr_service.this.secondary_connection_string
}

