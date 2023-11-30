# azurerm_databricks_workspace

Manages a Databricks Workspace

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.load_balancer_backend_address_pool_id** | string | False | -  |  -  |  Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `standard`, `premium`, `trial`  |  The `sku` to use for the Databricks Workspace. Possible values are `standard`, `premium`, or `trial`. | 
| **var.managed_services_cmk_key_vault_key_id** | string | False | -  |  -  |  Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts). | 
| **var.managed_disk_cmk_key_vault_key_id** | string | False | -  |  -  |  Customer managed encryption properties for the Databricks Workspace managed disks. | 
| **var.managed_disk_cmk_rotation_to_latest_version_enabled** | bool | False | -  |  -  |  Whether customer managed keys for disk encryption will automatically be rotated to the latest version. | 
| **var.managed_resource_group_name** | string | False | -  |  -  |  The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created. | 
| **var.customer_managed_key_enabled** | bool | False | `False`  |  `true`, `false`  |  Is the workspace enabled for customer managed key encryption? If `true` this enables the Managed Identity for the managed storage account. Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. | 
| **var.infrastructure_encryption_enabled** | bool | False | `False`  |  `true`, `false`  |  Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  |  Allow public access for accessing workspace. Set value to `false` to access workspace only via private link endpoint. Possible values include `true` or `false`. Defaults to `true`. | 
| **var.network_security_group_rules_required** | string | False | -  |  `AllRules`, `NoAzureDatabricksRules`, `NoAzureServiceRules`  |  Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values `AllRules`, `NoAzureDatabricksRules` or `NoAzureServiceRules`. Required when `public_network_access_enabled` is set to `false`. | 
| **var.custom_parameters** | block | False | -  |  -  |  A `custom_parameters` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **load_balancer_backend_address_pool_id** | string  | - | 
| **sku** | string  | - | 
| **managed_services_cmk_key_vault_key_id** | string  | - | 
| **managed_disk_cmk_key_vault_key_id** | string  | - | 
| **managed_disk_cmk_rotation_to_latest_version_enabled** | bool  | - | 
| **managed_resource_group_name** | string  | - | 
| **customer_managed_key_enabled** | bool  | - | 
| **infrastructure_encryption_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **network_security_group_rules_required** | string  | - | 
| **custom_parameters** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Databricks Workspace in the Azure management plane. | 
| **disk_encryption_set_id** | string  | The ID of Managed Disk Encryption Set created by the Databricks Workspace. | 
| **managed_disk_identity** | block  | A `managed_disk_identity` block. | 
| **managed_resource_group_id** | string  | The ID of the Managed Resource Group created by the Databricks Workspace. | 
| **workspace_url** | string  | The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net' | 
| **workspace_id** | string  | The unique identifier of the databricks workspace in Databricks control plane. | 
| **storage_account_identity** | block  | A `storage_account_identity` block. | 
| **principal_id** | string  | The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys. | 
| **tenant_id** | string  | The UUID of the tenant where the internal databricks storage account was created. | 
| **type** | string  | The type of the internal databricks storage account. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databricks/databricks_workspace" 
}

inputs = {
   name = "name of databricks_workspace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of databricks_workspace" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```