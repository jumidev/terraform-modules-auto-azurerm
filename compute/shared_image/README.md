# azurerm_shared_image

Manages a Shared Image within a Shared Image Gallery.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/shared_image" 
}

inputs = {
   name = "name of shared_image" 
   gallery_name = "gallery_name of shared_image" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   identifier = {
      example_identifier = {
         offer = "..."   
         publisher = "..."   
         sku = "..."   
      }
  
   }
 
   os_type = "os_type of shared_image" 
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
| **var.name** | string |  -  |  Specifies the name of the Shared Image. Changing this forces a new resource to be created. | 
| **var.gallery_name** | string |  -  |  Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created. | 
| **var.identifier** | block |  -  |  An `identifier` block. | 
| **var.os_type** | string |  `Linux`, `Windows`  |  The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.purchase_plan** | block |  -  |  -  |  A `purchase_plan` block. | 
| **var.description** | string |  -  |  -  |  A description of this Shared Image. | 
| **var.disk_types_not_allowed** | string |  -  |  `Standard_LRS`, `Premium_LRS`  |  One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`. | 
| **var.end_of_life_date** | datetime |  -  |  -  |  The end of life date in RFC3339 format of the Image. | 
| **var.eula** | string |  -  |  -  |  The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created. | 
| **var.specialized** | string |  -  |  -  |  Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created. | 
| **var.architecture** | string |  `x64`  |  `x64`, `Arm64`  |  CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created. | 
| **var.hyper_v_generation** | string |  `V1`  |  `V1`, `V2`  |  The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 
| **var.max_recommended_vcpu_count** | int |  -  |  -  |  Maximum count of vCPUs recommended for the Image. | 
| **var.min_recommended_vcpu_count** | int |  -  |  -  |  Minimum count of vCPUs recommended for the Image. | 
| **var.max_recommended_memory_in_gb** | int |  -  |  -  |  Maximum memory in GB recommended for the Image. | 
| **var.min_recommended_memory_in_gb** | int |  -  |  -  |  Minimum memory in GB recommended for the Image. | 
| **var.privacy_statement_uri** | string |  -  |  -  |  The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created. | 
| **var.release_note_uri** | string |  -  |  -  |  The URI containing the Release Notes associated with this Shared Image. | 
| **var.trusted_launch_supported** | string |  -  |  -  |  Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created. | 
| **var.trusted_launch_enabled** | bool |  -  |  -  |  Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created. | 
| **var.confidential_vm_supported** | string |  -  |  -  |  Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created. | 
| **var.confidential_vm_enabled** | bool |  -  |  -  |  Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created. | 
| **var.accelerated_network_support_enabled** | bool |  -  |  -  |  Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the Shared Image. | 

### `identifier` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offer` | string | Yes | - | The Offer Name for this Shared Image. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | The Publisher Name for this Gallery Image. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | The Name of the SKU for this Gallery Image. Changing this forces a new resource to be created. |

### `purchase_plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | No | - | The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created. |
| `product` | string | No | - | The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Shared Image. | 

Additionally, all variables are provided as outputs.
