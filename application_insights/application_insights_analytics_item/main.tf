

resource "azurerm_application_insights_analytics_item" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  application_insights_id = var.application_insights_id
  type                    = var.type
  scope                   = var.scope
  content                 = var.content

  ########################################
  # optional vars
  ########################################
  function_alias = var.function_alias
}
