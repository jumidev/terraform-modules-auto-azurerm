

resource "azurerm_site_recovery_replication_recovery_plan" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  recovery_vault_id         = var.recovery_vault_id
  source_recovery_fabric_id = var.source_recovery_fabric_id
  target_recovery_fabric_id = var.target_recovery_fabric_id

  ########################################
  # optional vars
  ########################################
  recovery_group = var.recovery_group

  dynamic "shutdown_recovery_group" { # var.shutdown_recovery_group
    for_each = var.shutdown_recovery_group != null ? var.shutdown_recovery_group : []
    content {

      dynamic "pre_action" { # shutdown_recovery_group.value.pre_action
        for_each = shutdown_recovery_group.value.pre_action != null ? shutdown_recovery_group.value.pre_action : []
        content {
          name                      = pre_action.key
          type                      = lookup(pre_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(pre_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(pre_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(pre_action.value, "fabric_location", null)
          runbook_id                = lookup(pre_action.value, "runbook_id", null)
          manual_action_instruction = lookup(pre_action.value, "manual_action_instruction", null)
          script_path               = lookup(pre_action.value, "script_path", null)
        }
      }


      dynamic "post_action" { # shutdown_recovery_group.value.post_action
        for_each = shutdown_recovery_group.value.post_action != null ? shutdown_recovery_group.value.post_action : []
        content {
          name                      = post_action.key
          type                      = lookup(post_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(post_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(post_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(post_action.value, "fabric_location", null)
          runbook_id                = lookup(post_action.value, "runbook_id", null)
          manual_action_instruction = lookup(post_action.value, "manual_action_instruction", null)
          script_path               = lookup(post_action.value, "script_path", null)
        }
      }

    }
  }


  dynamic "failover_recovery_group" { # var.failover_recovery_group
    for_each = var.failover_recovery_group != null ? var.failover_recovery_group : []
    content {

      dynamic "pre_action" { # failover_recovery_group.value.pre_action
        for_each = failover_recovery_group.value.pre_action != null ? failover_recovery_group.value.pre_action : []
        content {
          name                      = pre_action.key
          type                      = lookup(pre_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(pre_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(pre_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(pre_action.value, "fabric_location", null)
          runbook_id                = lookup(pre_action.value, "runbook_id", null)
          manual_action_instruction = lookup(pre_action.value, "manual_action_instruction", null)
          script_path               = lookup(pre_action.value, "script_path", null)
        }
      }


      dynamic "post_action" { # failover_recovery_group.value.post_action
        for_each = failover_recovery_group.value.post_action != null ? failover_recovery_group.value.post_action : []
        content {
          name                      = post_action.key
          type                      = lookup(post_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(post_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(post_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(post_action.value, "fabric_location", null)
          runbook_id                = lookup(post_action.value, "runbook_id", null)
          manual_action_instruction = lookup(post_action.value, "manual_action_instruction", null)
          script_path               = lookup(post_action.value, "script_path", null)
        }
      }

    }
  }


  dynamic "boot_recovery_group" { # var.boot_recovery_group
    for_each = var.boot_recovery_group != null ? var.boot_recovery_group : []
    content {
      replicated_protected_items = lookup(boot_recovery_group.value, "replicated_protected_items", null)

      dynamic "pre_action" { # boot_recovery_group.value.pre_action
        for_each = boot_recovery_group.value.pre_action != null ? boot_recovery_group.value.pre_action : []
        content {
          name                      = pre_action.key
          type                      = lookup(pre_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(pre_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(pre_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(pre_action.value, "fabric_location", null)
          runbook_id                = lookup(pre_action.value, "runbook_id", null)
          manual_action_instruction = lookup(pre_action.value, "manual_action_instruction", null)
          script_path               = lookup(pre_action.value, "script_path", null)
        }
      }


      dynamic "post_action" { # boot_recovery_group.value.post_action
        for_each = boot_recovery_group.value.post_action != null ? boot_recovery_group.value.post_action : []
        content {
          name                      = post_action.key
          type                      = lookup(post_action.value, "type")                 # (Required) possible values: AutomationRunbookActionDetails | ManualActionDetails | ScriptActionDetails
          fail_over_directions      = lookup(post_action.value, "fail_over_directions") # (Required) possible values: PrimaryToRecovery | RecoveryToPrimary
          fail_over_types           = lookup(post_action.value, "fail_over_types")      # (Required) possible values: TestFailover | PlannedFailover | UnplannedFailover
          fabric_location           = lookup(post_action.value, "fabric_location", null)
          runbook_id                = lookup(post_action.value, "runbook_id", null)
          manual_action_instruction = lookup(post_action.value, "manual_action_instruction", null)
          script_path               = lookup(post_action.value, "script_path", null)
        }
      }

    }
  }


  dynamic "azure_to_azure_settings" { # var.azure_to_azure_settings
    for_each = var.azure_to_azure_settings != null ? var.azure_to_azure_settings : []
    content {
      primary_zone       = lookup(azure_to_azure_settings.value, "primary_zone", null)
      recovery_zone      = lookup(azure_to_azure_settings.value, "recovery_zone", null)
      primary_edge_zone  = lookup(azure_to_azure_settings.value, "primary_edge_zone", null)
      recovery_edge_zone = lookup(azure_to_azure_settings.value, "recovery_edge_zone", null)
    }
  }

}
