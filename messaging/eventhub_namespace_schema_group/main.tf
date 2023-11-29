

resource "azurerm_eventhub_namespace_schema_group" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  namespace_id         = var.namespace_id
  schema_compatibility = var.schema_compatibility
  schema_type          = var.schema_type
}
