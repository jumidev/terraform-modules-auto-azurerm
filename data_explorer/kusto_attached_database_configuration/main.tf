data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kusto_attached_database_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  cluster_name        = var.cluster_name
  cluster_resource_id = var.cluster_resource_id
  database_name       = var.database_name

  ########################################
  # optional vars
  ########################################
  default_principal_modification_kind = var.default_principal_modification_kind # Default: None

  dynamic "sharing" { # var.sharing
    for_each = var.sharing != null ? var.sharing : []
    content {
      external_tables_to_exclude    = lookup(sharing.value, "external_tables_to_exclude", null)
      external_tables_to_include    = lookup(sharing.value, "external_tables_to_include", null)
      materialized_views_to_exclude = lookup(sharing.value, "materialized_views_to_exclude", null)
      materialized_views_to_include = lookup(sharing.value, "materialized_views_to_include", null)
      tables_to_exclude             = lookup(sharing.value, "tables_to_exclude", null)
      tables_to_include             = lookup(sharing.value, "tables_to_include", null)
    }
  }

}
