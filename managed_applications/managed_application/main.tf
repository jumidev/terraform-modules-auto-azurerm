data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_managed_application" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  location                    = var.location
  kind                        = var.kind
  managed_resource_group_name = var.managed_resource_group_name

  ########################################
  # optional vars
  ########################################
  application_definition_id = var.application_definition_id
  parameters                = var.parameters
  parameter_values          = var.parameter_values

  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name           = plan.key
      product        = lookup(plan.value, "product")   # (Required) 
      publisher      = lookup(plan.value, "publisher") # (Required) 
      version        = lookup(plan.value, "version")   # (Required) 
      promotion_code = lookup(plan.value, "promotion_code", null)
    }
  }

  tags = var.tags
}
