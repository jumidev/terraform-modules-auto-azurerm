

resource "azurerm_advanced_threat_protection" "this" {

  ########################################
  # required vars
  ########################################
  target_resource_id = var.target_resource_id
  enabled            = var.enabled
}
