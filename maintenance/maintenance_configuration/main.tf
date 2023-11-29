data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_maintenance_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  scope               = var.scope

  ########################################
  # optional vars
  ########################################
  visibility = var.visibility # Default: Custom

  dynamic "window" { # var.window
    for_each = var.window != null ? var.window : []
    content {
      start_date_time      = lookup(window.value, "start_date_time") # (Required) 
      expiration_date_time = lookup(window.value, "expiration_date_time", null)
      duration             = lookup(window.value, "duration", null)
      time_zone            = lookup(window.value, "time_zone") # (Required) 
      recur_every          = lookup(window.value, "recur_every", null)
    }
  }


  dynamic "install_patches" { # var.install_patches
    for_each = var.install_patches != null ? var.install_patches : []
    content {

      dynamic "linux" { # install_patches.value.linux
        for_each = install_patches.value.linux != null ? install_patches.value.linux : []
        content {
          classifications_to_include    = lookup(linux.value, "classifications_to_include", null)
          package_names_mask_to_exclude = lookup(linux.value, "package_names_mask_to_exclude", null)
          package_names_mask_to_include = lookup(linux.value, "package_names_mask_to_include", null)
        }
      }


      dynamic "windows" { # install_patches.value.windows
        for_each = install_patches.value.windows != null ? install_patches.value.windows : []
        content {
          classifications_to_include = lookup(windows.value, "classifications_to_include", null)
          kb_numbers_to_exclude      = lookup(windows.value, "kb_numbers_to_exclude", null)
          kb_numbers_to_include      = lookup(windows.value, "kb_numbers_to_include", null)
        }
      }

      reboot = lookup(install_patches.value, "reboot", null)
    }
  }

  in_guest_user_patch_mode = var.in_guest_user_patch_mode
  properties               = var.properties
  tags                     = var.tags
}
