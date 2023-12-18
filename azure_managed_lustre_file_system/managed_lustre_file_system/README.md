# azurerm_managed_lustre_file_system

Manages an Azure Managed Lustre File System.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "azure_managed_lustre_file_system/managed_lustre_file_system"   
}

inputs = {
   name = "The name which should be used for this Azure Managed Lustre File System..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   maintenance_window = {
      day_of_week = "..."      
      time_of_day_in_utc = "..."      
   }
   
   sku_name = "The SKU name for the Azure Managed Lustre File System..."   
   storage_capacity_in_tb = "The size of the Azure Managed Lustre File System in TiB..."   
   # subnet_id → set in tfstate_inputs
   zones = "A list of availability zones for the Azure Managed Lustre File System..."   
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  -  |  The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  A `maintenance_window` block. | 
| **sku_name** | string |  `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250`, `AMLFS-Durable-Premium-500`  |  The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created. | 
| **storage_capacity_in_tb** | string |  `sku_name`  |  The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created. | 
| **subnet_id** | string |  -  |  The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created. | 
| **zones** | list |  -  |  A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **hsm_setting** | [block](#hsm_setting-block-structure) |  A `hsm_setting` block. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. Changing this forces a new resource to be created. | 
| **encryption_key** | [block](#encryption_key-block-structure) |  An `encryption_key` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Azure Managed Lustre File System. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Service Identity that should be configured on this Azure Managed Lustre File System. Only possible value is 'UserAssigned'. Changing this forces a new resource to be created. |
| `identity_ids` | list | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this Azure Managed Lustre File System. Changing this forces a new resource to be created. |

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | Yes | - | The day of the week on which the maintenance window will occur. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |
| `time_of_day_in_utc` | string | Yes | - | The time of day (in UTC) to start the maintenance window. |

### `hsm_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_id` | string | Yes | - | The resource ID of the storage container that is used for hydrating the namespace and archiving from the namespace. Changing this forces a new resource to be created. |
| `logging_container_id` | string | Yes | - | The resource ID of the storage container that is used for logging events and errors. Changing this forces a new resource to be created. |
| `import_prefix` | string | No | - | The import prefix for the Azure Managed Lustre File System. Only blobs in the non-logging container that start with this path/prefix get hydrated into the cluster namespace. Changing this forces a new resource to be created. |

### `encryption_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_url` | string | Yes | - | The URL to the Key Vault Key used as the Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_key' resource. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Managed Lustre File System. | 
| **mgs_address** | string | No  | IP Address of Managed Lustre File System Services. | 

Additionally, all variables are provided as outputs.
