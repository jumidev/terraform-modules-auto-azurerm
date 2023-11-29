# azurerm_managed_lustre_file_system

Manages an Azure Managed Lustre File System.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created. | 
| **maintenance_window** | block | True | -  |  -  | A `maintenance_window` block. | 
| **sku_name** | string | True | -  |  `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250`, `AMLFS-Durable-Premium-500`  | The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created. | 
| **storage_capacity_in_tb** | string | True | -  |  `sku_name`  | The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created. | 
| **zones** | list | True | -  |  -  | A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created. | 
| **hsm_setting** | block | False | -  |  -  | A `hsm_setting` block. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new resource to be created. | 
| **encryption_key** | block | False | -  |  -  | An `encryption_key` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Managed Lustre File System. | 

