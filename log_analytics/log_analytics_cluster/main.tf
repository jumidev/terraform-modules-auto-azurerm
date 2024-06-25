

resource "azurerm_log_analytics_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  identity {
    type         = lookup(identity.value, "type") # (Required) 
    identity_ids = lookup(identity.value, "identity_ids", null)
  }


  ########################################
  # optional vars
  ########################################
  size_gb = var.size_gb # Default: 1000
  tags    = var.tags
}
