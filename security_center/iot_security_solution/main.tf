data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iot_security_solution" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  display_name        = var.display_name
  iothub_ids          = var.iothub_ids

  ########################################
  # optional vars
  ########################################

  dynamic "additional_workspace" { # var.additional_workspace
    for_each = var.additional_workspace != null ? var.additional_workspace : []
    content {
      data_types   = lookup(additional_workspace.value, "data_types")   # (Required) possible values: Alerts | RawEvents
      workspace_id = lookup(additional_workspace.value, "workspace_id") # (Required) 
    }
  }

  disabled_data_sources      = var.disabled_data_sources
  enabled                    = var.enabled # Default: True
  events_to_export           = var.events_to_export
  log_analytics_workspace_id = var.log_analytics_workspace_id
  log_unmasked_ips_enabled   = var.log_unmasked_ips_enabled # Default: False

  dynamic "recommendations_enabled" { # var.recommendations_enabled
    for_each = var.recommendations_enabled != null ? var.recommendations_enabled : []
    content {
      acr_authentication               = lookup(recommendations_enabled.value, "acr_authentication", true)
      agent_send_unutilized_msg        = lookup(recommendations_enabled.value, "agent_send_unutilized_msg", true)
      baseline                         = lookup(recommendations_enabled.value, "baseline", true)
      edge_hub_mem_optimize            = lookup(recommendations_enabled.value, "edge_hub_mem_optimize", true)
      edge_logging_option              = lookup(recommendations_enabled.value, "edge_logging_option", true)
      inconsistent_module_settings     = lookup(recommendations_enabled.value, "inconsistent_module_settings", true)
      install_agent                    = lookup(recommendations_enabled.value, "install_agent", true)
      ip_filter_deny_all               = lookup(recommendations_enabled.value, "ip_filter_deny_all", true)
      ip_filter_permissive_rule        = lookup(recommendations_enabled.value, "ip_filter_permissive_rule", true)
      open_ports                       = lookup(recommendations_enabled.value, "open_ports", true)
      permissive_firewall_policy       = lookup(recommendations_enabled.value, "permissive_firewall_policy", true)
      permissive_input_firewall_rules  = lookup(recommendations_enabled.value, "permissive_input_firewall_rules", true)
      permissive_output_firewall_rules = lookup(recommendations_enabled.value, "permissive_output_firewall_rules", true)
      privileged_docker_options        = lookup(recommendations_enabled.value, "privileged_docker_options", true)
      shared_credentials               = lookup(recommendations_enabled.value, "shared_credentials", true)
      vulnerable_tls_cipher_suite      = lookup(recommendations_enabled.value, "vulnerable_tls_cipher_suite", true)
    }
  }

  query_for_resources    = var.query_for_resources
  query_subscription_ids = var.query_subscription_ids
  tags                   = var.tags
}
