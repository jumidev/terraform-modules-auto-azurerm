

resource "azurerm_container_app_environment_dapr_component" "this" {

  ########################################
  # required vars
  ########################################
  container_app_environment_id = var.container_app_environment_id
  name                         = var.name
  component_type               = var.component_type
  version                      = var.version

  ########################################
  # optional vars
  ########################################
  ignore_errors = var.ignore_errors # Default: False
  init_timeout  = var.init_timeout  # Default: 5s
  metadata      = var.metadata
  scopes        = var.scopes

  dynamic "secret" { # var.secret
    for_each = var.secret != null ? var.secret : []
    content {
      name  = secret.key
      value = lookup(secret.value, "value") # (Required) 
    }
  }

}
