

resource "azurerm_subnet_service_endpoint_storage_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "definition" { # var.definition
    for_each = var.definition != null ? var.definition : []
    content {
      name              = definition.key
      service           = lookup(definition.value, "service", "Microsoft.Storage")
      service_resources = lookup(definition.value, "service_resources") # (Required) 
      description       = lookup(definition.value, "description", null)
    }
  }

  tags = var.tags
}
