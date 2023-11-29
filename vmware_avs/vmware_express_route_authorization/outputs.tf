output "name" {
  value = azurerm_vmware_express_route_authorization.this.name
}

output "private_cloud_id" {
  value = azurerm_vmware_express_route_authorization.this.private_cloud_id
}

output "id" {
  description = "The ID of the VMware Authorization."
  value       = azurerm_vmware_express_route_authorization.this.id
}

output "express_route_authorization_id" {
  description = "The ID of the Express Route Circuit Authorization."
  value       = azurerm_vmware_express_route_authorization.this.express_route_authorization_id
}

output "express_route_authorization_key" {
  description = "The key of the Express Route Circuit Authorization."
  value       = azurerm_vmware_express_route_authorization.this.express_route_authorization_key
}

