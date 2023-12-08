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

output "resource_management_private_link_association.management_group_id" {
  value = lookup(var.resource_management_private_link_association, "management_group_id", null)
}

output "resource_management_private_link_association.resource_management_private_link_id" {
  value = lookup(var.resource_management_private_link_association, "resource_management_private_link_id", null)
}

output "resource_management_private_link_association.public_network_access_enabled" {
  value = lookup(var.resource_management_private_link_association, "public_network_access_enabled", null)
}

output "resource_management_private_link_association.name" {
  value = lookup(var.resource_management_private_link_association, "name", null)
}

output "resource_management_private_link_association.id" {
  description = "The ID of the Private Link Association."
  value       = lookup(var.resource_management_private_link_association, "id", null)
}

output "resource_management_private_link_association.tenant_id" {
  description = "The Tenant ID."
  value       = lookup(var.resource_management_private_link_association, "tenant_id", null)
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

