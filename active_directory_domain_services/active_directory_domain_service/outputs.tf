output "domain_name" {
  value = azurerm_active_directory_domain_service.this.domain_name
}

output "domain_configuration_type" {
  value = azurerm_active_directory_domain_service.this.domain_configuration_type
}

output "filtered_sync_enabled" {
  value = azurerm_active_directory_domain_service.this.filtered_sync_enabled
}

output "secure_ldap" {
  value = azurerm_active_directory_domain_service.this.secure_ldap
}

output "location" {
  value = azurerm_active_directory_domain_service.this.location
}

output "name" {
  value = azurerm_active_directory_domain_service.this.name
}

output "notifications" {
  value = azurerm_active_directory_domain_service.this.notifications
}

output "initial_replica_set" {
  value = azurerm_active_directory_domain_service.this.initial_replica_set
}

output "resource_group_name" {
  value = azurerm_active_directory_domain_service.this.resource_group_name
}

output "security" {
  value = azurerm_active_directory_domain_service.this.security
}

output "sku" {
  value = azurerm_active_directory_domain_service.this.sku
}

output "tags" {
  value = azurerm_active_directory_domain_service.this.tags
}

output "tls_v1_enabled" {
  description = "Whether to enable legacy TLS v1 support. Defaults to 'false'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_active_directory_domain_service.this.tls_v1_enabled
}

output "id" {
  description = "A unique ID for the replica set."
  value       = azurerm_active_directory_domain_service.this.id
}

output "deployment_id" {
  description = "A unique ID for the managed domain deployment."
  value       = azurerm_active_directory_domain_service.this.deployment_id
}

output "resource_id" {
  description = "The Azure resource ID for the domain service."
  value       = azurerm_active_directory_domain_service.this.resource_id
}

output "certificate_expiry" {
  description = "The expiry time of the certificate."
  value       = azurerm_active_directory_domain_service.this.certificate_expiry
}

output "certificate_thumbprint" {
  description = "The thumbprint of the certificate."
  value       = azurerm_active_directory_domain_service.this.certificate_thumbprint
}

output "public_certificate" {
  description = "The public certificate."
  value       = azurerm_active_directory_domain_service.this.public_certificate
}

output "domain_controller_ip_addresses" {
  description = "A list of subnet IP addresses for the domain controllers in the initial replica set, typically two."
  value       = azurerm_active_directory_domain_service.this.domain_controller_ip_addresses
}

output "external_access_ip_address" {
  description = "The publicly routable IP address for the domain controllers in the initial replica set."
  value       = azurerm_active_directory_domain_service.this.external_access_ip_address
}

output "location" {
  description = "The Azure location in which the initialreplica set resides."
  value       = azurerm_active_directory_domain_service.this.location
}

output "service_status" {
  description = "The current service status for the initial replica set."
  value       = azurerm_active_directory_domain_service.this.service_status
}

