data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_insights_workbook_template" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  galleries {
    name          = lookup(galleries.value, "name")     # (Required) 
    category      = lookup(galleries.value, "category") # (Required) 
    order         = lookup(galleries.value, "order", "0")
    resource_type = lookup(galleries.value, "resource_type", "Azure Monitor")
    type          = lookup(galleries.value, "type", "workbook")
  }

  location      = var.location
  template_data = var.template_data

  ########################################
  # optional vars
  ########################################
  author    = var.author
  localized = var.localized
  priority  = var.priority # Default: 0
  tags      = var.tags
}
