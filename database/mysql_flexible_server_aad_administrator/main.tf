

resource "azurerm_mysql_flexible_server_aad_administrator" "this" {

  ########################################
  # required vars
  ########################################
  server_id   = var.server_id
  identity_id = var.identity_id
  login       = var.login
  object_id   = var.object_id
  tenant_id   = var.tenant_id
}
