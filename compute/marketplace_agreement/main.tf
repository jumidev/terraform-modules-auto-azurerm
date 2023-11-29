

resource "azurerm_marketplace_agreement" "this" {

  ########################################
  # required vars
  ########################################
  offer     = var.offer
  plan      = var.plan
  publisher = var.publisher
}
