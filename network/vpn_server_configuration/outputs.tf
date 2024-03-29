output "name" {
  value = azurerm_vpn_server_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_vpn_server_configuration.this.resource_group_name
}

output "location" {
  value = azurerm_vpn_server_configuration.this.location
}

output "vpn_authentication_types" {
  value = azurerm_vpn_server_configuration.this.vpn_authentication_types
}

output "ipsec_policy" {
  value = azurerm_vpn_server_configuration.this.ipsec_policy
}

output "vpn_protocols" {
  value = azurerm_vpn_server_configuration.this.vpn_protocols
}

output "tags" {
  value = azurerm_vpn_server_configuration.this.tags
}

output "azure_active_directory_authentication" {
  value = azurerm_vpn_server_configuration.this.azure_active_directory_authentication
}

output "client_root_certificate" {
  value = azurerm_vpn_server_configuration.this.client_root_certificate
}

output "client_revoked_certificate" {
  value = azurerm_vpn_server_configuration.this.client_revoked_certificate
}

output "radius" {
  value = azurerm_vpn_server_configuration.this.radius
}

output "public_cert_data" {
  description = "The Public Key Data associated with the Certificate. In addition to the arguments above, the following attributes are exported:"
  value       = azurerm_vpn_server_configuration.this.public_cert_data
}

output "id" {
  description = "The ID of the VPN Server Configuration."
  value       = azurerm_vpn_server_configuration.this.id
}

