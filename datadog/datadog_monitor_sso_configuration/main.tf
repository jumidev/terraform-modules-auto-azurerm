

resource "azurerm_datadog_monitor_sso_configuration" "this" {

  ########################################
  # required vars
  ########################################
  datadog_monitor_id        = var.datadog_monitor_id
  single_sign_on_enabled    = var.single_sign_on_enabled
  enterprise_application_id = var.enterprise_application_id

  ########################################
  # optional vars
  ########################################
  name = var.name # Default: default
}
