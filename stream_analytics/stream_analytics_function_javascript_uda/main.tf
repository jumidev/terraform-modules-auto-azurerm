

resource "azurerm_stream_analytics_function_javascript_uda" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  stream_analytics_job_id = var.stream_analytics_job_id

  dynamic "input" { # var.input
    for_each = var.input != null ? var.input : []
    content {
      type                    = lookup(input.value, "type") # (Required) possible values: any | array | bigint | datetime | float | nvarchar(max) | record
      configuration_parameter = lookup(input.value, "configuration_parameter", false)
    }
  }


  output {
    type = lookup(output.value, "type") # (Required) 
  }

  script = var.script
}
