

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

  dynamic "service_qos_policy" { # var.service_qos_policy
    for_each = var.service_qos_policy != null ? var.service_qos_policy : []
    content {
      allocation_and_retention_priority_level = lookup(service_qos_policy.value, "allocation_and_retention_priority_level", "9")
      qos_indicator                           = lookup(service_qos_policy.value, "qos_indicator", null)

      dynamic "maximum_bit_rate" { # service_qos_policy.value.maximum_bit_rate
        for_each = service_qos_policy.value.maximum_bit_rate != null ? service_qos_policy.value.maximum_bit_rate : []
        content {
          downlink = lookup(maximum_bit_rate.value, "downlink") # (Required) 
          uplink   = lookup(maximum_bit_rate.value, "uplink")   # (Required) 
        }
      }

      preemption_capability    = lookup(service_qos_policy.value, "preemption_capability", null)
      preemption_vulnerability = lookup(service_qos_policy.value, "preemption_vulnerability", null)
    }
  }

  tags = var.tags
}
