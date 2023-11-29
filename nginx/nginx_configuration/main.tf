

resource "azurerm_nginx_configuration" "this" {

  ########################################
  # required vars
  ########################################
  nginx_deployment_id = var.nginx_deployment_id
  root_file           = var.root_file

  ########################################
  # optional vars
  ########################################
  package_data = var.package_data

  dynamic "config_file" { # var.config_file
    for_each = var.config_file != null ? var.config_file : []
    content {
      content      = lookup(config_file.value, "content")      # (Required) 
      virtual_path = lookup(config_file.value, "virtual_path") # (Required) 
    }
  }

  protected_file = var.protected_file
}
