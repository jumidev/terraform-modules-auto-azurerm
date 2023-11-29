output "name" {
  value = azurerm_spatial_anchors_account.this.name
}

output "resource_group_name" {
  value = azurerm_spatial_anchors_account.this.resource_group_name
}

output "location" {
  value = azurerm_spatial_anchors_account.this.location
}

output "tags" {
  value = azurerm_spatial_anchors_account.this.tags
}

output "id" {
  description = "The ID of the Spatial Anchors Account."
  value       = azurerm_spatial_anchors_account.this.id
}

output "account_domain" {
  description = "The domain of the Spatial Anchors Account."
  value       = azurerm_spatial_anchors_account.this.account_domain
}

output "account_id" {
  description = "The account ID of the Spatial Anchors Account."
  value       = azurerm_spatial_anchors_account.this.account_id
}

