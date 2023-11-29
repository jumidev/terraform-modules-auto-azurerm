data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_api" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  revision            = var.revision

  ########################################
  # optional vars
  ########################################
  api_type     = var.api_type # Default: http
  display_name = var.display_name
  path         = var.path
  protocols    = var.protocols

  dynamic "contact" { # var.contact
    for_each = var.contact != null ? var.contact : []
    content {
      email = lookup(contact.value, "email", null)
      name  = contact.key
      url   = lookup(contact.value, "url", null)
    }
  }

  description = var.description

  dynamic "import" { # var.import
    for_each = var.import != null ? var.import : []
    content {
      content_format = lookup(import.value, "content_format") # (Required) possible values: openapi | openapi+json | openapi+json-link | openapi-link | swagger-json | swagger-link-json | wadl-link-json | wadl-xml | wsdl | wsdl-link
      content_value  = lookup(import.value, "content_value")  # (Required) 

      dynamic "wsdl_selector" { # import.value.wsdl_selector
        for_each = import.value.wsdl_selector != null ? import.value.wsdl_selector : []
        content {
          service_name  = lookup(wsdl_selector.value, "service_name")  # (Required) 
          endpoint_name = lookup(wsdl_selector.value, "endpoint_name") # (Required) 
        }
      }

    }
  }


  dynamic "license" { # var.license
    for_each = var.license != null ? var.license : []
    content {
      name = license.key
      url  = lookup(license.value, "url", null)
    }
  }


  dynamic "oauth2_authorization" { # var.oauth2_authorization
    for_each = var.oauth2_authorization != null ? var.oauth2_authorization : []
    content {
      authorization_server_name = lookup(oauth2_authorization.value, "authorization_server_name") # (Required) 
      scope                     = lookup(oauth2_authorization.value, "scope", null)
    }
  }


  dynamic "openid_authentication" { # var.openid_authentication
    for_each = var.openid_authentication != null ? var.openid_authentication : []
    content {
      openid_provider_name         = lookup(openid_authentication.value, "openid_provider_name") # (Required) 
      bearer_token_sending_methods = lookup(openid_authentication.value, "bearer_token_sending_methods", null)
    }
  }

  service_url       = var.service_url
  soap_pass_through = var.soap_pass_through # Default: False

  dynamic "subscription_key_parameter_names" { # var.subscription_key_parameter_names
    for_each = var.subscription_key_parameter_names != null ? var.subscription_key_parameter_names : []
    content {
      header = lookup(subscription_key_parameter_names.value, "header") # (Required) 
      query  = lookup(subscription_key_parameter_names.value, "query")  # (Required) 
    }
  }

  subscription_required = var.subscription_required # Default: True
  terms_of_service_url  = var.terms_of_service_url
  version               = var.version
  version_set_id        = var.version_set_id
  revision_description  = var.revision_description
  version_description   = var.version_description
  source_api_id         = var.source_api_id
}
