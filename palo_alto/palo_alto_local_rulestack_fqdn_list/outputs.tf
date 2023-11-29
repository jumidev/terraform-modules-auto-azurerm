output "name" {
  value = azurerm_palo_alto_local_rulestack_fqdn_list.this.name
}

output "rulestack_id" {
  value = azurerm_palo_alto_local_rulestack_fqdn_list.this.rulestack_id
}

output "fully_qualified_domain_names" {
  value = azurerm_palo_alto_local_rulestack_fqdn_list.this.fully_qualified_domain_names
}

output "audit_comment" {
  value = azurerm_palo_alto_local_rulestack_fqdn_list.this.audit_comment
}

output "description" {
  value = azurerm_palo_alto_local_rulestack_fqdn_list.this.description
}

output "id" {
  description = "The ID of the Palo Alto Local Rulestack FQDN List."
  value       = azurerm_palo_alto_local_rulestack_fqdn_list.this.id
}

