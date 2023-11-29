data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_arc_kubernetes_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  agent_public_key_certificate = var.agent_public_key_certificate

  identity {
    type = lookup(identity.value, "type") # (Required) 
  }

  location = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
