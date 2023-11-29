

resource "azurerm_data_factory_linked_service_odata" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id
  url             = var.url

  ########################################
  # optional vars
  ########################################

  dynamic "basic_authentication" { # var.basic_authentication
    for_each = var.basic_authentication != null ? var.basic_authentication : []
    content {
      username = lookup(basic_authentication.value, "username") # (Required) 
      password = lookup(basic_authentication.value, "password") # (Required) 
    }
  }

  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
}
