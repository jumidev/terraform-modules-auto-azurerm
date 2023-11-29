data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "active_directory" { # var.active_directory
    for_each = var.active_directory != null ? var.active_directory : []
    content {
      dns_servers         = lookup(active_directory.value, "dns_servers")     # (Required) 
      domain              = lookup(active_directory.value, "domain")          # (Required) 
      smb_server_name     = lookup(active_directory.value, "smb_server_name") # (Required) 
      username            = lookup(active_directory.value, "username")        # (Required) 
      password            = lookup(active_directory.value, "password")        # (Required) 
      organizational_unit = lookup(active_directory.value, "organizational_unit", null)
    }
  }

  tags = var.tags
}
