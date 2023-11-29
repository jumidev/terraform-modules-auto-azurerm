

resource "azurerm_container_registry_token_password" "this" {

  ########################################
  # required vars
  ########################################
  container_registry_token_id = var.container_registry_token_id

  password1 {
    expiry = lookup(password1.value, "expiry", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "password2" { # var.password2
    for_each = var.password2 != null ? var.password2 : []
    content {
      expiry = lookup(password2.value, "expiry", null)
    }
  }

}
