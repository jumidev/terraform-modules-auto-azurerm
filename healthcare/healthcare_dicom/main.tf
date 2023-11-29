

resource "azurerm_healthcare_dicom" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  workspace_id = var.workspace_id
  location     = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: UserAssigned | SystemAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags
}
