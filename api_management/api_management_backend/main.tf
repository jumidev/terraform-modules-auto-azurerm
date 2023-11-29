data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_backend" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  protocol            = var.protocol
  url                 = var.url

  ########################################
  # optional vars
  ########################################

  dynamic "credentials" { # var.credentials
    for_each = var.credentials != null ? var.credentials : []
    content {

      dynamic "authorization" { # credentials.value.authorization
        for_each = credentials.value.authorization != null ? credentials.value.authorization : []
        content {
          parameter = lookup(authorization.value, "parameter", null)
          scheme    = lookup(authorization.value, "scheme", null)
        }
      }

      certificate = lookup(credentials.value, "certificate", null)
      header      = lookup(credentials.value, "header", null)
      query       = lookup(credentials.value, "query", null)
    }
  }

  description = var.description

  dynamic "proxy" { # var.proxy
    for_each = var.proxy != null ? var.proxy : []
    content {
      password = lookup(proxy.value, "password", null)
      url      = lookup(proxy.value, "url")      # (Required) 
      username = lookup(proxy.value, "username") # (Required) 
    }
  }

  resource_id = var.resource_id

  dynamic "service_fabric_cluster" { # var.service_fabric_cluster
    for_each = var.service_fabric_cluster != null ? var.service_fabric_cluster : []
    content {
      client_certificate_thumbprint    = lookup(service_fabric_cluster.value, "client_certificate_thumbprint", null)
      client_certificate_id            = lookup(service_fabric_cluster.value, "client_certificate_id", null)
      management_endpoints             = lookup(service_fabric_cluster.value, "management_endpoints")             # (Required) 
      max_partition_resolution_retries = lookup(service_fabric_cluster.value, "max_partition_resolution_retries") # (Required) 
      server_certificate_thumbprints   = lookup(service_fabric_cluster.value, "server_certificate_thumbprints", null)
      server_x509_name                 = lookup(service_fabric_cluster.value, "server_x509_name", null)
    }
  }

  title = var.title

  dynamic "tls" { # var.tls
    for_each = var.tls != null ? var.tls : []
    content {
      validate_certificate_chain = lookup(tls.value, "validate_certificate_chain", null)
      validate_certificate_name  = lookup(tls.value, "validate_certificate_name", null)
    }
  }

}
