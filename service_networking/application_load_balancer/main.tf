data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_load_balancer" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}

##############################################################################################
# optional azurerm_application_load_balancer_subnet_association 
##############################################################################################
resource "azurerm_application_load_balancer_subnet_association" "this" {
  count                        = var.application_load_balancer_subnet_association != null ? 1 : 0
  name                         = lookup(var.application_load_balancer_subnet_association, "var.name")
  application_load_balancer_id = azurerm_application_load_balancer.this.id
  subnet_id                    = lookup(var.application_load_balancer_subnet_association, "var.subnet_id")
  tags                         = lookup(var.application_load_balancer_subnet_association, "var.tags", null)
}
