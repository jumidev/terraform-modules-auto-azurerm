output "name" {
  value = azurerm_palo_alto_local_rulestack_prefix_list.this.name
}

output "rulestack_id" {
  value = azurerm_palo_alto_local_rulestack_prefix_list.this.rulestack_id
}

output "prefix_list" {
  value = azurerm_palo_alto_local_rulestack_prefix_list.this.prefix_list
}

output "audit_comment" {
  value = azurerm_palo_alto_local_rulestack_prefix_list.this.audit_comment
}

output "description" {
  value = azurerm_palo_alto_local_rulestack_prefix_list.this.description
}

output "id" {
  description = "The ID of the Palo Alto Local Rulestack Prefix List."
  value       = azurerm_palo_alto_local_rulestack_prefix_list.this.id
}

