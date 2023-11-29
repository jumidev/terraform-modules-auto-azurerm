

resource "azurerm_data_factory_dataset_snowflake" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  ########################################
  # optional vars
  ########################################
  schema_name = var.schema_name
  table_name  = var.table_name
  folder      = var.folder

  dynamic "schema_column" { # var.schema_column
    for_each = var.schema_column != null ? var.schema_column : []
    content {
      name      = schema_column.key
      type      = lookup(schema_column.value, "type", null)
      precision = lookup(schema_column.value, "precision", null)
      scale     = lookup(schema_column.value, "scale", null)
    }
  }

  description           = var.description
  annotations           = var.annotations
  parameters            = var.parameters
  additional_properties = var.additional_properties
}
