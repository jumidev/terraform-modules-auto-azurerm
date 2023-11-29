data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_frontdoor" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  backend_pool {
    name                = lookup(backend_pool.value, "name")                # (Required) 
    backend             = lookup(backend_pool.value, "backend")             # (Required) 
    load_balancing_name = lookup(backend_pool.value, "load_balancing_name") # (Required) 
    health_probe_name   = lookup(backend_pool.value, "health_probe_name")   # (Required) 
  }


  backend_pool_health_probe {
    name                = lookup(backend_pool_health_probe.value, "name") # (Required) 
    enabled             = lookup(backend_pool_health_probe.value, "enabled", true)
    path                = lookup(backend_pool_health_probe.value, "path", "/")
    protocol            = lookup(backend_pool_health_probe.value, "protocol", "Http")
    probe_method        = lookup(backend_pool_health_probe.value, "probe_method", "GET")
    interval_in_seconds = lookup(backend_pool_health_probe.value, "interval_in_seconds", 120)
  }


  backend_pool_load_balancing {
    name                            = lookup(backend_pool_load_balancing.value, "name") # (Required) 
    sample_size                     = lookup(backend_pool_load_balancing.value, "sample_size", 4)
    successful_samples_required     = lookup(backend_pool_load_balancing.value, "successful_samples_required", 2)
    additional_latency_milliseconds = lookup(backend_pool_load_balancing.value, "additional_latency_milliseconds", 0)
  }


  frontend_endpoint {
    name                                    = lookup(frontend_endpoint.value, "name")      # (Required) 
    host_name                               = lookup(frontend_endpoint.value, "host_name") # (Required) 
    session_affinity_enabled                = lookup(frontend_endpoint.value, "session_affinity_enabled", false)
    session_affinity_ttl_seconds            = lookup(frontend_endpoint.value, "session_affinity_ttl_seconds", 0)
    web_application_firewall_policy_link_id = lookup(frontend_endpoint.value, "web_application_firewall_policy_link_id", null)
  }


  routing_rule {
    name                     = lookup(routing_rule.value, "name")               # (Required) 
    frontend_endpoints       = lookup(routing_rule.value, "frontend_endpoints") # (Required) 
    accepted_protocols       = lookup(routing_rule.value, "accepted_protocols") # (Required) 
    patterns_to_match        = lookup(routing_rule.value, "patterns_to_match")  # (Required) 
    enabled                  = lookup(routing_rule.value, "enabled", true)
    forwarding_configuration = lookup(routing_rule.value, "forwarding_configuration", null)
    redirect_configuration   = lookup(routing_rule.value, "redirect_configuration", null)
  }


  ########################################
  # optional vars
  ########################################
  load_balancer_enabled = var.load_balancer_enabled # Default: True
  friendly_name         = var.friendly_name

  dynamic "backend_pool_settings" { # var.backend_pool_settings
    for_each = var.backend_pool_settings != null ? var.backend_pool_settings : []
    content {
      backend_pools_send_receive_timeout_seconds   = lookup(backend_pool_settings.value, "backend_pools_send_receive_timeout_seconds", "60")
      enforce_backend_pools_certificate_name_check = lookup(backend_pool_settings.value, "enforce_backend_pools_certificate_name_check") # (Required) 
    }
  }

  tags = var.tags
}
