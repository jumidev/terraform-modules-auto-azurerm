

resource "azurerm_key_vault_certificate_contacts" "this" {

  ########################################
  # required vars
  ########################################
  key_vault_id = var.key_vault_id

  dynamic "contact" { # var.contact
    for_each = var.contact != null ? var.contact : []
    content {
      email = lookup(contact.value, "email") # (Required) 
      name  = contact.key
      phone = lookup(contact.value, "phone", null)
    }
  }

}
