

resource "azurerm_log_analytics_query_pack" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
