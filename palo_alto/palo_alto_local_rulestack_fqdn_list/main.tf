

resource "azurerm_palo_alto_local_rulestack_fqdn_list" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  rulestack_id                 = var.rulestack_id
  fully_qualified_domain_names = var.fully_qualified_domain_names

  ########################################
  # optional vars
  ########################################
  audit_comment = var.audit_comment
  description   = var.description
}
