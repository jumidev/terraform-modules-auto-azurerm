resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_maintenance_configuration" "this" {
  name                = var.maintenance_configuration_name
  resource_group_name = var.maintenance_configuration_resource_group_name != null ? var.maintenance_configuration_resource_group_name : var.resource_group_name

}


resource "azurerm_mssql_managed_instance" "this" {

  ########################################
  # required vars
  ########################################
  administrator_login          = var.administrator_login
  administrator_login_password = random_string.administrator_login_password.result
  license_type                 = var.license_type
  location                     = var.location
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  sku_name                     = var.sku_name
  storage_size_in_gb           = var.storage_size_in_gb
  subnet_id                    = var.subnet_id
  vcores                       = var.vcores

  ########################################
  # optional vars
  ########################################
  collation           = var.collation # Default: SQL_Latin1_General_CP1_CI_AS
  dns_zone_partner_id = var.dns_zone_partner_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  maintenance_configuration_name = data.azurerm_maintenance_configuration.this.name
  minimum_tls_version            = var.minimum_tls_version          # Default: 1.2
  proxy_override                 = var.proxy_override               # Default: Default
  public_data_endpoint_enabled   = var.public_data_endpoint_enabled # Default: False
  storage_account_type           = var.storage_account_type         # Default: GRS
  tags                           = var.tags
  timezone_id                    = var.timezone_id # Default: UTC
}
