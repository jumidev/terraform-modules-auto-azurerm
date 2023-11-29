

resource "azurerm_lab_service_user" "this" {

  ########################################
  # required vars
  ########################################
  name   = var.name
  lab_id = var.lab_id
  email  = var.email

  ########################################
  # optional vars
  ########################################
  additional_usage_quota = var.additional_usage_quota # Default: PT0S
}
