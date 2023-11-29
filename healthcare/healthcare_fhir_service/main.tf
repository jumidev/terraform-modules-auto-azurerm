data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_healthcare_fhir_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  workspace_id        = var.workspace_id
  location            = var.location

  authentication {
    authority           = lookup(authentication.value, "authority") # (Required) 
    audience            = lookup(authentication.value, "audience")  # (Required) 
    smart_proxy_enabled = lookup(authentication.value, "smart_proxy_enabled", null)
  }


  ########################################
  # optional vars
  ########################################
  kind = var.kind # Default: fhir-R4

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: UserAssigned | SystemAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  access_policy_object_ids = var.access_policy_object_ids

  dynamic "cors" { # var.cors
    for_each = var.cors != null ? var.cors : []
    content {
      allowed_origins     = lookup(cors.value, "allowed_origins") # (Required) 
      allowed_headers     = lookup(cors.value, "allowed_headers") # (Required) 
      allowed_methods     = lookup(cors.value, "allowed_methods") # (Required) possible values: DELETE | GET | HEAD | MERGE | POST | OPTIONS | PATCH | PUT
      max_age_in_seconds  = lookup(cors.value, "max_age_in_seconds", null)
      credentials_allowed = lookup(cors.value, "credentials_allowed", null)
    }
  }

  container_registry_login_server_url = var.container_registry_login_server_url

  dynamic "oci_artifact" { # var.oci_artifact
    for_each = var.oci_artifact != null ? var.oci_artifact : []
    content {
      login_server = lookup(oci_artifact.value, "login_server") # (Required) 
      image_name   = lookup(oci_artifact.value, "image_name", null)
      digest       = lookup(oci_artifact.value, "digest", null)
    }
  }

  configuration_export_storage_account_name = var.configuration_export_storage_account_name
  tags                                      = var.tags
}
