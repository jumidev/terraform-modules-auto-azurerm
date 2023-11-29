

resource "azurerm_iot_time_series_insights_access_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                                = var.name
  time_series_insights_environment_id = var.time_series_insights_environment_id
  principal_object_id                 = var.principal_object_id
  roles                               = var.roles

  ########################################
  # optional vars
  ########################################
  description = var.description
}
