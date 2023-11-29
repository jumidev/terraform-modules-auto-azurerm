

resource "azurerm_app_service_source_control_slot" "this" {

  ########################################
  # required vars
  ########################################
  slot_id = var.slot_id

  ########################################
  # optional vars
  ########################################
  branch = var.branch

  dynamic "github_action_configuration" { # var.github_action_configuration
    for_each = var.github_action_configuration != null ? var.github_action_configuration : []
    content {

      dynamic "code_configuration" { # github_action_configuration.value.code_configuration
        for_each = github_action_configuration.value.code_configuration != null ? github_action_configuration.value.code_configuration : []
        content {
          runtime_stack   = lookup(code_configuration.value, "runtime_stack")   # (Required) possible values: dotnetcore | spring | tomcat | node | python
          runtime_version = lookup(code_configuration.value, "runtime_version") # (Required) 
        }
      }


      dynamic "container_configuration" { # github_action_configuration.value.container_configuration
        for_each = github_action_configuration.value.container_configuration != null ? github_action_configuration.value.container_configuration : []
        content {
          image_name        = lookup(container_configuration.value, "image_name") # (Required) 
          registry_password = lookup(container_configuration.value, "registry_password", null)
          registry_url      = lookup(container_configuration.value, "registry_url") # (Required) 
          registry_username = lookup(container_configuration.value, "registry_username", null)
        }
      }

      generate_workflow_file = lookup(github_action_configuration.value, "generate_workflow_file", true)
      linux_action           = lookup(github_action_configuration.value, "linux_action", null)
    }
  }

  repo_url               = var.repo_url
  rollback_enabled       = var.rollback_enabled # Default: False
  use_local_git          = var.use_local_git
  use_manual_integration = var.use_manual_integration # Default: False
  use_mercurial          = var.use_mercurial          # Default: False
}
