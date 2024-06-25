

resource "azurerm_key_vault_certificate_contacts" "this" {

  ########################################
  # required vars
  ########################################
  key_vault_id = var.key_vault_id

  ########################################
  # optional vars
  ########################################

  dynamic "contact" { # var.contacts
    for_each = var.contacts != null ? var.contacts : []
    content {
      email = lookup(contact.value, "email") # (Required) 
      name  = contact.key
      phone = lookup(contact.value, "phone", null)
    }
  }

}
