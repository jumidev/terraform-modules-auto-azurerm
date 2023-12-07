# azurerm_site_recovery_replication_recovery_plan

Manages a Site Recovery Replication Recovery Plan within a Recovery Services vault. A recovery plan gathers machines into recovery groups for the purpose of failover.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/site_recovery_replication_recovery_plan"   
}

inputs = {
   name = "The name of the Replication Plan"   
   recovery_vault_id = "The ID of the vault that should be updated"   
   source_recovery_fabric_id = "ID of source fabric to be recovered from"   
   target_recovery_fabric_id = "ID of target fabric to recover"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created. | 
| **recovery_vault_id** | string |  The ID of the vault that should be updated. Changing this forces a new resource to be created. | 
| **source_recovery_fabric_id** | string |  ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created. | 
| **target_recovery_fabric_id** | string |  ID of target fabric to recover. Changing this forces a new Replication Plan to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **recovery_group** | string |  Three or more `recovery_group` block defined as below. | 
| **shutdown_recovery_group** | [block](#shutdown_recovery_group-block-structure) |  One `shutdown_recovery_group` block. | 
| **failover_recovery_group** | [block](#failover_recovery_group-block-structure) |  One `failover_recovery_group` block. | 
| **boot_recovery_group** | [block](#boot_recovery_group-block-structure) |  One or more `boot_recovery_group` blocks. | 
| **azure_to_azure_settings** | [block](#azure_to_azure_settings-block-structure) |  An `azure_to_azure_settings` block. | 

### `shutdown_recovery_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `pre_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed before the group recovery. |
| `post_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed after the group recovery. |

### `azure_to_azure_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `primary_zone` | string | No | - | The Availability Zone in which the VM is located. Changing this forces a new Site Recovery Replication Recovery Plan to be created. |
| `recovery_zone` | string | No | - | The Availability Zone in which the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created. |
| `primary_edge_zone` | string | No | - | The Edge Zone within the Azure Region where the VM exists. Changing this forces a new Site Recovery Replication Recovery Plan to be created. |
| `recovery_edge_zone` | string | No | - | The Edge Zone within the Azure Region where the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created. |

### `boot_recovery_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `replicated_protected_items` | list | No | - | One or more protected VM IDs. It must not be specified when 'type' is 'Shutdown'. |
| `pre_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed before the group recovery. |
| `post_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed after the group recovery. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the Action. |
| `type` | string | Yes | - | Type of the action detail. Possible values are 'AutomationRunbookActionDetails', 'ManualActionDetails' and 'ScriptActionDetails'. |
| `fail_over_directions` | string | Yes | - | Directions of fail over. Possible values are 'PrimaryToRecovery' and 'RecoveryToPrimary' |
| `fail_over_types` | string | Yes | - | Types of fail over. Possible values are 'TestFailover', 'PlannedFailover' and 'UnplannedFailover' |
| `fabric_location` | string | No | - | The fabric location of runbook or script. Possible values are 'Primary' and 'Recovery'. It must not be specified when 'type' is 'ManualActionDetails'. |
| `runbook_id` | string | No | - | Id of runbook. |
| `manual_action_instruction` | string | No | - | Instructions of manual action. |
| `script_path` | string | No | - | Path of action script. |

### `failover_recovery_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `pre_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed before the group recovery. |
| `post_action` | [block](#action-block-structure) | No | - | one or more 'action' block. which will be executed after the group recovery. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Fabric. | 

Additionally, all variables are provided as outputs.
