

resource "azurerm_container_app_job" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  container_app_environment_id = var.container_app_environment_id

  template {
    container      = lookup(template.value, "container", null)
    init_container = lookup(template.value, "init_container", null)
    volume         = lookup(template.value, "volume", null)
  }

  replica_timeout_in_seconds = var.replica_timeout_in_seconds

  ########################################
  # optional vars
  ########################################
  workload_profile_name = var.workload_profile_name
  replica_retry_limit   = var.replica_retry_limit

  dynamic "secret" { # var.secrets
    for_each = var.secrets != null ? var.secrets : []
    content {
      name                = secret.key
      identity            = lookup(secret.value, "identity", null)
      key_vault_secret_id = lookup(secret.value, "key_vault_secret_id", null)
      value               = lookup(secret.value, "value", null)
    }
  }


  dynamic "registry" { # var.registries
    for_each = var.registries != null ? var.registries : []
    content {
      identity             = lookup(registry.value, "identity", null)
      username             = lookup(registry.value, "username", null)
      password_secret_name = lookup(registry.value, "password_secret_name", null)
      server               = lookup(registry.value, "server", null)
    }
  }


  dynamic "manual_trigger_config" { # var.manual_trigger_config
    for_each = var.manual_trigger_config != null ? var.manual_trigger_config : []
    content {
      parallelism              = lookup(manual_trigger_config.value, "parallelism", null)
      replica_completion_count = lookup(manual_trigger_config.value, "replica_completion_count", null)
    }
  }


  dynamic "event_trigger_config" { # var.event_trigger_config
    for_each = var.event_trigger_config != null ? var.event_trigger_config : []
    content {
      parallelism              = lookup(event_trigger_config.value, "parallelism", null)
      replica_completion_count = lookup(event_trigger_config.value, "replica_completion_count", null)

      dynamic "scale" { # event_trigger_config.value.scale
        for_each = event_trigger_config.value.scale != null ? event_trigger_config.value.scale : []
        content {
          max_executions              = lookup(scale.value, "max_executions", null)
          min_executions              = lookup(scale.value, "min_executions", null)
          polling_interval_in_seconds = lookup(scale.value, "polling_interval_in_seconds", null)

          dynamic "rules" { # scale.value.rules
            for_each = scale.value.rules != null ? scale.value.rules : []
            content {
              name             = rules.key
              custom_rule_type = lookup(rules.value, "custom_rule_type", null)
              metadata         = lookup(rules.value, "metadata", null)

              dynamic "authentication" { # rules.value.authentication
                for_each = rules.value.authentication != null ? rules.value.authentication : []
                content {
                  secret_name       = lookup(authentication.value, "secret_name", null)
                  trigger_parameter = lookup(authentication.value, "trigger_parameter", null)
                }
              }

            }
          }

        }
      }

    }
  }


  dynamic "schedule_trigger_config" { # var.schedule_trigger_config
    for_each = var.schedule_trigger_config != null ? var.schedule_trigger_config : []
    content {
      cron_expression          = lookup(schedule_trigger_config.value, "cron_expression") # (Required) 
      parallelism              = lookup(schedule_trigger_config.value, "parallelism", null)
      replica_completion_count = lookup(schedule_trigger_config.value, "replica_completion_count", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type", "None")
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  tags = var.tags
}
