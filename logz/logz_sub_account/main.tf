

resource "azurerm_logz_sub_account" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  logz_monitor_id = var.logz_monitor_id

  user {
    email        = lookup(user.value, "email")        # (Required) 
    first_name   = lookup(user.value, "first_name")   # (Required) 
    last_name    = lookup(user.value, "last_name")    # (Required) 
    phone_number = lookup(user.value, "phone_number") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
  tags    = var.tags
}
