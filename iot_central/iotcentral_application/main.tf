data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iotcentral_application" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sub_domain          = var.sub_domain

  ########################################
  # optional vars
  ########################################
  display_name = var.display_name

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) 
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  sku                           = var.sku
  template                      = var.template
  tags                          = var.tags
}
