# azurerm_spring_cloud_builder

Manages a Spring Cloud Builder.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_builder" 
}

inputs = {
   name = "name of spring_cloud_builder" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_builder" 
   build_pack_group = {
      example_build_pack_group = {
      }
  
   }
 
   stack = {
      example_stack = {
         version = "..."   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created. | 
| **spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created. | 
| **build_pack_group** | [block](#build_pack_group-block-structure) |  One or more `build_pack_group` blocks. | 
| **stack** | [block](#stack-block-structure) |  A `stack` block. | 

### `build_pack_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `build_pack_ids` | string | No | - | Specifies a list of the build pack's ID. |

### `stack` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `version` | string | Yes | - | Specifies the version of the ClusterStack |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Builder. | 

Additionally, all variables are provided as outputs.
