

resource "azurerm_cdn_frontdoor_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  cdn_frontdoor_rule_set_id = var.cdn_frontdoor_rule_set_id
  order                     = var.order

  actions {
    url_rewrite_action                  = lookup(actions.value, "url_rewrite_action", null)
    url_redirect_action                 = lookup(actions.value, "url_redirect_action", null)
    route_configuration_override_action = lookup(actions.value, "route_configuration_override_action", null)
    request_header_action               = lookup(actions.value, "request_header_action", null)
    response_header_action              = lookup(actions.value, "response_header_action", null)
  }


  ########################################
  # optional vars
  ########################################
  behavior_on_match = var.behavior_on_match # Default: Continue

  dynamic "conditions" { # var.conditions
    for_each = var.conditions != null ? var.conditions : []
    content {

      dynamic "remote_address_condition" { # conditions.value.remote_address_condition
        for_each = conditions.value.remote_address_condition != null ? conditions.value.remote_address_condition : []
        content {
          operator         = lookup(remote_address_condition.value, "operator", "IPMatch")
          negate_condition = lookup(remote_address_condition.value, "negate_condition", false)
          match_values     = lookup(remote_address_condition.value, "match_values", null)
        }
      }


      dynamic "request_method_condition" { # conditions.value.request_method_condition
        for_each = conditions.value.request_method_condition != null ? conditions.value.request_method_condition : []
        content {
          match_values     = lookup(request_method_condition.value, "match_values") # (Required) possible values: GET | POST | PUT | DELETE | HEAD | OPTIONS | TRACE
          operator         = lookup(request_method_condition.value, "operator", "Equal")
          negate_condition = lookup(request_method_condition.value, "negate_condition", false)
        }
      }


      dynamic "query_string_condition" { # conditions.value.query_string_condition
        for_each = conditions.value.query_string_condition != null ? conditions.value.query_string_condition : []
        content {
          operator         = lookup(query_string_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(query_string_condition.value, "negate_condition", false)
          match_values     = lookup(query_string_condition.value, "match_values", null)
          transforms       = lookup(query_string_condition.value, "transforms", null)
        }
      }


      dynamic "post_args_condition" { # conditions.value.post_args_condition
        for_each = conditions.value.post_args_condition != null ? conditions.value.post_args_condition : []
        content {
          post_args_name   = lookup(post_args_condition.value, "post_args_name") # (Required) 
          operator         = lookup(post_args_condition.value, "operator")       # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(post_args_condition.value, "negate_condition", false)
          match_values     = lookup(post_args_condition.value, "match_values", null)
          transforms       = lookup(post_args_condition.value, "transforms", null)
        }
      }


      dynamic "request_uri_condition" { # conditions.value.request_uri_condition
        for_each = conditions.value.request_uri_condition != null ? conditions.value.request_uri_condition : []
        content {
          operator         = lookup(request_uri_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(request_uri_condition.value, "negate_condition", false)
          match_values     = lookup(request_uri_condition.value, "match_values", null)
          transforms       = lookup(request_uri_condition.value, "transforms", null)
        }
      }


      dynamic "request_header_condition" { # conditions.value.request_header_condition
        for_each = conditions.value.request_header_condition != null ? conditions.value.request_header_condition : []
        content {
          header_name      = lookup(request_header_condition.value, "header_name") # (Required) 
          operator         = lookup(request_header_condition.value, "operator")    # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(request_header_condition.value, "negate_condition", false)
          match_values     = lookup(request_header_condition.value, "match_values", null)
          transforms       = lookup(request_header_condition.value, "transforms", null)
        }
      }


      dynamic "request_body_condition" { # conditions.value.request_body_condition
        for_each = conditions.value.request_body_condition != null ? conditions.value.request_body_condition : []
        content {
          operator         = lookup(request_body_condition.value, "operator")     # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          match_values     = lookup(request_body_condition.value, "match_values") # (Required) 
          negate_condition = lookup(request_body_condition.value, "negate_condition", false)
          transforms       = lookup(request_body_condition.value, "transforms", null)
        }
      }


      dynamic "request_scheme_condition" { # conditions.value.request_scheme_condition
        for_each = conditions.value.request_scheme_condition != null ? conditions.value.request_scheme_condition : []
        content {
          operator         = lookup(request_scheme_condition.value, "operator", "Equal")
          negate_condition = lookup(request_scheme_condition.value, "negate_condition", false)
          match_values     = lookup(request_scheme_condition.value, "match_values", null)
        }
      }


      dynamic "url_path_condition" { # conditions.value.url_path_condition
        for_each = conditions.value.url_path_condition != null ? conditions.value.url_path_condition : []
        content {
          operator         = lookup(url_path_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(url_path_condition.value, "negate_condition", false)
          match_values     = lookup(url_path_condition.value, "match_values", null)
          transforms       = lookup(url_path_condition.value, "transforms", null)
        }
      }


      dynamic "url_file_extension_condition" { # conditions.value.url_file_extension_condition
        for_each = conditions.value.url_file_extension_condition != null ? conditions.value.url_file_extension_condition : []
        content {
          operator         = lookup(url_file_extension_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(url_file_extension_condition.value, "negate_condition", false)
          match_values     = lookup(url_file_extension_condition.value, "match_values") # (Required) 
          transforms       = lookup(url_file_extension_condition.value, "transforms", null)
        }
      }


      dynamic "url_filename_condition" { # conditions.value.url_filename_condition
        for_each = conditions.value.url_filename_condition != null ? conditions.value.url_filename_condition : []
        content {
          operator         = lookup(url_filename_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          match_values     = lookup(url_filename_condition.value, "match_values", null)
          negate_condition = lookup(url_filename_condition.value, "negate_condition", false)
          transforms       = lookup(url_filename_condition.value, "transforms", null)
        }
      }


      dynamic "http_version_condition" { # conditions.value.http_version_condition
        for_each = conditions.value.http_version_condition != null ? conditions.value.http_version_condition : []
        content {
          match_values     = lookup(http_version_condition.value, "match_values") # (Required) possible values: 2.0 | 1.1 | 1.0 | 0.9
          operator         = lookup(http_version_condition.value, "operator", "Equal")
          negate_condition = lookup(http_version_condition.value, "negate_condition", false)
        }
      }


      dynamic "cookies_condition" { # conditions.value.cookies_condition
        for_each = conditions.value.cookies_condition != null ? conditions.value.cookies_condition : []
        content {
          cookie_name      = lookup(cookies_condition.value, "cookie_name") # (Required) 
          operator         = lookup(cookies_condition.value, "operator")    # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(cookies_condition.value, "negate_condition", false)
          match_values     = lookup(cookies_condition.value, "match_values", null)
          transforms       = lookup(cookies_condition.value, "transforms", null)
        }
      }


      dynamic "is_device_condition" { # conditions.value.is_device_condition
        for_each = conditions.value.is_device_condition != null ? conditions.value.is_device_condition : []
        content {
          operator                            = lookup(is_device_condition.value, "operator", "Equal")
          negate_condition                    = lookup(is_device_condition.value, "negate_condition", false)
          match_values                        = lookup(is_device_condition.value, "match_values", null)
          IPv4                                = lookup(is_device_condition.value, "IPv4", null)
          IPv6                                = lookup(is_device_condition.value, "IPv6", null)
          route_configuration_override_action = lookup(is_device_condition.value, "route_configuration_override_action", null)
          request_header_action               = lookup(is_device_condition.value, "request_header_action", null)
          response_header_action              = lookup(is_device_condition.value, "response_header_action", null)
          url_redirect_action                 = lookup(is_device_condition.value, "url_redirect_action", null)
          url_rewrite_action                  = lookup(is_device_condition.value, "url_rewrite_action", null)
        }
      }


      dynamic "socket_address_condition" { # conditions.value.socket_address_condition
        for_each = conditions.value.socket_address_condition != null ? conditions.value.socket_address_condition : []
        content {
          operator         = lookup(socket_address_condition.value, "operator", "IPMatch")
          negate_condition = lookup(socket_address_condition.value, "negate_condition", false)
          match_values     = lookup(socket_address_condition.value, "match_values", null)
        }
      }


      dynamic "client_port_condition" { # conditions.value.client_port_condition
        for_each = conditions.value.client_port_condition != null ? conditions.value.client_port_condition : []
        content {
          operator         = lookup(client_port_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          negate_condition = lookup(client_port_condition.value, "negate_condition", false)
          match_values     = lookup(client_port_condition.value, "match_values", null)
        }
      }


      dynamic "server_port_condition" { # conditions.value.server_port_condition
        for_each = conditions.value.server_port_condition != null ? conditions.value.server_port_condition : []
        content {
          operator         = lookup(server_port_condition.value, "operator")     # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          match_values     = lookup(server_port_condition.value, "match_values") # (Required) possible values: 80 | 443
          negate_condition = lookup(server_port_condition.value, "negate_condition", false)
        }
      }


      dynamic "host_name_condition" { # conditions.value.host_name_condition
        for_each = conditions.value.host_name_condition != null ? conditions.value.host_name_condition : []
        content {
          operator         = lookup(host_name_condition.value, "operator") # (Required) possible values: Any | Equal | Contains | BeginsWith | EndsWith | LessThan | LessThanOrEqual | GreaterThan | GreaterThanOrEqual | RegEx
          match_values     = lookup(host_name_condition.value, "match_values", null)
          transforms       = lookup(host_name_condition.value, "transforms", null)
          negate_condition = lookup(host_name_condition.value, "negate_condition", false)
        }
      }


      dynamic "ssl_protocol_condition" { # conditions.value.ssl_protocol_condition
        for_each = conditions.value.ssl_protocol_condition != null ? conditions.value.ssl_protocol_condition : []
        content {
          match_values     = lookup(ssl_protocol_condition.value, "match_values") # (Required) possible values: TLSv1 | TLSv1.1 | TLSv1.2
          operator         = lookup(ssl_protocol_condition.value, "operator", "Equal")
          negate_condition = lookup(ssl_protocol_condition.value, "negate_condition", false)
        }
      }

    }
  }

}
