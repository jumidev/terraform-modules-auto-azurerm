

resource "azurerm_log_analytics_query_pack_query" "this" {

  ########################################
  # required vars
  ########################################
  query_pack_id = var.query_pack_id
  body          = var.body
  display_name  = var.display_name

  ########################################
  # optional vars
  ########################################
  name                     = var.name
  description              = var.description
  categories               = var.categories
  additional_settings_json = var.additional_settings_json
  resource_types           = var.resource_types
  solutions                = var.solutions
  tags                     = var.tags
}
