

resource "azurerm_mssql_server_dns_alias" "this" {

  ########################################
  # required vars
  ########################################
  mssql_server_id = var.mssql_server_id
  name            = var.name
}
