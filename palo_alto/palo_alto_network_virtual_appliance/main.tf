

resource "azurerm_palo_alto_network_virtual_appliance" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  virtual_hub_id = var.virtual_hub_id
}
