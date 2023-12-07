data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_sql_managed_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  location                     = var.location
  sku_name                     = var.sku_name
  vcores                       = var.vcores
  storage_size_in_gb           = var.storage_size_in_gb
  license_type                 = var.license_type
  administrator_login          = var.administrator_login
  administrator_login_password = random_string.administrator_login_password.result
  subnet_id                    = var.subnet_id

  ########################################
  # optional vars
  ########################################
  collation                    = var.collation
  public_data_endpoint_enabled = var.public_data_endpoint_enabled
  minimum_tls_version          = var.minimum_tls_version
  proxy_override               = var.proxy_override
  timezone_id                  = var.timezone_id
  dns_zone_partner_id          = var.dns_zone_partner_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  storage_account_type = var.storage_account_type # Default: GRS
  tags                 = var.tags
}
