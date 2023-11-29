

resource "azurerm_function_app_connection" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  function_app_id    = var.function_app_id
  target_resource_id = var.target_resource_id

  authentication {
    type            = lookup(authentication.value, "type") # (Required) 
    name            = lookup(authentication.value, "name", null)
    secret          = lookup(authentication.value, "secret", null)
    client_id       = lookup(authentication.value, "client_id", null)
    subscription_id = lookup(authentication.value, "subscription_id", null)
    principal_id    = lookup(authentication.value, "principal_id", null)
    certificate     = lookup(authentication.value, "certificate", null)
    client_type     = lookup(authentication.value, "client_type", "none")
    vnet_solution   = lookup(authentication.value, "vnet_solution", null)
    secret_store    = lookup(authentication.value, "secret_store", null)
  }

}
