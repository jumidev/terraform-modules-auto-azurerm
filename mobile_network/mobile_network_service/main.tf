

resource "azurerm_mobile_network_service" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  mobile_network_id  = var.mobile_network_id
  location           = var.location
  service_precedence = var.service_precedence

  pcc_rule {
    name                       = lookup(pcc_rule.value, "name")       # (Required) 
    precedence                 = lookup(pcc_rule.value, "precedence") # (Required) 
    qos_policy                 = lookup(pcc_rule.value, "qos_policy", null)
    service_data_flow_template = lookup(pcc_rule.value, "service_data_flow_template") # (Required) 
    traffic_control_enabled    = lookup(pcc_rule.value, "traffic_control_enabled", true)
  }


  ########################################
  # optional vars
  ########################################
  service_qos_policy = var.service_qos_policy
  tags               = var.tags
}
