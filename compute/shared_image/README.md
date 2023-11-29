# azurerm_shared_image

Manages a Shared Image within a Shared Image Gallery.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Shared Image. Changing this forces a new resource to be created. | 
| **var.gallery_name** | string | True | -  |  -  | Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **var.identifier** | block | True | -  |  -  | An `identifier` block. | 
| **var.os_type** | string | True | -  |  `Linux`, `Windows`  | The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 
| **var.purchase_plan** | block | False | -  |  -  | A `purchase_plan` block. | 
| **var.description** | string | False | -  |  -  | A description of this Shared Image. | 
| **var.disk_types_not_allowed** | string | False | -  |  `Standard_LRS`, `Premium_LRS`  | One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`. | 
| **var.end_of_life_date** | datetime | False | -  |  -  | The end of life date in RFC3339 format of the Image. | 
| **var.eula** | string | False | -  |  -  | The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created. | 
| **var.specialized** | string | False | -  |  -  | Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created. | 
| **var.architecture** | string | False | `x64`  |  `x64`, `Arm64`  | CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created. | 
| **var.hyper_v_generation** | string | False | `V1`  |  `V1`, `V2`  | The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 
| **var.max_recommended_vcpu_count** | int | False | -  |  -  | Maximum count of vCPUs recommended for the Image. | 
| **var.min_recommended_vcpu_count** | int | False | -  |  -  | Minimum count of vCPUs recommended for the Image. | 
| **var.max_recommended_memory_in_gb** | int | False | -  |  -  | Maximum memory in GB recommended for the Image. | 
| **var.min_recommended_memory_in_gb** | int | False | -  |  -  | Minimum memory in GB recommended for the Image. | 
| **var.privacy_statement_uri** | string | False | -  |  -  | The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created. | 
| **var.release_note_uri** | string | False | -  |  -  | The URI containing the Release Notes associated with this Shared Image. | 
| **var.trusted_launch_supported** | string | False | -  |  -  | Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created. | 
| **var.trusted_launch_enabled** | bool | False | -  |  -  | Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created. | 
| **var.confidential_vm_supported** | string | False | -  |  -  | Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created. | 
| **var.confidential_vm_enabled** | bool | False | -  |  -  | Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created. | 
| **var.accelerated_network_support_enabled** | bool | False | -  |  -  | Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the Shared Image. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **gallery_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identifier** | block  | - | 
| **os_type** | string  | - | 
| **purchase_plan** | block  | - | 
| **description** | string  | - | 
| **disk_types_not_allowed** | string  | - | 
| **end_of_life_date** | datetime  | - | 
| **eula** | string  | - | 
| **specialized** | string  | - | 
| **architecture** | string  | - | 
| **hyper_v_generation** | string  | - | 
| **max_recommended_vcpu_count** | int  | - | 
| **min_recommended_vcpu_count** | int  | - | 
| **max_recommended_memory_in_gb** | int  | - | 
| **min_recommended_memory_in_gb** | int  | - | 
| **privacy_statement_uri** | string  | - | 
| **release_note_uri** | string  | - | 
| **trusted_launch_supported** | string  | - | 
| **trusted_launch_enabled** | bool  | - | 
| **confidential_vm_supported** | string  | - | 
| **confidential_vm_enabled** | bool  | - | 
| **accelerated_network_support_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Shared Image. | 