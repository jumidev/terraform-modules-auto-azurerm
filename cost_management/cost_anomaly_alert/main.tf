

resource "azurerm_cost_anomaly_alert" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  display_name    = var.display_name
  email_addresses = var.email_addresses
  email_subject   = var.email_subject

  ########################################
  # optional vars
  ########################################
  message = var.message
}
