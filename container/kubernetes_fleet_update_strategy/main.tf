

resource "azurerm_kubernetes_fleet_update_strategy" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  kubernetes_fleet_manager_id = var.kubernetes_fleet_manager_id

  dynamic "stage" { # var.stages
    for_each = var.stages != null ? var.stages : []
    content {

      dynamic "group" { # stage.value.group
        for_each = stage.value.group != null ? stage.value.group : []
        content {
          name = group.key
        }
      }

      name                        = stage.key
      after_stage_wait_in_seconds = lookup(stage.value, "after_stage_wait_in_seconds", null)
    }
  }

}
