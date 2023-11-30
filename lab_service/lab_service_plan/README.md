# azurerm_lab_service_plan

Manages a Lab Service Plan.-> **Note:** Before using this resource, it's required to submit the request of registering the provider with Azure CLI `az provider register --namespace Microsoft.LabServices`.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Lab Service Plan. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **var.allowed_regions** | string | True | The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between `1` and `28`. | 
| **var.default_auto_shutdown** | block | False | A `default_auto_shutdown` block. | 
| **var.default_connection** | block | False | A `default_connection` block. | 
| **var.default_network_subnet_id** | string | False | The resource ID of the Subnet for the Lab Service Plan network profile. | 
| **var.shared_gallery_id** | string | False | The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs. | 
| **var.support** | block | False | A `support` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Lab Service Plan. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **allowed_regions** | string  | - | 
| **default_auto_shutdown** | block  | - | 
| **default_connection** | block  | - | 
| **default_network_subnet_id** | string  | - | 
| **shared_gallery_id** | string  | - | 
| **support** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Lab Service Plan. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_plan" 
}

inputs = {
   name = "name of lab_service_plan" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   allowed_regions = "allowed_regions of lab_service_plan" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```