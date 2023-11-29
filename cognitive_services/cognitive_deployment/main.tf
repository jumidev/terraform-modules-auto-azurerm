

resource "azurerm_cognitive_deployment" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  cognitive_account_id = var.cognitive_account_id

  model {
    format  = lookup(model.value, "format")  # (Required) 
    name    = lookup(model.value, "name")    # (Required) 
    version = lookup(model.value, "version") # (Required) 
  }


  scale {
    type     = lookup(scale.value, "type") # (Required) 
    tier     = lookup(scale.value, "tier", null)
    size     = lookup(scale.value, "size", null)
    family   = lookup(scale.value, "family", null)
    capacity = lookup(scale.value, "capacity", "1")
  }


  ########################################
  # optional vars
  ########################################
  rai_policy_name        = var.rai_policy_name
  version_upgrade_option = var.version_upgrade_option # Default: OnceNewDefaultVersionAvailable
}
