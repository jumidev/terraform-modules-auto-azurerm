# azurerm_workloads_sap_three_tier_virtual_instance



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "workloads/workloads_sap_three_tier_virtual_instance"   
}
inputs = {
   name = "Specifies the name of this SAP Three Tier Virtual Instance..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   app_location = "The Geo-Location where the SAP system is to be created..."   
   environment = "The environment type for the SAP Three Tier Virtual Instance..."   
   sap_fqdn = "The FQDN of the SAP system"   
   sap_product = "The SAP Product type for the SAP Three Tier Virtual Instance..."   
   three_tier_configuration = {
      app_resource_group_name = "..."      
      application_server_configuration = "..."      
      central_server_configuration = "..."      
      database_server_configuration = "..."      
   }   
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
| **name** | string |  -  |  Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created. | 
| **app_location** | string |  -  |  The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created. | 
| **environment** | string |  `NonProd`, `Prod`  |  The environment type for the SAP Three Tier Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created. | 
| **sap_fqdn** | string |  -  |  The FQDN of the SAP system. Changing this forces a new resource to be created. | 
| **sap_product** | string |  `ECC`, `Other`, `S4HANA`  |  The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created. | 
| **three_tier_configuration** | [block](#three_tier_configuration-block-structure) |  -  |  A `three_tier_configuration` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **managed_resource_group_name** | string |  The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance. | 

### `database_server_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `instance_count` | number | Yes | - | The number of instances for the Database Server. Possible values are at least '1'. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created. |
| `virtual_machine_configuration` | [block](#virtual_machine_configuration-block-structure) | Yes | - | A 'virtual_machine_configuration' block. Changing this forces a new resource to be created. |
| `database_type` | string | No | - | The database type for the Database Server. Possible values are 'DB2' and 'HANA'. Changing this forces a new resource to be created. |
| `disk_volume_configuration` | [block](#disk_volume_configuration-block-structure) | No | - | One or more 'disk_volume_configuration' blocks. Changing this forces a new resource to be created. |

### `disk_volume_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `volume_name` | string | Yes | - | Specifies the volumn name of the database disk. Possible values are 'backup', 'hana/data', 'hana/log', 'hana/shared', 'os' and 'usr/sap'. Changing this forces a new resource to be created. |
| `number_of_disks` | number | Yes | - | The total number of disks required for the concerned volume. Possible values are at least '1'. Changing this forces a new resource to be created. |
| `size_in_gb` | number | Yes | - | The size of the Disk in GB. Changing this forces a new resource to be created. |
| `sku_name` | string | Yes | - | The name of the Disk SKU. Possible values are 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS', 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created. |

### `os_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | The name of the administrator account. Changing this forces a new resource to be created. |
| `ssh_private_key` | string | Yes | - | The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created. |
| `ssh_public_key` | string | Yes | - | The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created. |

### `database_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `availability_set_name` | string | No | - | The full name for the availability set. Changing this forces a new resource to be created. |
| `load_balancer` | [block](#load_balancer-block-structure) | No | - | A 'load_balancer' block. Changing this forces a new resource to be created. |
| `virtual_machine` | [block](#virtual_machine-block-structure) | No | - | One or more 'virtual_machine' blocks. Changing this forces a new resource to be created. |

### `data_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `volume_name` | string | Yes | - | The name of the Volume. Changing this forces a new resource to be created. ~> **Note:** Possible value for Application Server and Central Server is 'default'. ~> **Note:** Possible values for Database Server are 'hanaData', 'hanaLog', 'hanaShared' and 'usrSap'. |
| `names` | list | Yes | - | A list of full names of Data Disks per Volume. Changing this forces a new resource to be created. |

### `central_server_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `instance_count` | number | Yes | - | The number of instances for the Central Server. Possible values are at least '1'. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | The resource ID of the Subnet for the Central Server. Changing this forces a new resource to be created. |
| `virtual_machine_configuration` | [block](#virtual_machine_configuration-block-structure) | Yes | - | A 'virtual_machine_configuration' block. Changing this forces a new resource to be created. |

### `central_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `availability_set_name` | string | No | - | The full name for the availability set. Changing this forces a new resource to be created. |
| `load_balancer` | [block](#load_balancer-block-structure) | No | - | A 'load_balancer' block. Changing this forces a new resource to be created. |
| `virtual_machine` | [block](#virtual_machine-block-structure) | No | - | One or more 'virtual_machine' blocks. Changing this forces a new resource to be created. |

### `virtual_machine` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_disk` | [block](#data_disk-block-structure) | No | - | One or more 'data_disk' blocks. Changing this forces a new resource to be created. |
| `host_name` | string | No | - | The full name of the host of the Virtual Machine. Changing this forces a new resource to be created. |
| `network_interface_names` | list | No | - | A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created. |
| `os_disk_name` | string | No | - | The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created. |
| `virtual_machine_name` | string | No | - | The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created. |

### `application_server_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `instance_count` | number | Yes | - | The number of instances for the Application Server. Possible values are at least '1'. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created. |
| `virtual_machine_configuration` | [block](#virtual_machine_configuration-block-structure) | Yes | - | A 'virtual_machine_configuration' block. Changing this forces a new resource to be created. |

### `shared_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | No | - | The full name of the Shared Storage Account. Changing this forces a new resource to be created. |
| `private_endpoint_name` | string | No | - | The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created. |

### `application_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `availability_set_name` | string | No | - | The full name for the availability set. Changing this forces a new resource to be created. |
| `virtual_machine` | [block](#virtual_machine-block-structure) | No | - | One or more 'virtual_machine' blocks. Changing this forces a new resource to be created. |

### `image` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offer` | string | Yes | - | Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | The publisher of the Image. Possible values are 'RedHat' and 'SUSE'. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | The SKU of the Image. Changing this forces a new resource to be created. |
| `version` | string | Yes | - | Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created. |

### `transport_create_and_mount` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `resource_group_id` | string | No | - | The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created. |
| `storage_account_name` | string | No | - | The name of the Storage Account of the File Share. Changing this forces a new resource to be created. |

### `load_balancer` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The full resource name of the Load Balancer. Changing this forces a new resource to be created. |
| `backend_pool_names` | list | No | - | A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created. |
| `frontend_ip_configuration_names` | list | No | primary | A list of Frontend IP Configuration names. Changing this forces a new resource to be created. |
| `health_probe_names` | list | No | - | A list of Health Probe names. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Service Identity that should be configured on this SAP Three Tier Virtual Instance. Only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this SAP Three Tier Virtual Instance. |

### `virtual_machine_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `image` | [block](#image-block-structure) | Yes | - | An 'image' block. Changing this forces a new resource to be created. |
| `os_profile` | [block](#os_profile-block-structure) | Yes | - | An 'os_profile' block. Changing this forces a new resource to be created. |
| `virtual_machine_size` | string | Yes | - | The size of the Virtual Machine. Changing this forces a new resource to be created. |

### `three_tier_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_resource_group_name` | string | Yes | - | The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created. ~> **Note:** While creating an SAP Three Tier Virtual Instance, the service will provision the extra SAP systems/components in the 'app_resource_group_name' that are not defined in the HCL Configuration. At this time, if the 'app_resource_group_name' is different from the Resource Group where SAP Three Tier Virtual Instance exists, you can set 'prevent_deletion_if_contains_resources' to 'false' to delete all resources defined in the HCL Configurations and the resources created in the 'app_resource_group_name' with 'terraform destroy'. However, if the 'app_resource_group_name' is the same with the Resource Group where SAP Three Tier Virtual Instance exists, some resources, such as the subnet defined in the HCL Configuration, cannot be deleted with 'terraform destroy' since the resources defined in the HCL Configuration are being referenced by the SAP system/component. In this case, you have to manually delete the SAP system/component before deleting the resources in the HCL Configuration. |
| `application_server_configuration` | [block](#application_server_configuration-block-structure) | Yes | - | An 'application_server_configuration' block. Changing this forces a new resource to be created. |
| `central_server_configuration` | [block](#central_server_configuration-block-structure) | Yes | - | A 'central_server_configuration' block. Changing this forces a new resource to be created. |
| `database_server_configuration` | [block](#database_server_configuration-block-structure) | Yes | - | A 'database_server_configuration' block. Changing this forces a new resource to be created. |
| `resource_names` | [block](#resource_names-block-structure) | No | - | A 'resource_names' block. Changing this forces a new resource to be created. |
| `high_availability_type` | string | No | - | The high availability type for the three tier configuration. Possible values are 'AvailabilitySet' and 'AvailabilityZone'. Changing this forces a new resource to be created. |
| `secondary_ip_enabled` | bool | No | False | Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to 'false'. Changing this forces a new resource to be created. |
| `transport_create_and_mount` | [block](#transport_create_and_mount-block-structure) | No | - | A 'transport_create_and_mount' block. Changing this forces a new resource to be created. ~> **Note:** The file share configuration uses 'skip' by default when 'transport_create_and_mount' isn't set. ~> **Note:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/25209) where the Storage File Share Id is not defined correctly, it is not currently possible to support using Transport Mount. |

### `resource_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_server` | [block](#application_server-block-structure) | No | - | An 'application_server' block. Changing this forces a new resource to be created. |
| `central_server` | [block](#central_server-block-structure) | No | - | A 'central_server' block. Changing this forces a new resource to be created. |
| `database_server` | [block](#database_server-block-structure) | No | - | A 'database_server' block. Changing this forces a new resource to be created. |
| `shared_storage` | [block](#shared_storage-block-structure) | No | - | A 'shared_storage' block. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | A list of User Assigned Managed Identity IDs to be assigned to this SAP Three Tier Virtual Instance. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SAP Three Tier Virtual Instance. | 

Additionally, all variables are provided as outputs.
