# azurerm_spring_cloud_build_pack_binding

Manages a Spring Cloud Build Pack Binding.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_build_pack_binding" 
}

inputs = {
   name = "name of spring_cloud_build_pack_binding" 
   spring_cloud_builder_id = "spring_cloud_builder_id of spring_cloud_build_pack_binding" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 
| **var.spring_cloud_builder_id** | string | True | -  |  The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 
| **var.binding_type** | string | False | `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  |  Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **var.launch** | block | False | -  |  A `launch` block. | | `launch` block structure: || 
|   properties (string): Specifies a map of non-sensitive properties for launchProperties. ||
|   secrets (string): Specifies a map of sensitive properties for launchProperties. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Build Pack Binding. | 

Additionally, all variables are provided as outputs.
