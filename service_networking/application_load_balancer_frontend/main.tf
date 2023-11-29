

resource "azurerm_application_load_balancer_frontend" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  application_load_balancer_id = var.application_load_balancer_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
