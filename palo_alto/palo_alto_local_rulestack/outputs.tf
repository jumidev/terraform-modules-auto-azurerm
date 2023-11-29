output "name" {
  value = azurerm_palo_alto_local_rulestack.this.name
}

output "resource_group_name" {
  value = azurerm_palo_alto_local_rulestack.this.resource_group_name
}

output "location" {
  value = azurerm_palo_alto_local_rulestack.this.location
}

output "anti_spyware_profile" {
  value = azurerm_palo_alto_local_rulestack.this.anti_spyware_profile
}

output "anti_virus_profile" {
  value = azurerm_palo_alto_local_rulestack.this.anti_virus_profile
}

output "description" {
  value = azurerm_palo_alto_local_rulestack.this.description
}

output "dns_subscription" {
  value = azurerm_palo_alto_local_rulestack.this.dns_subscription
}

output "file_blocking_profile" {
  value = azurerm_palo_alto_local_rulestack.this.file_blocking_profile
}

output "url_filtering_profile" {
  value = azurerm_palo_alto_local_rulestack.this.url_filtering_profile
}

output "vulnerability_profile" {
  value = azurerm_palo_alto_local_rulestack.this.vulnerability_profile
}

output "id" {
  description = "The ID of the Palo Alto Networks Rulestack."
  value       = azurerm_palo_alto_local_rulestack.this.id
}

