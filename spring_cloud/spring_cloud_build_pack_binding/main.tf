

resource "azurerm_spring_cloud_build_pack_binding" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_builder_id = var.spring_cloud_builder_id

  ########################################
  # optional vars
  ########################################
  binding_type = var.binding_type

  dynamic "launch" { # var.launch
    for_each = var.launch != null ? var.launch : []
    content {
      properties = lookup(launch.value, "properties", null)
      secrets    = lookup(launch.value, "secrets", null)
    }
  }

}
