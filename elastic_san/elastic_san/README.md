# azurerm_elastic_san

Manages an Elastic SAN resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "elastic_san/elastic_san" 
}

inputs = {
   name = "name of elastic_san" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   base_size_in_tib = "base_size_in_tib of elastic_san" 
   sku = {
      example_sku = {
      }
  
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
| **name** | string |  -  |  Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created. | 
| **base_size_in_tib** | string |  `1`, `100`  |  Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`. | 
| **sku** | [block](#sku-block-structure) |  -  |  A `sku` block. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **extended_size_in_tib** | string |  `1`, `100`  |  Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`. | 
| **zones** | string |  -  |  Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Elastic SAN resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | No | - | The SKU tier. The only possible value is 'Premium'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Elastic SAN resource. | 
| **total_iops** | string | No  | Total Provisioned IOps of the Elastic SAN resource. | 
| **total_mbps** | int | No  | Total Provisioned MBps Elastic SAN resource. | 
| **total_size_in_tib** | string | No  | Total size of the Elastic SAN resource in TB. | 
| **total_volume_size_in_gib** | string | No  | Total size of the provisioned Volumes in GiB. | 
| **volume_group_count** | int | No  | Total number of volume groups in this Elastic SAN resource. | 

Additionally, all variables are provided as outputs.
