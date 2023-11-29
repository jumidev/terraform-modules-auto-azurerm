

resource "azurerm_log_analytics_saved_search" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  display_name               = var.display_name
  category                   = var.category
  query                      = var.query

  ########################################
  # optional vars
  ########################################
  function_alias      = var.function_alias
  function_parameters = var.function_parameters
  tags                = var.tags
}
