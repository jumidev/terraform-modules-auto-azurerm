

resource "azurerm_mobile_network_sim_group" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  location          = var.location
  mobile_network_id = var.mobile_network_id

  ########################################
  # optional vars
  ########################################
  encryption_key_url = var.encryption_key_url

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  tags = var.tags
}
