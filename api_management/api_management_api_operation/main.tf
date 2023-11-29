data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_api_operation" "this" {

  ########################################
  # required vars
  ########################################
  operation_id        = var.operation_id
  api_name            = var.api_name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  display_name        = var.display_name
  method              = var.method
  url_template        = var.url_template

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "request" { # var.request
    for_each = var.request != null ? var.request : []
    content {
      description     = lookup(request.value, "description", null)
      header          = lookup(request.value, "header", null)
      query_parameter = lookup(request.value, "query_parameter", null)

      dynamic "representation" { # request.value.representation
        for_each = request.value.representation != null ? request.value.representation : []
        content {
          content_type   = lookup(representation.value, "content_type") # (Required) 
          form_parameter = lookup(representation.value, "form_parameter", null)
          example        = lookup(representation.value, "example", null)
          schema_id      = lookup(representation.value, "schema_id", null)
          type_name      = lookup(representation.value, "type_name", null)
        }
      }

    }
  }


  dynamic "response" { # var.response
    for_each = var.response != null ? var.response : []
    content {
      status_code = lookup(response.value, "status_code") # (Required) 
      description = lookup(response.value, "description", null)
      header      = lookup(response.value, "header", null)

      dynamic "representation" { # response.value.representation
        for_each = response.value.representation != null ? response.value.representation : []
        content {
          content_type   = lookup(representation.value, "content_type") # (Required) 
          form_parameter = lookup(representation.value, "form_parameter", null)
          example        = lookup(representation.value, "example", null)
          schema_id      = lookup(representation.value, "schema_id", null)
          type_name      = lookup(representation.value, "type_name", null)
        }
      }

    }
  }


  dynamic "template_parameter" { # var.template_parameter
    for_each = var.template_parameter != null ? var.template_parameter : []
    content {
      name          = template_parameter.key
      required      = lookup(template_parameter.value, "required") # (Required) 
      type          = lookup(template_parameter.value, "type")     # (Required) 
      description   = lookup(template_parameter.value, "description", null)
      default_value = lookup(template_parameter.value, "default_value", null)
      values        = lookup(template_parameter.value, "values", null)
      example       = lookup(template_parameter.value, "example", null)
      schema_id     = lookup(template_parameter.value, "schema_id", null)
      type_name     = lookup(template_parameter.value, "type_name", null)
    }
  }

}
