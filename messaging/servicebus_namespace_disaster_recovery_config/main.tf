

resource "azurerm_servicebus_namespace_disaster_recovery_config" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  primary_namespace_id = var.primary_namespace_id
  partner_namespace_id = var.partner_namespace_id

  ########################################
  # optional vars
  ########################################
  alias_authorization_rule_id = var.alias_authorization_rule_id
}
