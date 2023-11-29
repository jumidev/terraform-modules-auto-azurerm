

resource "azurerm_gallery_application_version" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  gallery_application_id = var.gallery_application_id
  location               = var.location

  manage_action {
    install = lookup(manage_action.value, "install") # (Required) 
    remove  = lookup(manage_action.value, "remove")  # (Required) 
    update  = lookup(manage_action.value, "update", null)
  }


  source {
    media_link                 = lookup(source.value, "media_link") # (Required) 
    default_configuration_link = lookup(source.value, "default_configuration_link", null)
  }


  dynamic "target_region" { # var.target_region
    for_each = var.target_region != null ? var.target_region : []
    content {
      name                   = target_region.key
      regional_replica_count = lookup(target_region.value, "regional_replica_count") # (Required) possible values: 1 | 10
      exclude_from_latest    = lookup(target_region.value, "exclude_from_latest", false)
      storage_account_type   = lookup(target_region.value, "storage_account_type", "Standard_LRS")
    }
  }


  ########################################
  # optional vars
  ########################################
  config_file         = var.config_file
  enable_health_check = var.enable_health_check # Default: False
  end_of_life_date    = var.end_of_life_date
  exclude_from_latest = var.exclude_from_latest # Default: False
  package_file        = var.package_file
  tags                = var.tags
}
