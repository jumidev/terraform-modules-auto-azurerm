data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_cognitive_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  kind                = var.kind
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  custom_subdomain_name      = var.custom_subdomain_name
  dynamic_throttling_enabled = var.dynamic_throttling_enabled

  dynamic "customer_managed_key" { # var.customer_managed_key
    for_each = var.customer_managed_key != null ? var.customer_managed_key : []
    content {
      key_vault_key_id   = lookup(customer_managed_key.value, "key_vault_key_id") # (Required) 
      identity_client_id = lookup(customer_managed_key.value, "identity_client_id", null)
    }
  }

  fqdns = var.fqdns

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  local_auth_enabled              = var.local_auth_enabled # Default: True
  metrics_advisor_aad_client_id   = var.metrics_advisor_aad_client_id
  metrics_advisor_aad_tenant_id   = var.metrics_advisor_aad_tenant_id
  metrics_advisor_super_user_name = var.metrics_advisor_super_user_name
  metrics_advisor_website_name    = var.metrics_advisor_website_name

  dynamic "network_acls" { # var.network_acls
    for_each = var.network_acls != null ? var.network_acls : []
    content {
      default_action = lookup(network_acls.value, "default_action") # (Required) possible values: Allow | Deny
      ip_rules       = lookup(network_acls.value, "ip_rules", null)

      dynamic "virtual_network_rules" { # network_acls.value.virtual_network_rules
        for_each = network_acls.value.virtual_network_rules != null ? network_acls.value.virtual_network_rules : []
        content {
          subnet_id                            = lookup(virtual_network_rules.value, "subnet_id") # (Required) 
          ignore_missing_vnet_service_endpoint = lookup(virtual_network_rules.value, "ignore_missing_vnet_service_endpoint", false)
        }
      }

    }
  }

  outbound_network_access_restricted           = var.outbound_network_access_restricted # Default: False
  public_network_access_enabled                = var.public_network_access_enabled      # Default: True
  qna_runtime_endpoint                         = var.qna_runtime_endpoint
  custom_question_answering_search_service_id  = var.custom_question_answering_search_service_id
  custom_question_answering_search_service_key = var.custom_question_answering_search_service_key

  dynamic "storage" { # var.storage
    for_each = var.storage != null ? var.storage : []
    content {
      storage_account_id = lookup(storage.value, "storage_account_id") # (Required) 
      identity_client_id = lookup(storage.value, "identity_client_id", null)
    }
  }

  tags = var.tags
}
