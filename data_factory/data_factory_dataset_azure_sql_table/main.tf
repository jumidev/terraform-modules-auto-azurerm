

resource "azurerm_data_factory_dataset_azure_sql_table" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  data_factory_id   = var.data_factory_id
  linked_service_id = var.linked_service_id

  ########################################
  # optional vars
  ########################################
  schema = var.schema
  table  = var.table
  folder = var.folder

  dynamic "schema_column" { # var.schema_column
    for_each = var.schema_column != null ? var.schema_column : []
    content {
      name        = schema_column.key
      type        = lookup(schema_column.value, "type", null)
      description = lookup(schema_column.value, "description", null)
    }
  }

  description           = var.description
  annotations           = var.annotations
  parameters            = var.parameters
  additional_properties = var.additional_properties
}
