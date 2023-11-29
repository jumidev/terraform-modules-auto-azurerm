

resource "azurerm_key_vault_certificate_issuer" "this" {

  ########################################
  # required vars
  ########################################
  key_vault_id  = var.key_vault_id
  name          = var.name
  provider_name = var.provider_name

  ########################################
  # optional vars
  ########################################
  org_id     = var.org_id
  account_id = var.account_id

  dynamic "admin" { # var.admin
    for_each = var.admin != null ? var.admin : []
    content {
      email_address = lookup(admin.value, "email_address") # (Required) 
      first_name    = lookup(admin.value, "first_name", null)
      last_name     = lookup(admin.value, "last_name", null)
      phone         = lookup(admin.value, "phone", null)
    }
  }

  password = var.password
}
