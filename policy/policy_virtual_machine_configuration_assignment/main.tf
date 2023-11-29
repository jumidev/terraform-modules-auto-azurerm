

resource "azurerm_policy_virtual_machine_configuration_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  location           = var.location
  virtual_machine_id = var.virtual_machine_id

  configuration {
    assignment_type = lookup(configuration.value, "assignment_type", null)
    content_hash    = lookup(configuration.value, "content_hash", null)
    content_uri     = lookup(configuration.value, "content_uri", null)
    parameter       = lookup(configuration.value, "parameter", null)
    version         = lookup(configuration.value, "version", null)
  }

}
