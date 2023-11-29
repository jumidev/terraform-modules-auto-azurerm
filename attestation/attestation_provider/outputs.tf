output "name" {
  value = azurerm_attestation_provider.this.name
}

output "resource_group_name" {
  value = azurerm_attestation_provider.this.resource_group_name
}

output "location" {
  value = azurerm_attestation_provider.this.location
}

output "policy_signing_certificate_data" {
  value = azurerm_attestation_provider.this.policy_signing_certificate_data
}

output "open_enclave_policy_base64" {
  value = azurerm_attestation_provider.this.open_enclave_policy_base64
}

output "sgx_enclave_policy_base64" {
  value = azurerm_attestation_provider.this.sgx_enclave_policy_base64
}

output "tpm_policy_base64" {
  value = azurerm_attestation_provider.this.tpm_policy_base64
}

output "sev_snp_policy_base64" {
  value = azurerm_attestation_provider.this.sev_snp_policy_base64
}

output "tags" {
  value = azurerm_attestation_provider.this.tags
}

output "id" {
  description = "The ID of the Attestation Provider."
  value       = azurerm_attestation_provider.this.id
}

output "attestation_uri" {
  description = "The URI of the Attestation Service."
  value       = azurerm_attestation_provider.this.attestation_uri
}

output "trust_model" {
  description = "Trust model used for the Attestation Service."
  value       = azurerm_attestation_provider.this.trust_model
}

