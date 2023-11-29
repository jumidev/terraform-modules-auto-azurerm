output "name" {
  value = azurerm_app_service_certificate_order.this.name
}

output "resource_group_name" {
  value = azurerm_app_service_certificate_order.this.resource_group_name
}

output "location" {
  value = azurerm_app_service_certificate_order.this.location
}

output "auto_renew" {
  value = azurerm_app_service_certificate_order.this.auto_renew
}

output "csr" {
  value = azurerm_app_service_certificate_order.this.csr
}

output "distinguished_name" {
  value = azurerm_app_service_certificate_order.this.distinguished_name
}

output "key_size" {
  value = azurerm_app_service_certificate_order.this.key_size
}

output "product_type" {
  value = azurerm_app_service_certificate_order.this.product_type
}

output "validity_in_years" {
  value = azurerm_app_service_certificate_order.this.validity_in_years
}

output "id" {
  description = "The App Service Certificate Order ID."
  value       = azurerm_app_service_certificate_order.this.id
}

output "certificates" {
  description = "State of the Key Vault secret. A 'certificates' block."
  value       = azurerm_app_service_certificate_order.this.certificates
}

output "domain_verification_token" {
  description = "Domain verification token."
  value       = azurerm_app_service_certificate_order.this.domain_verification_token
}

output "status" {
  description = "Current order status."
  value       = azurerm_app_service_certificate_order.this.status
}

output "expiration_time" {
  description = "Certificate expiration time."
  value       = azurerm_app_service_certificate_order.this.expiration_time
}

output "is_private_key_external" {
  description = "Whether the private key is external or not."
  value       = azurerm_app_service_certificate_order.this.is_private_key_external
}

output "app_service_certificate_not_renewable_reasons" {
  description = "Reasons why App Service Certificate is not renewable at the current moment."
  value       = azurerm_app_service_certificate_order.this.app_service_certificate_not_renewable_reasons
}

output "signed_certificate_thumbprint" {
  description = "Certificate thumbprint for signed certificate."
  value       = azurerm_app_service_certificate_order.this.signed_certificate_thumbprint
}

output "root_thumbprint" {
  description = "Certificate thumbprint for root certificate."
  value       = azurerm_app_service_certificate_order.this.root_thumbprint
}

output "intermediate_thumbprint" {
  description = "Certificate thumbprint intermediate certificate."
  value       = azurerm_app_service_certificate_order.this.intermediate_thumbprint
}

output "tags" {
  description = "A mapping of tags to assign to the resource."
  value       = azurerm_app_service_certificate_order.this.tags
}

output "certificate_name" {
  description = "The name of the App Service Certificate."
  value       = azurerm_app_service_certificate_order.this.certificate_name
}

output "key_vault_id" {
  description = "Key Vault resource Id."
  value       = azurerm_app_service_certificate_order.this.key_vault_id
}

output "key_vault_secret_name" {
  description = "Key Vault secret name."
  value       = azurerm_app_service_certificate_order.this.key_vault_secret_name
}

output "provisioning_state" {
  description = "Status of the Key Vault secret."
  value       = azurerm_app_service_certificate_order.this.provisioning_state
}

