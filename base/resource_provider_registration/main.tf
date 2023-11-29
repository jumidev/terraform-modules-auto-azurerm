

resource "azurerm_resource_provider_registration" "this" {

  ########################################
  # required vars
  ########################################
  name = var.name

  ########################################
  # optional vars
  ########################################

  dynamic "feature" { # var.feature
    for_each = var.feature != null ? var.feature : []
    content {
      name       = feature.key
      registered = lookup(feature.value, "registered") # (Required) 
    }
  }

}
