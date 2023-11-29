output "applications" {
  value = azurerm_palo_alto_local_rulestack_rule.this.applications
}

output "rulestack_id" {
  value = azurerm_palo_alto_local_rulestack_rule.this.rulestack_id
}

output "priority" {
  value = azurerm_palo_alto_local_rulestack_rule.this.priority
}

output "action" {
  value = azurerm_palo_alto_local_rulestack_rule.this.action
}

output "name" {
  value = azurerm_palo_alto_local_rulestack_rule.this.name
}

output "destination" {
  value = azurerm_palo_alto_local_rulestack_rule.this.destination
}

output "source" {
  value = azurerm_palo_alto_local_rulestack_rule.this.source
}

output "audit_comment" {
  value = azurerm_palo_alto_local_rulestack_rule.this.audit_comment
}

output "category" {
  value = azurerm_palo_alto_local_rulestack_rule.this.category
}

output "decryption_rule_type" {
  value = azurerm_palo_alto_local_rulestack_rule.this.decryption_rule_type
}

output "description" {
  value = azurerm_palo_alto_local_rulestack_rule.this.description
}

output "enabled" {
  value = azurerm_palo_alto_local_rulestack_rule.this.enabled
}

output "inspection_certificate_id" {
  value = azurerm_palo_alto_local_rulestack_rule.this.inspection_certificate_id
}

output "logging_enabled" {
  value = azurerm_palo_alto_local_rulestack_rule.this.logging_enabled
}

output "negate_destination" {
  value = azurerm_palo_alto_local_rulestack_rule.this.negate_destination
}

output "negate_source" {
  value = azurerm_palo_alto_local_rulestack_rule.this.negate_source
}

output "protocol" {
  value = azurerm_palo_alto_local_rulestack_rule.this.protocol
}

output "protocol_ports" {
  value = azurerm_palo_alto_local_rulestack_rule.this.protocol_ports
}

output "tags" {
  value = azurerm_palo_alto_local_rulestack_rule.this.tags
}

output "id" {
  description = "The ID of the Palo Alto Local Rulestack Rule."
  value       = azurerm_palo_alto_local_rulestack_rule.this.id
}

