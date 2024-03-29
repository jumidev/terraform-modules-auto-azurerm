data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_sql_server" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  location                     = var.location
  version                      = var.version
  administrator_login          = var.administrator_login
  administrator_login_password = random_string.administrator_login_password.result

  ########################################
  # optional vars
  ########################################
  connection_policy = var.connection_policy # Default: Default

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: type | SystemAssigned
    }
  }

}
