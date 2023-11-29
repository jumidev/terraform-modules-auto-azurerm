

resource "azurerm_key_vault_key" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  key_vault_id = var.key_vault_id
  key_type     = var.key_type
  key_opts     = var.key_opts

  ########################################
  # optional vars
  ########################################
  key_size        = var.key_size
  curve           = var.curve # Default: P-256
  not_before_date = var.not_before_date
  expiration_date = var.expiration_date
  tags            = var.tags

  dynamic "rotation_policy" { # var.rotation_policy
    for_each = var.rotation_policy != null ? var.rotation_policy : []
    content {
      expire_after = lookup(rotation_policy.value, "expire_after", null)

      dynamic "automatic" { # rotation_policy.value.automatic
        for_each = rotation_policy.value.automatic != null ? rotation_policy.value.automatic : []
        content {
          time_after_creation = lookup(automatic.value, "time_after_creation", null)
          time_before_expiry  = lookup(automatic.value, "time_before_expiry", null)
        }
      }

      notify_before_expiry = lookup(rotation_policy.value, "notify_before_expiry", null)
    }
  }

}
