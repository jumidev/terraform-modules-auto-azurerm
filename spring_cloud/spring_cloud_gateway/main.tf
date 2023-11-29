

resource "azurerm_spring_cloud_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  ########################################
  # optional vars
  ########################################

  dynamic "api_metadata" { # var.api_metadata
    for_each = var.api_metadata != null ? var.api_metadata : []
    content {
      description       = lookup(api_metadata.value, "description", null)
      documentation_url = lookup(api_metadata.value, "documentation_url", null)
      server_url        = lookup(api_metadata.value, "server_url", null)
      title             = lookup(api_metadata.value, "title", null)
      version           = lookup(api_metadata.value, "version", null)
    }
  }

  application_performance_monitoring_types = var.application_performance_monitoring_types

  dynamic "client_authorization" { # var.client_authorization
    for_each = var.client_authorization != null ? var.client_authorization : []
    content {
      certificate_ids      = lookup(client_authorization.value, "certificate_ids", null)
      verification_enabled = lookup(client_authorization.value, "verification_enabled", null)
    }
  }


  dynamic "cors" { # var.cors
    for_each = var.cors != null ? var.cors : []
    content {
      credentials_allowed     = lookup(cors.value, "credentials_allowed", null)
      allowed_headers         = lookup(cors.value, "allowed_headers", null)
      allowed_methods         = lookup(cors.value, "allowed_methods", null)
      allowed_origins         = lookup(cors.value, "allowed_origins", null)
      allowed_origin_patterns = lookup(cors.value, "allowed_origin_patterns", null)
      exposed_headers         = lookup(cors.value, "exposed_headers", null)
      max_age_seconds         = lookup(cors.value, "max_age_seconds", null)
    }
  }

  environment_variables         = var.environment_variables
  https_only                    = var.https_only
  instance_count                = var.instance_count # Default: 1
  public_network_access_enabled = var.public_network_access_enabled

  dynamic "quota" { # var.quota
    for_each = var.quota != null ? var.quota : []
    content {
      cpu    = lookup(quota.value, "cpu", "1")
      memory = lookup(quota.value, "memory", "2Gi")
    }
  }

  sensitive_environment_variables = var.sensitive_environment_variables

  dynamic "sso" { # var.sso
    for_each = var.sso != null ? var.sso : []
    content {
      client_id     = lookup(sso.value, "client_id", null)
      client_secret = lookup(sso.value, "client_secret", null)
      issuer_uri    = lookup(sso.value, "issuer_uri", null)
      scope         = lookup(sso.value, "scope", null)
    }
  }

}
