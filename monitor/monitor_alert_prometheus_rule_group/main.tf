data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_alert_prometheus_rule_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  rule {
    action           = lookup(rule.value, "action", null)
    alert            = lookup(rule.value, "alert", null)
    annotations      = lookup(rule.value, "annotations", null)
    enabled          = lookup(rule.value, "enabled", null)
    expression       = lookup(rule.value, "expression") # (Required) 
    for              = lookup(rule.value, "for", null)
    labels           = lookup(rule.value, "labels", null)
    record           = lookup(rule.value, "record", null)
    alert_resolution = lookup(rule.value, "alert_resolution", null)
    severity         = lookup(rule.value, "severity", null)
  }

  scopes = var.scopes

  ########################################
  # optional vars
  ########################################
  cluster_name       = var.cluster_name
  description        = var.description
  rule_group_enabled = var.rule_group_enabled
  interval           = var.interval
  tags               = var.tags
}
