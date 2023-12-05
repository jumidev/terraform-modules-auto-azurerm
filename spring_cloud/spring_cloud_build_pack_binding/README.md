# azurerm_spring_cloud_build_pack_binding

Manages a Spring Cloud Build Pack Binding.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_build_pack_binding"   
}

inputs = {
   name = "name of spring_cloud_build_pack_binding"   
   # spring_cloud_builder_id → set in tfstate_inputs
}

tfstate_inputs = {
   spring_cloud_builder_id = "path/to/spring_cloud_builder_component:id"   
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
| **name** | string |  The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 
| **spring_cloud_builder_id** | string |  The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **binding_type** | string |  `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  |  Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **launch** | [block](#launch-block-structure) |  -  |  A `launch` block. | 

### `launch` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `properties` | string | No | - | Specifies a map of non-sensitive properties for launchProperties. |
| `secrets` | string | No | - | Specifies a map of sensitive properties for launchProperties. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Build Pack Binding. | 

Additionally, all variables are provided as outputs.
