output "account_name" {
  value = azurerm_netapp_volume_group_sap_hana.this.account_name
}

output "application_identifier" {
  value = azurerm_netapp_volume_group_sap_hana.this.application_identifier
}

output "group_description" {
  value = azurerm_netapp_volume_group_sap_hana.this.group_description
}

output "location" {
  value = azurerm_netapp_volume_group_sap_hana.this.location
}

output "name" {
  value = azurerm_netapp_volume_group_sap_hana.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_volume_group_sap_hana.this.resource_group_name
}

output "volume" {
  value = azurerm_netapp_volume_group_sap_hana.this.volume
}

output "id" {
  description = "The ID of the Application Volume Group."
  value       = azurerm_netapp_volume_group_sap_hana.this.id
}

