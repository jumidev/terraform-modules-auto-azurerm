# azurerm_spring_cloud_builder

Manages a Spring Cloud Builder.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_builder" 
}

inputs = {
   name = "name of spring_cloud_builder" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_builder" 
   build_pack_group = "build_pack_group of spring_cloud_builder" 
   stack = "stack of spring_cloud_builder" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created. | 
| **var.spring_cloud_service_id** | string | True | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created. | 
| **var.build_pack_group** | block | True | One or more `build_pack_group` blocks. | 
| `build_pack_group` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this build pack group. ||
|   build_pack_ids (string): Specifies a list of the build pack's ID. ||
| **var.stack** | block | True | A `stack` block. | 
| `stack` block structure: || 
|   version (string): (REQUIRED) Specifies the version of the ClusterStack ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Builder. | 

Additionally, all variables are provided as outputs.
