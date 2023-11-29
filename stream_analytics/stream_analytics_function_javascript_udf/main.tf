data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}


resource "azurerm_stream_analytics_function_javascript_udf" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name

  dynamic "input" { # var.input
    for_each = var.input != null ? var.input : []
    content {
      type                    = lookup(input.value, "type") # (Required) possible values: array | any | bigint | datetime | float | nvarchar(max) | record
      configuration_parameter = lookup(input.value, "configuration_parameter", false)
    }
  }


  dynamic "output" { # var.output
    for_each = var.output != null ? var.output : []
    content {
      type = lookup(output.value, "type") # (Required) possible values: array | any | bigint | datetime | float | nvarchar(max) | record
    }
  }

  script = var.script
}
