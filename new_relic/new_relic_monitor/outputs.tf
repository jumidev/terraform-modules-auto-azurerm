output "name" {
  value = azurerm_new_relic_monitor.this.name
}

output "resource_group_name" {
  value = azurerm_new_relic_monitor.this.resource_group_name
}

output "location" {
  value = azurerm_new_relic_monitor.this.location
}

output "plan" {
  value = azurerm_new_relic_monitor.this.plan
}

output "user" {
  value = azurerm_new_relic_monitor.this.user
}

output "account_creation_source" {
  value = azurerm_new_relic_monitor.this.account_creation_source
}

output "account_id" {
  value = azurerm_new_relic_monitor.this.account_id
}

output "ingestion_key" {
  value = azurerm_new_relic_monitor.this.ingestion_key
}

output "organization_id" {
  value = azurerm_new_relic_monitor.this.organization_id
}

output "org_creation_source" {
  value = azurerm_new_relic_monitor.this.org_creation_source
}

output "user_id" {
  value = azurerm_new_relic_monitor.this.user_id
}

output "id" {
  description = "The ID of the Azure Native New Relic Monitor."
  value       = azurerm_new_relic_monitor.this.id
}

