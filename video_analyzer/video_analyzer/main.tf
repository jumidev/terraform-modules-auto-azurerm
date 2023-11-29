data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_video_analyzer" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  storage_account {
    user_assigned_identity_id = lookup(storage_account.value, "user_assigned_identity_id") # (Required) 
  }


  identity {
    type         = lookup(identity.value, "type")         # (Required) 
    identity_ids = lookup(identity.value, "identity_ids") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
