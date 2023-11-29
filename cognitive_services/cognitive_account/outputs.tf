output "name" {
  value = azurerm_cognitive_account.this.name
}

output "resource_group_name" {
  value = azurerm_cognitive_account.this.resource_group_name
}

output "location" {
  value = azurerm_cognitive_account.this.location
}

output "kind" {
  value = azurerm_cognitive_account.this.kind
}

output "sku_name" {
  value = azurerm_cognitive_account.this.sku_name
}

output "custom_subdomain_name" {
  value = azurerm_cognitive_account.this.custom_subdomain_name
}

output "dynamic_throttling_enabled" {
  value = azurerm_cognitive_account.this.dynamic_throttling_enabled
}

output "customer_managed_key" {
  value = azurerm_cognitive_account.this.customer_managed_key
}

output "fqdns" {
  value = azurerm_cognitive_account.this.fqdns
}

output "identity" {
  value = azurerm_cognitive_account.this.identity
}

output "local_auth_enabled" {
  value = azurerm_cognitive_account.this.local_auth_enabled
}

output "metrics_advisor_aad_client_id" {
  value = azurerm_cognitive_account.this.metrics_advisor_aad_client_id
}

output "metrics_advisor_aad_tenant_id" {
  value = azurerm_cognitive_account.this.metrics_advisor_aad_tenant_id
}

output "metrics_advisor_super_user_name" {
  value = azurerm_cognitive_account.this.metrics_advisor_super_user_name
}

output "metrics_advisor_website_name" {
  value = azurerm_cognitive_account.this.metrics_advisor_website_name
}

output "network_acls" {
  value = azurerm_cognitive_account.this.network_acls
}

output "outbound_network_access_restricted" {
  value = azurerm_cognitive_account.this.outbound_network_access_restricted
}

output "public_network_access_enabled" {
  value = azurerm_cognitive_account.this.public_network_access_enabled
}

output "qna_runtime_endpoint" {
  value = azurerm_cognitive_account.this.qna_runtime_endpoint
}

output "custom_question_answering_search_service_id" {
  value = azurerm_cognitive_account.this.custom_question_answering_search_service_id
}

output "custom_question_answering_search_service_key" {
  value = azurerm_cognitive_account.this.custom_question_answering_search_service_key
}

output "storage" {
  value = azurerm_cognitive_account.this.storage
}

output "tags" {
  value = azurerm_cognitive_account.this.tags
}

output "id" {
  description = "The ID of the Cognitive Service Account."
  value       = azurerm_cognitive_account.this.id
}

output "endpoint" {
  description = "The endpoint used to connect to the Cognitive Service Account."
  value       = azurerm_cognitive_account.this.endpoint
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_cognitive_account.this.identity
}

output "primary_access_key" {
  description = "A primary access key which can be used to connect to the Cognitive Service Account."
  value       = azurerm_cognitive_account.this.primary_access_key
}

output "secondary_access_key" {
  description = "The secondary access key which can be used to connect to the Cognitive Service Account."
  value       = azurerm_cognitive_account.this.secondary_access_key
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_cognitive_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_cognitive_account.this.tenant_id
}

