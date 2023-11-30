# azurerm_managed_lustre_file_system

Manages an Azure Managed Lustre File System.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **var.maintenance_window** | block | True | -  |  A `maintenance_window` block. | 
| **var.sku_name** | string | True | `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250`, `AMLFS-Durable-Premium-500`  |  The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created. | 
| **var.storage_capacity_in_tb** | string | True | `sku_name`  |  The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created. | 
| **var.zones** | list | True | -  |  A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created. | 
| **var.hsm_setting** | block | False | -  |  A `hsm_setting` block. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  An `identity` block. Changing this forces a new resource to be created. | 
| **var.encryption_key** | block | False | -  |  An `encryption_key` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Azure Managed Lustre File System. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **maintenance_window** | block  | - | 
| **sku_name** | string  | - | 
| **storage_capacity_in_tb** | string  | - | 
| **subnet_id** | string  | - | 
| **zones** | list  | - | 
| **hsm_setting** | block  | - | 
| **identity** | block  | - | 
| **encryption_key** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Managed Lustre File System. | 
| **mgs_address** | string  | IP Address of Managed Lustre File System Services. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "azure_managed_lustre_file_system/managed_lustre_file_system" 
}

inputs = {
   name = "name of managed_lustre_file_system" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   maintenance_window = "maintenance_window of managed_lustre_file_system" 
   sku_name = "sku_name of managed_lustre_file_system" 
   storage_capacity_in_tb = "storage_capacity_in_tb of managed_lustre_file_system" 
   subnet_id = "subnet_id of managed_lustre_file_system" 
   zones = "zones of managed_lustre_file_system" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```