data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_custom_provider" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "resource_type" { # var.resource_type
    for_each = var.resource_type != null ? var.resource_type : []
    content {
      name         = resource_type.key
      endpoint     = lookup(resource_type.value, "endpoint") # (Required) 
      routing_type = lookup(resource_type.value, "routing_type", "Proxy")
    }
  }


  dynamic "action" { # var.action
    for_each = var.action != null ? var.action : []
    content {
      name     = action.key
      endpoint = lookup(action.value, "endpoint") # (Required) 
    }
  }


  dynamic "validation" { # var.validation
    for_each = var.validation != null ? var.validation : []
    content {
      specification = lookup(validation.value, "specification") # (Required) 
    }
  }

  tags = var.tags
}
