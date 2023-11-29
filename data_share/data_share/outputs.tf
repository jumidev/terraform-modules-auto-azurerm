output "name" {
  value = azurerm_data_share.this.name
}

output "account_id" {
  value = azurerm_data_share.this.account_id
}

output "kind" {
  value = azurerm_data_share.this.kind
}

output "description" {
  value = azurerm_data_share.this.description
}

output "snapshot_schedule" {
  value = azurerm_data_share.this.snapshot_schedule
}

output "terms" {
  value = azurerm_data_share.this.terms
}

output "id" {
  description = "The ID of the Data Share."
  value       = azurerm_data_share.this.id
}

