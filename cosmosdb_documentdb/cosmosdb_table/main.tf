data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_cosmosdb_account" "this" {
  name                = var.cosmosdb_account_name
  resource_group_name = var.cosmosdb_account_resource_group_name == null ? null : var.cosmosdb_account_resource_group_name
}


resource "azurerm_cosmosdb_table" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = data.azurerm_cosmosdb_account.this.name

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
