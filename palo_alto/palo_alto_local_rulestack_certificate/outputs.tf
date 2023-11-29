output "name" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.name
}

output "rulestack_id" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.rulestack_id
}

output "key_vault_certificate_id" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.key_vault_certificate_id
}

output "self_signed" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.self_signed
}

output "audit_comment" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.audit_comment
}

output "description" {
  value = azurerm_palo_alto_local_rulestack_certificate.this.description
}

output "id" {
  description = "The ID of the Palo Alto Networks Rulestack Certificate."
  value       = azurerm_palo_alto_local_rulestack_certificate.this.id
}

