

resource "azurerm_data_factory_linked_service_azure_search" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  data_factory_id    = var.data_factory_id
  url                = var.url
  search_service_key = var.search_service_key

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
}
