

resource "azurerm_data_factory_custom_dataset" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  linked_service {
    name       = lookup(linked_service.value, "name") # (Required) 
    parameters = lookup(linked_service.value, "parameters", null)
  }

  type                 = var.type
  type_properties_json = var.type_properties_json

  ########################################
  # optional vars
  ########################################
  additional_properties = var.additional_properties
  annotations           = var.annotations
  description           = var.description
  folder                = var.folder
  parameters            = var.parameters
  schema_json           = var.schema_json
}
