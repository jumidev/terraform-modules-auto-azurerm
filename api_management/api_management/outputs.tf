output "name" {
  value = azurerm_api_management.this.name
}

output "location" {
  value = azurerm_api_management.this.location
}

output "resource_group_name" {
  value = azurerm_api_management.this.resource_group_name
}

output "publisher_name" {
  value = azurerm_api_management.this.publisher_name
}

output "publisher_email" {
  value = azurerm_api_management.this.publisher_email
}

output "sku_name" {
  value = azurerm_api_management.this.sku_name
}

output "additional_location" {
  value = azurerm_api_management.this.additional_location
}

output "certificate" {
  value = azurerm_api_management.this.certificate
}

output "client_certificate_enabled" {
  value = azurerm_api_management.this.client_certificate_enabled
}

output "delegation" {
  value = azurerm_api_management.this.delegation
}

output "gateway_disabled" {
  value = azurerm_api_management.this.gateway_disabled
}

output "min_api_version" {
  value = azurerm_api_management.this.min_api_version
}

output "zones" {
  value = azurerm_api_management.this.zones
}

output "identity" {
  value = azurerm_api_management.this.identity
}

output "hostname_configuration" {
  value = azurerm_api_management.this.hostname_configuration
}

output "notification_sender_email" {
  value = azurerm_api_management.this.notification_sender_email
}

output "policy" {
  value = azurerm_api_management.this.policy
}

output "protocols" {
  value = azurerm_api_management.this.protocols
}

output "security" {
  value = azurerm_api_management.this.security
}

output "sign_in" {
  value = azurerm_api_management.this.sign_in
}

output "sign_up" {
  value = azurerm_api_management.this.sign_up
}

output "tenant_access" {
  value = azurerm_api_management.this.tenant_access
}

output "public_ip_address_id" {
  value = azurerm_api_management.this.public_ip_address_id
}

output "public_network_access_enabled" {
  value = azurerm_api_management.this.public_network_access_enabled
}

output "virtual_network_type" {
  value = azurerm_api_management.this.virtual_network_type
}

output "virtual_network_configuration" {
  value = azurerm_api_management.this.virtual_network_configuration
}

output "tags" {
  value = azurerm_api_management.this.tags
}

output "id" {
  description = "The ID of the API Management Service."
  value       = azurerm_api_management.this.id
}

output "additional_location" {
  description = "Zero or more 'additional_location' blocks."
  value       = azurerm_api_management.this.additional_location
}

output "gateway_url" {
  description = "The URL of the Gateway for the API Management Service."
  value       = azurerm_api_management.this.gateway_url
}

output "gateway_regional_url" {
  description = "The URL of the Regional Gateway for the API Management Service in the specified region."
  value       = azurerm_api_management.this.gateway_regional_url
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_api_management.this.identity
}

output "hostname_configuration" {
  description = "A 'hostname_configuration' block."
  value       = azurerm_api_management.this.hostname_configuration
}

output "management_api_url" {
  description = "The URL for the Management API associated with this API Management service."
  value       = azurerm_api_management.this.management_api_url
}

output "portal_url" {
  description = "The URL for the Publisher Portal associated with this API Management service."
  value       = azurerm_api_management.this.portal_url
}

output "developer_portal_url" {
  description = "The URL for the Developer Portal associated with this API Management service."
  value       = azurerm_api_management.this.developer_portal_url
}

output "public_ip_addresses" {
  description = "Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU."
  value       = azurerm_api_management.this.public_ip_addresses
}

output "private_ip_addresses" {
  description = "The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode."
  value       = azurerm_api_management.this.private_ip_addresses
}

output "scm_url" {
  description = "The URL for the SCM (Source Code Management) Endpoint associated with this API Management service."
  value       = azurerm_api_management.this.scm_url
}

output "tenant_access" {
  description = "The 'tenant_access' block."
  value       = azurerm_api_management.this.tenant_access
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_api_management.this.principal_id
}

output "tenant_id" {
  description = "The identifier for the tenant access information contract."
  value       = azurerm_api_management.this.tenant_id
}

output "primary_key" {
  description = "Primary access key for the tenant access information contract."
  value       = azurerm_api_management.this.primary_key
}

output "secondary_key" {
  description = "Secondary access key for the tenant access information contract."
  value       = azurerm_api_management.this.secondary_key
}

output "expiry" {
  description = "The expiration date of the certificate in RFC3339 format: '2000-01-02T03:04:05Z'."
  value       = azurerm_api_management.this.expiry
}

output "thumbprint" {
  description = "The thumbprint of the certificate."
  value       = azurerm_api_management.this.thumbprint
}

output "subject" {
  description = "The subject of the certificate."
  value       = azurerm_api_management.this.subject
}

output "proxy" {
  description = "A 'proxy' block."
  value       = azurerm_api_management.this.proxy
}

output "certificate_source" {
  description = "The source of the certificate."
  value       = azurerm_api_management.this.certificate_source
}

output "certificate_status" {
  description = "The status of the certificate."
  value       = azurerm_api_management.this.certificate_status
}

