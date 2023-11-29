data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_diagnostic" "this" {

  ########################################
  # required vars
  ########################################
  identifier               = var.identifier
  api_management_name      = data.azurerm_api_management.this.name
  resource_group_name      = data.azurerm_resource_group.this.name
  api_management_logger_id = var.api_management_logger_id

  ########################################
  # optional vars
  ########################################
  always_log_errors = var.always_log_errors

  dynamic "backend_request" { # var.backend_request
    for_each = var.backend_request != null ? var.backend_request : []
    content {
      body_bytes     = lookup(backend_request.value, "body_bytes", null)
      headers_to_log = lookup(backend_request.value, "headers_to_log", null)

      dynamic "data_masking" { # backend_request.value.data_masking
        for_each = backend_request.value.data_masking != null ? backend_request.value.data_masking : []
        content {

          dynamic "query_params" { # data_masking.value.query_params
            for_each = data_masking.value.query_params != null ? data_masking.value.query_params : []
            content {
              mode  = lookup(query_params.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(query_params.value, "value") # (Required) 
            }
          }


          dynamic "headers" { # data_masking.value.headers
            for_each = data_masking.value.headers != null ? data_masking.value.headers : []
            content {
              mode  = lookup(headers.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(headers.value, "value") # (Required) 
            }
          }

        }
      }

    }
  }


  dynamic "backend_response" { # var.backend_response
    for_each = var.backend_response != null ? var.backend_response : []
    content {
      body_bytes     = lookup(backend_response.value, "body_bytes", null)
      headers_to_log = lookup(backend_response.value, "headers_to_log", null)

      dynamic "data_masking" { # backend_response.value.data_masking
        for_each = backend_response.value.data_masking != null ? backend_response.value.data_masking : []
        content {

          dynamic "query_params" { # data_masking.value.query_params
            for_each = data_masking.value.query_params != null ? data_masking.value.query_params : []
            content {
              mode  = lookup(query_params.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(query_params.value, "value") # (Required) 
            }
          }


          dynamic "headers" { # data_masking.value.headers
            for_each = data_masking.value.headers != null ? data_masking.value.headers : []
            content {
              mode  = lookup(headers.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(headers.value, "value") # (Required) 
            }
          }

        }
      }

    }
  }


  dynamic "frontend_request" { # var.frontend_request
    for_each = var.frontend_request != null ? var.frontend_request : []
    content {
      body_bytes     = lookup(frontend_request.value, "body_bytes", null)
      headers_to_log = lookup(frontend_request.value, "headers_to_log", null)

      dynamic "data_masking" { # frontend_request.value.data_masking
        for_each = frontend_request.value.data_masking != null ? frontend_request.value.data_masking : []
        content {

          dynamic "query_params" { # data_masking.value.query_params
            for_each = data_masking.value.query_params != null ? data_masking.value.query_params : []
            content {
              mode  = lookup(query_params.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(query_params.value, "value") # (Required) 
            }
          }


          dynamic "headers" { # data_masking.value.headers
            for_each = data_masking.value.headers != null ? data_masking.value.headers : []
            content {
              mode  = lookup(headers.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(headers.value, "value") # (Required) 
            }
          }

        }
      }

    }
  }


  dynamic "frontend_response" { # var.frontend_response
    for_each = var.frontend_response != null ? var.frontend_response : []
    content {
      body_bytes     = lookup(frontend_response.value, "body_bytes", null)
      headers_to_log = lookup(frontend_response.value, "headers_to_log", null)

      dynamic "data_masking" { # frontend_response.value.data_masking
        for_each = frontend_response.value.data_masking != null ? frontend_response.value.data_masking : []
        content {

          dynamic "query_params" { # data_masking.value.query_params
            for_each = data_masking.value.query_params != null ? data_masking.value.query_params : []
            content {
              mode  = lookup(query_params.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(query_params.value, "value") # (Required) 
            }
          }


          dynamic "headers" { # data_masking.value.headers
            for_each = data_masking.value.headers != null ? data_masking.value.headers : []
            content {
              mode  = lookup(headers.value, "mode")  # (Required) possible values: Mask | Hide | query_params
              value = lookup(headers.value, "value") # (Required) 
            }
          }

        }
      }

    }
  }

  http_correlation_protocol = var.http_correlation_protocol
  log_client_ip             = var.log_client_ip
  sampling_percentage       = var.sampling_percentage
  verbosity                 = var.verbosity
  operation_name_format     = var.operation_name_format # Default: Name
}
