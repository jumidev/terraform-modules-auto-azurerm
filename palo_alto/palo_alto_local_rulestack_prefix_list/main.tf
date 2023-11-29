

resource "azurerm_palo_alto_local_rulestack_prefix_list" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  rulestack_id = var.rulestack_id
  prefix_list  = var.prefix_list

  ########################################
  # optional vars
  ########################################
  audit_comment = var.audit_comment
  description   = var.description
}
