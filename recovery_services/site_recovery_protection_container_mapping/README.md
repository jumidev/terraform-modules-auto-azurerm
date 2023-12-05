# azurerm_site_recovery_protection_container_mapping

Manages a Azure recovery vault protection container mapping. A protection container mapping decides how to translate the protection container when a VM is migrated from one region to another.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/site_recovery_protection_container_mapping"   
}

inputs = {
   name = "The name of the protection container mapping"   
   resource_group_name = "${resource_group}"   
   recovery_vault_name = "The name of the vault that should be updated"   
   recovery_fabric_name = "Name of fabric that should contains the protection container to map..."   
   recovery_source_protection_container_name = "Name of the source protection container to map"   
   recovery_target_protection_container_id = "Id of target protection container to map to"   
   recovery_replication_policy_id = "Id of the policy to use for this mapping"   
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
| **name** | string |  The name of the protection container mapping. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string |  The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **recovery_fabric_name** | string |  Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created. | 
| **recovery_source_protection_container_name** | string |  Name of the source protection container to map. Changing this forces a new resource to be created. | 
| **recovery_target_protection_container_id** | string |  Id of target protection container to map to. Changing this forces a new resource to be created. | 
| **recovery_replication_policy_id** | string |  Id of the policy to use for this mapping. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **automatic_update** | [block](#automatic_update-block-structure) |  a `automatic_update` block defined as below. | 

### `automatic_update` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | False | Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to 'false'. |
| `automation_account_id` | string | No | - | The automation account ID which holds the automatic update runbook and authenticates to Azure resources. |
| `authentication_type` | string | No | - | The authentication type used for automation account. Possible values are 'RunAsAccount' and 'SystemAssignedIdentity'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Protection Container Mapping. | 

Additionally, all variables are provided as outputs.
