

resource "azurerm_kubernetes_flux_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  cluster_id = var.cluster_id

  kustomizations {
    name                       = lookup(kustomizations.value, "name") # (Required) 
    path                       = lookup(kustomizations.value, "path", null)
    timeout_in_seconds         = lookup(kustomizations.value, "timeout_in_seconds", 600)
    sync_interval_in_seconds   = lookup(kustomizations.value, "sync_interval_in_seconds", 600)
    retry_interval_in_seconds  = lookup(kustomizations.value, "retry_interval_in_seconds", 600)
    recreating_enabled         = lookup(kustomizations.value, "recreating_enabled", false)
    garbage_collection_enabled = lookup(kustomizations.value, "garbage_collection_enabled", false)
    depends_on                 = lookup(kustomizations.value, "depends_on", null)
  }

  namespace = var.namespace

  ########################################
  # optional vars
  ########################################

  dynamic "blob_storage" { # var.blob_storage
    for_each = var.blob_storage != null ? var.blob_storage : []
    content {
      container_id         = lookup(blob_storage.value, "container_id") # (Required) 
      account_key          = lookup(blob_storage.value, "account_key", null)
      local_auth_reference = lookup(blob_storage.value, "local_auth_reference", null)

      dynamic "managed_identity" { # blob_storage.value.managed_identity
        for_each = blob_storage.value.managed_identity != null ? blob_storage.value.managed_identity : []
        content {
          client_id = lookup(managed_identity.value, "client_id") # (Required) 
        }
      }

      sas_token = lookup(blob_storage.value, "sas_token", null)

      dynamic "service_principal" { # blob_storage.value.service_principal
        for_each = blob_storage.value.service_principal != null ? blob_storage.value.service_principal : []
        content {
          client_id                     = lookup(service_principal.value, "client_id") # (Required) 
          tenant_id                     = lookup(service_principal.value, "tenant_id") # (Required) 
          client_certificate_base64     = lookup(service_principal.value, "client_certificate_base64", null)
          client_certificate_password   = lookup(service_principal.value, "client_certificate_password", null)
          client_certificate_send_chain = lookup(service_principal.value, "client_certificate_send_chain", null)
          client_secret                 = lookup(service_principal.value, "client_secret", null)
        }
      }

      sync_interval_in_seconds = lookup(blob_storage.value, "sync_interval_in_seconds", null)
      timeout_in_seconds       = lookup(blob_storage.value, "timeout_in_seconds", null)
    }
  }


  dynamic "bucket" { # var.bucket
    for_each = var.bucket != null ? var.bucket : []
    content {
      bucket_name              = lookup(bucket.value, "bucket_name") # (Required) 
      url                      = lookup(bucket.value, "url")         # (Required) 
      access_key               = lookup(bucket.value, "access_key", null)
      secret_key_base64        = lookup(bucket.value, "secret_key_base64", null)
      tls_enabled              = lookup(bucket.value, "tls_enabled", true)
      local_auth_reference     = lookup(bucket.value, "local_auth_reference", null)
      sync_interval_in_seconds = lookup(bucket.value, "sync_interval_in_seconds", 600)
      timeout_in_seconds       = lookup(bucket.value, "timeout_in_seconds", 600)
    }
  }


  dynamic "git_repository" { # var.git_repository
    for_each = var.git_repository != null ? var.git_repository : []
    content {
      url                      = lookup(git_repository.value, "url")             # (Required) 
      reference_type           = lookup(git_repository.value, "reference_type")  # (Required) possible values: branch | commit | semver | tag
      reference_value          = lookup(git_repository.value, "reference_value") # (Required) 
      https_ca_cert_base64     = lookup(git_repository.value, "https_ca_cert_base64", null)
      https_user               = lookup(git_repository.value, "https_user", null)
      https_key_base64         = lookup(git_repository.value, "https_key_base64", null)
      local_auth_reference     = lookup(git_repository.value, "local_auth_reference", null)
      ssh_private_key_base64   = lookup(git_repository.value, "ssh_private_key_base64", null)
      ssh_known_hosts_base64   = lookup(git_repository.value, "ssh_known_hosts_base64", null)
      sync_interval_in_seconds = lookup(git_repository.value, "sync_interval_in_seconds", 600)
      timeout_in_seconds       = lookup(git_repository.value, "timeout_in_seconds", 600)
    }
  }

  scope                             = var.scope                             # Default: namespace
  continuous_reconciliation_enabled = var.continuous_reconciliation_enabled # Default: True
}
