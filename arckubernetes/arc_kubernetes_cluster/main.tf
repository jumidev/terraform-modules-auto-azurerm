

resource "azurerm_arc_kubernetes_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  resource_group_name          = var.resource_group_name
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
