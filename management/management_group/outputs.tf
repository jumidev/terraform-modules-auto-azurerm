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

output "resource_management_private_link_association" {
  value = var.resource_management_private_link_association
}

output "management_group_id" {
  value = azurerm_management_group_subscription_association.this.*.management_group_id
}

output "subscription_id" {
  value = azurerm_management_group_subscription_association.this.*.subscription_id
}

output "id" {
  description = "The ID of the Management Group Subscription Association."
  value       = azurerm_management_group_subscription_association.this.*.id
}

