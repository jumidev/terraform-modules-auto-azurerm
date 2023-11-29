

resource "azurerm_spring_cloud_builder" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  dynamic "build_pack_group" { # var.build_pack_group
    for_each = var.build_pack_group != null ? var.build_pack_group : []
    content {
      name           = build_pack_group.key
      build_pack_ids = lookup(build_pack_group.value, "build_pack_ids", null)
    }
  }


  stack {
    version = lookup(stack.value, "version") # (Required) 
  }

}
