data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_job" "this" {

  ########################################
  # required vars
  ########################################

  input_asset {
    name  = lookup(input_asset.value, "name") # (Required) 
    label = lookup(input_asset.value, "label", null)
  }

  media_services_account_name = var.media_services_account_name
  name                        = var.name

  dynamic "output_asset" { # var.output_asset
    for_each = var.output_asset != null ? var.output_asset : []
    content {
      name  = output_asset.key
      label = lookup(output_asset.value, "label", null)
    }
  }

  resource_group_name = data.azurerm_resource_group.this.name
  transform_name      = var.transform_name

  ########################################
  # optional vars
  ########################################
  description = var.description
  priority    = var.priority # Default: Normal
}
