data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_app" "this" {

  ########################################
  # required vars
  ########################################
  container_app_environment_id = var.container_app_environment_id
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  revision_mode                = var.revision_mode

  template {
    container              = lookup(template.value, "container") # (Required) 
    max_replicas           = lookup(template.value, "max_replicas", null)
    min_replicas           = lookup(template.value, "min_replicas", null)
    azure_queue_scale_rule = lookup(template.value, "azure_queue_scale_rule", null)
    custom_scale_rule      = lookup(template.value, "custom_scale_rule", null)
    http_scale_rule        = lookup(template.value, "http_scale_rule", null)
    tcp_scale_rule         = lookup(template.value, "tcp_scale_rule", null)
    revision_suffix        = lookup(template.value, "revision_suffix", null)
    volume                 = lookup(template.value, "volume", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "dapr" { # var.dapr
    for_each = var.dapr != null ? var.dapr : []
    content {
      app_id       = lookup(dapr.value, "app_id") # (Required) 
      app_port     = lookup(dapr.value, "app_port", null)
      app_protocol = lookup(dapr.value, "app_protocol", "http")
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "ingress" { # var.ingress
    for_each = var.ingress != null ? var.ingress : []
    content {
      allow_insecure_connections = lookup(ingress.value, "allow_insecure_connections", null)
      custom_domain              = lookup(ingress.value, "custom_domain", null)
      fqdn                       = lookup(ingress.value, "fqdn", null)
      external_enabled           = lookup(ingress.value, "external_enabled", false)
      target_port                = lookup(ingress.value, "target_port") # (Required) 
      exposed_port               = lookup(ingress.value, "exposed_port", null)

      dynamic "traffic_weight" { # ingress.value.traffic_weight
        for_each = ingress.value.traffic_weight != null ? ingress.value.traffic_weight : []
        content {
          label           = lookup(traffic_weight.value, "label", null)
          latest_revision = lookup(traffic_weight.value, "latest_revision", null)
          revision_suffix = lookup(traffic_weight.value, "revision_suffix", null)
          percentage      = lookup(traffic_weight.value, "percentage") # (Required) 
        }
      }

      transport = lookup(ingress.value, "transport", "auto")
    }
  }


  dynamic "registry" { # var.registry
    for_each = var.registry != null ? var.registry : []
    content {
      server               = lookup(registry.value, "server") # (Required) 
      identity             = lookup(registry.value, "identity", null)
      password_secret_name = lookup(registry.value, "password_secret_name", null)
      username             = lookup(registry.value, "username", null)
    }
  }

  secret = var.secret
  tags   = var.tags
}
