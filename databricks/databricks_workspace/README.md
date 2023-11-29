# azurerm_databricks_workspace

Manages a Databricks Workspace

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **load_balancer_backend_address_pool_id** | string | False | -  |  -  | Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `standard`, `premium`, `trial`  | The `sku` to use for the Databricks Workspace. Possible values are `standard`, `premium`, or `trial`. | 
| **managed_services_cmk_key_vault_key_id** | string | False | -  |  -  | Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts). | 
| **managed_disk_cmk_key_vault_key_id** | string | False | -  |  -  | Customer managed encryption properties for the Databricks Workspace managed disks. | 
| **managed_disk_cmk_rotation_to_latest_version_enabled** | bool | False | -  |  -  | Whether customer managed keys for disk encryption will automatically be rotated to the latest version. | 
| **managed_resource_group_name** | string | False | -  |  -  | The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created. | 
| **customer_managed_key_enabled** | bool | False | `False`  |  `true`, `false`  | Is the workspace enabled for customer managed key encryption? If `true` this enables the Managed Identity for the managed storage account. Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. | 
| **infrastructure_encryption_enabled** | bool | False | `False`  |  `true`, `false`  | Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  | Allow public access for accessing workspace. Set value to `false` to access workspace only via private link endpoint. Possible values include `true` or `false`. Defaults to `true`. | 
| **network_security_group_rules_required** | string | False | -  |  `AllRules`, `NoAzureDatabricksRules`, `NoAzureServiceRules`  | Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values `AllRules`, `NoAzureDatabricksRules` or `NoAzureServiceRules`. Required when `public_network_access_enabled` is set to `false`. | 
| **custom_parameters** | block | False | -  |  -  | A `custom_parameters` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

