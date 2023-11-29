

resource "azurerm_mssql_outbound_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  server_id = var.server_id
}
