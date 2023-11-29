

resource "azurerm_data_factory_linked_service_cosmosdb" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
  account_endpoint         = var.account_endpoint
  account_key              = var.account_key
  database                 = var.database
  connection_string        = var.connection_string
}
