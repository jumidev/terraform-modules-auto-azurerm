

resource "azurerm_data_factory_linked_service_web" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  authentication_type = var.authentication_type
  url                 = var.url

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
  password                 = var.password
  username                 = var.username
}
