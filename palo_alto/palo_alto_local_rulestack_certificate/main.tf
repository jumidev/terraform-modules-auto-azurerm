

resource "azurerm_palo_alto_local_rulestack_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  rulestack_id = var.rulestack_id

  ########################################
  # optional vars
  ########################################
  key_vault_certificate_id = var.key_vault_certificate_id
  self_signed              = var.self_signed # Default: False
  audit_comment            = var.audit_comment
  description              = var.description
}
