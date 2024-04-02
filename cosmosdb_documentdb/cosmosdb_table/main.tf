

resource "azurerm_cosmosdb_table" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name

  ########################################
  # optional vars
  ########################################
  throughput = var.throughput

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }

}
