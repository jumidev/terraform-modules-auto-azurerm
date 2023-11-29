data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_analysis_services_server" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  admin_users               = var.admin_users
  querypool_connection_mode = var.querypool_connection_mode
  backup_blob_container_uri = var.backup_blob_container_uri
  enable_power_bi_service   = var.enable_power_bi_service
  ipv4_firewall_rule        = var.ipv4_firewall_rule
  tags                      = var.tags
}
