

resource "azurerm_security_center_assessment_policy" "this" {

  ########################################
  # required vars
  ########################################
  description  = var.description
  display_name = var.display_name

  ########################################
  # optional vars
  ########################################
  severity                = var.severity # Default: Medium
  categories              = var.categories
  implementation_effort   = var.implementation_effort
  remediation_description = var.remediation_description
  threats                 = var.threats
  user_impact             = var.user_impact
}
