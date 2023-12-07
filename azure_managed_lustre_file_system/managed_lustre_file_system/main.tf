data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_managed_lustre_file_system" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  maintenance_window {
    day_of_week        = lookup(maintenance_window.value, "day_of_week")        # (Required) 
    time_of_day_in_utc = lookup(maintenance_window.value, "time_of_day_in_utc") # (Required) 
  }

  sku_name               = var.sku_name
  storage_capacity_in_tb = var.storage_capacity_in_tb
  subnet_id              = var.subnet_id
  zones                  = var.zones

  ########################################
  # optional vars
  ########################################

  dynamic "hsm_setting" { # var.hsm_setting
    for_each = var.hsm_setting != null ? var.hsm_setting : []
    content {
      container_id         = lookup(hsm_setting.value, "container_id")         # (Required) 
      logging_container_id = lookup(hsm_setting.value, "logging_container_id") # (Required) 
      import_prefix        = lookup(hsm_setting.value, "import_prefix", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }


  dynamic "encryption_key" { # var.encryption_key
    for_each = var.encryption_key != null ? var.encryption_key : []
    content {
      key_url         = lookup(encryption_key.value, "key_url")         # (Required) possible values: id | azurerm_key_vault_key
      source_vault_id = lookup(encryption_key.value, "source_vault_id") # (Required) possible values: id | azurerm_key_vault
    }
  }

  tags = var.tags
}
