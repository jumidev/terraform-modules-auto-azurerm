

resource "azurerm_sql_managed_database" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  sql_managed_instance_id = var.sql_managed_instance_id
  location                = var.location
}
