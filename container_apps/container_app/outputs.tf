output "container_app_environment_id" {
  value = azurerm_container_app.this.container_app_environment_id
}

output "name" {
  value = azurerm_container_app.this.name
}

output "resource_group_name" {
  value = azurerm_container_app.this.resource_group_name
}

output "revision_mode" {
  value = azurerm_container_app.this.revision_mode
}

output "template" {
  value = azurerm_container_app.this.template
}

output "dapr" {
  value = azurerm_container_app.this.dapr
}

output "identity" {
  value = azurerm_container_app.this.identity
}

output "ingress" {
  value = azurerm_container_app.this.ingress
}

output "registry" {
  value = azurerm_container_app.this.registry
}

output "secret" {
  value = azurerm_container_app.this.secret
}

output "workload_profile_name" {
  value = azurerm_container_app.this.workload_profile_name
}

output "tags" {
  value = azurerm_container_app.this.tags
}

output "id" {
  description = "The ID of the Container App."
  value       = azurerm_container_app.this.id
}

output "custom_domain_verification_id" {
  description = "The ID of the Custom Domain Verification for this Container App."
  value       = azurerm_container_app.this.custom_domain_verification_id
}

output "latest_revision_fqdn" {
  description = "The FQDN of the Latest Revision of the Container App."
  value       = azurerm_container_app.this.latest_revision_fqdn
}

output "latest_revision_name" {
  description = "The name of the latest Container Revision."
  value       = azurerm_container_app.this.latest_revision_name
}

output "location" {
  description = "The location this Container App is deployed in. This is the same as the Environment in which it is deployed."
  value       = azurerm_container_app.this.location
}

output "outbound_ip_addresses" {
  description = "A list of the Public IP Addresses which the Container App uses for outbound network access."
  value       = azurerm_container_app.this.outbound_ip_addresses
}

