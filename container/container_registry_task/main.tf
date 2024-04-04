

resource "azurerm_container_registry_task" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  container_registry_id = var.container_registry_id

  ########################################
  # optional vars
  ########################################
  agent_pool_name = var.agent_pool_name

  dynamic "agent_setting" { # var.agent_setting
    for_each = var.agent_setting != null ? var.agent_setting : []
    content {
      cpu = lookup(agent_setting.value, "cpu") # (Required) 
    }
  }

  enabled = var.enabled # Default: True

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "platform" { # var.platform
    for_each = var.platform != null ? var.platform : []
    content {
      architecture = lookup(platform.value, "architecture", null)
      variant      = lookup(platform.value, "variant", null)
    }
  }


  dynamic "docker_step" { # var.docker_step
    for_each = var.docker_step != null ? var.docker_step : []
    content {
      context_access_token = lookup(docker_step.value, "context_access_token") # (Required) 
      context_path         = lookup(docker_step.value, "context_path")         # (Required) 
      dockerfile_path      = lookup(docker_step.value, "dockerfile_path")      # (Required) 
      arguments            = lookup(docker_step.value, "arguments", null)
      image_names          = lookup(docker_step.value, "image_names", null)
      cache_enabled        = lookup(docker_step.value, "cache_enabled", true)
      push_enabled         = lookup(docker_step.value, "push_enabled", true)
      secret_arguments     = lookup(docker_step.value, "secret_arguments", null)
      target               = lookup(docker_step.value, "target", null)
    }
  }


  dynamic "encoded_step" { # var.encoded_step
    for_each = var.encoded_step != null ? var.encoded_step : []
    content {
      task_content         = lookup(encoded_step.value, "task_content") # (Required) 
      context_access_token = lookup(encoded_step.value, "context_access_token", null)
      context_path         = lookup(encoded_step.value, "context_path", null)
      secret_values        = lookup(encoded_step.value, "secret_values", null)
      value_content        = lookup(encoded_step.value, "value_content", null)
      values               = lookup(encoded_step.value, "values", null)
    }
  }


  dynamic "file_step" { # var.file_step
    for_each = var.file_step != null ? var.file_step : []
    content {
      task_file_path       = lookup(file_step.value, "task_file_path") # (Required) 
      context_access_token = lookup(file_step.value, "context_access_token", null)
      context_path         = lookup(file_step.value, "context_path", null)
      secret_values        = lookup(file_step.value, "secret_values", null)
      value_file_path      = lookup(file_step.value, "value_file_path", null)
      values               = lookup(file_step.value, "values", null)
    }
  }


  dynamic "base_image_trigger" { # var.base_image_trigger
    for_each = var.base_image_trigger != null ? var.base_image_trigger : []
    content {
      name                        = base_image_trigger.key
      type                        = lookup(base_image_trigger.value, "type") # (Required) possible values: All | Runtime
      enabled                     = lookup(base_image_trigger.value, "enabled", true)
      update_trigger_endpoint     = lookup(base_image_trigger.value, "update_trigger_endpoint", null)
      update_trigger_payload_type = lookup(base_image_trigger.value, "update_trigger_payload_type", null)
    }
  }


  dynamic "source_trigger" { # var.source_triggers
    for_each = var.source_triggers != null ? var.source_triggers : []
    content {
      name           = source_trigger.key
      events         = lookup(source_trigger.value, "events")         # (Required) possible values: commit | pullrequest
      repository_url = lookup(source_trigger.value, "repository_url") # (Required) 
      source_type    = lookup(source_trigger.value, "source_type")    # (Required) possible values: Github | VisualStudioTeamService

      dynamic "authentication" { # source_trigger.value.authentication
        for_each = source_trigger.value.authentication != null ? source_trigger.value.authentication : []
        content {
          token             = lookup(authentication.value, "token")      # (Required) 
          token_type        = lookup(authentication.value, "token_type") # (Required) possible values: PAT | OAuth
          expire_in_seconds = lookup(authentication.value, "expire_in_seconds", null)
          refresh_token     = lookup(authentication.value, "refresh_token", null)
          scope             = lookup(authentication.value, "scope", null)
        }
      }

      branch  = lookup(source_trigger.value, "branch", null)
      enabled = lookup(source_trigger.value, "enabled", true)
    }
  }


  dynamic "timer_trigger" { # var.timer_triggers
    for_each = var.timer_triggers != null ? var.timer_triggers : []
    content {
      name     = timer_trigger.key
      schedule = lookup(timer_trigger.value, "schedule") # (Required) 
      enabled  = lookup(timer_trigger.value, "enabled", true)
    }
  }

  is_system_task = var.is_system_task # Default: False
  log_template   = var.log_template

  dynamic "registry_credential" { # var.registry_credential
    for_each = var.registry_credential != null ? var.registry_credential : []
    content {

      dynamic "source" { # registry_credential.value.source
        for_each = registry_credential.value.source != null ? registry_credential.value.source : []
        content {
          login_mode = lookup(source.value, "login_mode") # (Required) possible values: None | Default
        }
      }

      custom = lookup(registry_credential.value, "custom", null)
    }
  }

  tags               = var.tags
  timeout_in_seconds = var.timeout_in_seconds # Default: 3600
}
