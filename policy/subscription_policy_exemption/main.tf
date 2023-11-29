

resource "azurerm_subscription_policy_exemption" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  subscription_id      = var.subscription_id
  exemption_category   = var.exemption_category
  policy_assignment_id = var.policy_assignment_id

  ########################################
  # optional vars
  ########################################
  description                     = var.description
  display_name                    = var.display_name
  expires_on                      = var.expires_on
  policy_definition_reference_ids = var.policy_definition_reference_ids
  metadata                        = var.metadata
}
