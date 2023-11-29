

resource "azurerm_function_app_function" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  function_app_id = var.function_app_id
  config_json     = var.config_json

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True

  dynamic "file" { # var.file
    for_each = var.file != null ? var.file : []
    content {
      name    = file.key
      content = lookup(file.value, "content") # (Required) 
    }
  }

  language  = var.language
  test_data = var.test_data
}
