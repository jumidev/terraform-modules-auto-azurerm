

resource "azurerm_kubernetes_fleet_update_run" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  kubernetes_fleet_manager_id = var.kubernetes_fleet_manager_id

  managed_cluster_update {
    upgrade              = lookup(managed_cluster_update.value, "upgrade") # (Required) 
    node_image_selection = lookup(managed_cluster_update.value, "node_image_selection", null)
  }


  ########################################
  # optional vars
  ########################################
  fleet_update_strategy_id = var.fleet_update_strategy_id

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
