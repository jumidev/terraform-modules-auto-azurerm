

resource "azurerm_maintenance_assignment_dedicated_host" "this" {

  ########################################
  # required vars
  ########################################
  location                     = var.location
  maintenance_configuration_id = var.maintenance_configuration_id
  dedicated_host_id            = var.dedicated_host_id
}
