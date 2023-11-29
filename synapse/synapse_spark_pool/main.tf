

resource "azurerm_synapse_spark_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  synapse_workspace_id = var.synapse_workspace_id
  node_size_family     = var.node_size_family
  node_size            = var.node_size

  ########################################
  # optional vars
  ########################################
  node_count = var.node_count

  dynamic "auto_scale" { # var.auto_scale
    for_each = var.auto_scale != null ? var.auto_scale : []
    content {
      max_node_count = lookup(auto_scale.value, "max_node_count") # (Required) 
      min_node_count = lookup(auto_scale.value, "min_node_count") # (Required) 
    }
  }


  dynamic "auto_pause" { # var.auto_pause
    for_each = var.auto_pause != null ? var.auto_pause : []
    content {
      delay_in_minutes = lookup(auto_pause.value, "delay_in_minutes") # (Required) 
    }
  }

  cache_size                          = var.cache_size
  compute_isolation_enabled           = var.compute_isolation_enabled           # Default: False
  dynamic_executor_allocation_enabled = var.dynamic_executor_allocation_enabled # Default: False
  min_executors                       = var.min_executors
  max_executors                       = var.max_executors

  dynamic "library_requirement" { # var.library_requirement
    for_each = var.library_requirement != null ? var.library_requirement : []
    content {
      content  = lookup(library_requirement.value, "content")  # (Required) 
      filename = lookup(library_requirement.value, "filename") # (Required) 
    }
  }

  session_level_packages_enabled = var.session_level_packages_enabled # Default: False

  dynamic "spark_config" { # var.spark_config
    for_each = var.spark_config != null ? var.spark_config : []
    content {
      content  = lookup(spark_config.value, "content")  # (Required) 
      filename = lookup(spark_config.value, "filename") # (Required) 
    }
  }

  spark_log_folder    = var.spark_log_folder    # Default: /logs
  spark_events_folder = var.spark_events_folder # Default: /events
  spark_version       = var.spark_version       # Default: 2.4
  tags                = var.tags
}
