output "name" {
  value = azurerm_management_group.this.name
}

output "display_name" {
  value = azurerm_management_group.this.display_name
}

output "parent_management_group_id" {
  value = azurerm_management_group.this.parent_management_group_id
}

output "subscription_ids" {
  value = azurerm_management_group.this.subscription_ids
}

output "id" {
  description = "The ID of the Management Group."
  value       = azurerm_management_group.this.id
}

