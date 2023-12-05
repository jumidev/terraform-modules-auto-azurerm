# azurerm_shared_image

Manages a Shared Image within a Shared Image Gallery.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/shared_image"   
}

inputs = {
   name = "Specifies the name of the Shared Image"   
   # gallery_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   identifier = {
      offer = "..."      
      publisher = "..."      
      sku = "..."      
   }
   
   os_type = "The type of Operating System present in this Shared Image..."   
}

tfstate_inputs = {
   gallery_name = "path/to/shared_image_gallery_component:name"   
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
| **name** | string |  -  |  Specifies the name of the Shared Image. Changing this forces a new resource to be created. | 
| **gallery_name** | string |  -  |  Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **identifier** | [block](#identifier-block-structure) |  -  |  An `identifier` block. | 
| **os_type** | string |  `Linux`, `Windows`  |  The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **purchase_plan** | [block](#purchase_plan-block-structure) |  -  |  -  |  A `purchase_plan` block. | 
| **description** | string |  -  |  -  |  A description of this Shared Image. | 
| **disk_types_not_allowed** | string |  -  |  `Standard_LRS`, `Premium_LRS`  |  One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`. | 
| **end_of_life_date** | datetime |  -  |  -  |  The end of life date in RFC3339 format of the Image. | 
| **eula** | string |  -  |  -  |  The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created. | 
| **specialized** | string |  -  |  -  |  Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created. | 
| **architecture** | string |  `x64`  |  `x64`, `Arm64`  |  CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created. | 
| **hyper_v_generation** | string |  `V1`  |  `V1`, `V2`  |  The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 
| **max_recommended_vcpu_count** | int |  -  |  -  |  Maximum count of vCPUs recommended for the Image. | 
| **min_recommended_vcpu_count** | int |  -  |  -  |  Minimum count of vCPUs recommended for the Image. | 
| **max_recommended_memory_in_gb** | int |  -  |  -  |  Maximum memory in GB recommended for the Image. | 
| **min_recommended_memory_in_gb** | int |  -  |  -  |  Minimum memory in GB recommended for the Image. | 
| **privacy_statement_uri** | string |  -  |  -  |  The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created. | 
| **release_note_uri** | string |  -  |  -  |  The URI containing the Release Notes associated with this Shared Image. | 
| **trusted_launch_supported** | string |  -  |  -  |  Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created. | 
| **trusted_launch_enabled** | bool |  -  |  -  |  Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created. | 
| **confidential_vm_supported** | string |  -  |  -  |  Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created. | 
| **confidential_vm_enabled** | bool |  -  |  -  |  Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created. | 
| **accelerated_network_support_enabled** | bool |  -  |  -  |  Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Shared Image. | 

### `purchase_plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created. |
| `publisher` | string | No | - | The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created. |
| `product` | string | No | - | The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created. |

### `identifier` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offer` | string | Yes | - | The Offer Name for this Shared Image. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | The Publisher Name for this Gallery Image. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | The Name of the SKU for this Gallery Image. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Shared Image. | 

Additionally, all variables are provided as outputs.
