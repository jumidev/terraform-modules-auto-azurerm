

resource "azurerm_security_center_subscription_pricing" "this" {

  ########################################
  # required vars
  ########################################
  tier = var.tier

  ########################################
  # optional vars
  ########################################
  resource_type = var.resource_type # Default: VirtualMachines
  subplan       = var.subplan

  dynamic "extension" { # var.extension
    for_each = var.extension != null ? var.extension : []
    content {
      name                            = extension.key
      additional_extension_properties = lookup(extension.value, "additional_extension_properties", null)
    }
  }

}
