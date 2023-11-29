

resource "azurerm_cosmosdb_postgresql_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  cluster_id       = var.cluster_id
  end_ip_address   = var.end_ip_address
  start_ip_address = var.start_ip_address
}
