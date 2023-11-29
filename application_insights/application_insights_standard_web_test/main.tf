data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_insights_standard_web_test" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  location                = var.location
  application_insights_id = var.application_insights_id
  geo_locations           = var.geo_locations

  request {
    url                              = lookup(request.value, "url") # (Required) 
    body                             = lookup(request.value, "body", null)
    follow_redirects_enabled         = lookup(request.value, "follow_redirects_enabled", true)
    header                           = lookup(request.value, "header", null)
    http_verb                        = lookup(request.value, "http_verb", "GET")
    parse_dependent_requests_enabled = lookup(request.value, "parse_dependent_requests_enabled", true)
  }


  ########################################
  # optional vars
  ########################################
  description   = var.description
  enabled       = var.enabled
  frequency     = var.frequency # Default: 300
  retry_enabled = var.retry_enabled
  tags          = var.tags
  timeout       = var.timeout # Default: 30

  dynamic "validation_rules" { # var.validation_rules
    for_each = var.validation_rules != null ? var.validation_rules : []
    content {

      dynamic "content" { # validation_rules.value.content
        for_each = validation_rules.value.content != null ? validation_rules.value.content : []
        content {
          content_match      = lookup(content.value, "content_match") # (Required) 
          ignore_case        = lookup(content.value, "ignore_case", null)
          pass_if_text_found = lookup(content.value, "pass_if_text_found", null)
        }
      }

      expected_status_code        = lookup(validation_rules.value, "expected_status_code", null)
      ssl_cert_remaining_lifetime = lookup(validation_rules.value, "ssl_cert_remaining_lifetime", null)
      ssl_check_enabled           = lookup(validation_rules.value, "ssl_check_enabled", null)
    }
  }

}
