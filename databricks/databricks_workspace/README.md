# azurerm_databricks_workspace

Manages a Databricks Workspace

## Example `component.hclt`

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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **sku** | string |  `standard`, `premium`, `trial`  |  The `sku` to use for the Databricks Workspace. Possible values are `standard`, `premium`, or `trial`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **load_balancer_backend_address_pool_id** | string |  -  |  -  |  Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created. | 
| **managed_services_cmk_key_vault_key_id** | string |  -  |  -  |  Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts). | 
| **managed_disk_cmk_key_vault_key_id** | string |  -  |  -  |  Customer managed encryption properties for the Databricks Workspace managed disks. | 
| **managed_disk_cmk_rotation_to_latest_version_enabled** | bool |  -  |  -  |  Whether customer managed keys for disk encryption will automatically be rotated to the latest version. | 
| **managed_resource_group_name** | string |  -  |  -  |  The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created. | 
| **customer_managed_key_enabled** | bool |  `False`  |  `true`, `false`  |  Is the workspace enabled for customer managed key encryption? If `true` this enables the Managed Identity for the managed storage account. Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. | 
| **infrastructure_encryption_enabled** | bool |  `False`  |  `true`, `false`  |  Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  `true`, `false`  |  Allow public access for accessing workspace. Set value to `false` to access workspace only via private link endpoint. Possible values include `true` or `false`. Defaults to `true`. | 
| **network_security_group_rules_required** | string |  -  |  `AllRules`, `NoAzureDatabricksRules`, `NoAzureServiceRules`  |  Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values `AllRules`, `NoAzureDatabricksRules` or `NoAzureServiceRules`. Required when `public_network_access_enabled` is set to `false`. | 
| **custom_parameters** | [block](#custom_parameters-block-structure) |  -  |  -  |  A `custom_parameters` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `custom_parameters` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `machine_learning_workspace_id` | string | No | - | The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created. |
| `nat_gateway_name` | string | No | nat-gateway | Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Defaults to 'nat-gateway'. Changing this forces a new resource to be created. |
| `public_ip_name` | string | No | nat-gw-public-ip | Name of the Public IP for No Public IP workspace with managed vNet. Defaults to 'nat-gw-public-ip'. Changing this forces a new resource to be created. |
| `no_public_ip` | bool | No | False | Are public IP Addresses not allowed? Possible values are 'true' or 'false'. Defaults to 'false'. |
| `public_subnet_name` | string | No | - | The name of the Public Subnet within the Virtual Network. Required if 'virtual_network_id' is set. Changing this forces a new resource to be created. |
| `public_subnet_network_security_group_association_id` | string | No | - | The resource ID of the 'azurerm_subnet_network_security_group_association' resource which is referred to by the 'public_subnet_name' field. This is the same as the ID of the subnet referred to by the 'public_subnet_name' field. Required if 'virtual_network_id' is set. |
| `private_subnet_name` | string | No | - | The name of the Private Subnet within the Virtual Network. Required if 'virtual_network_id' is set. Changing this forces a new resource to be created. |
| `private_subnet_network_security_group_association_id` | string | No | - | The resource ID of the 'azurerm_subnet_network_security_group_association' resource which is referred to by the 'private_subnet_name' field. This is the same as the ID of the subnet referred to by the 'private_subnet_name' field. Required if 'virtual_network_id' is set. |
| `storage_account_name` | string | No | dbstoragel6mfeghoe5kxu | Default Databricks File Storage account name. Defaults to a randomized name(e.g. 'dbstoragel6mfeghoe5kxu'). Changing this forces a new resource to be created. |
| `storage_account_sku_name` | string | No | Standard_GRS | Storage account SKU name. Possible values include 'Standard_LRS', 'Standard_GRS', 'Standard_RAGRS', 'Standard_GZRS', 'Standard_RAGZRS', 'Standard_ZRS', 'Premium_LRS' or 'Premium_ZRS'. Defaults to 'Standard_GRS'. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created. |
| `vnet_address_prefix` | string | No | 10.139 | Address prefix for Managed virtual network. Defaults to '10.139'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Workspace in the Azure management plane. | 
| **disk_encryption_set_id** | string | No  | The ID of Managed Disk Encryption Set created by the Databricks Workspace. | 
| **managed_disk_identity** | block | No  | A `managed_disk_identity` block. | 
| **managed_resource_group_id** | string | No  | The ID of the Managed Resource Group created by the Databricks Workspace. | 
| **workspace_url** | string | No  | The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net' | 
| **workspace_id** | string | No  | The unique identifier of the databricks workspace in Databricks control plane. | 
| **storage_account_identity** | block | No  | A `storage_account_identity` block. | 
| **principal_id** | string | No  | The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys. | 
| **tenant_id** | string | No  | The UUID of the tenant where the internal databricks storage account was created. | 
| **type** | string | No  | The type of the internal databricks storage account. | 

Additionally, all variables are provided as outputs.
