# azurerm_spring_cloud_build_pack_binding

Manages a Spring Cloud Build Pack Binding.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 
| **spring_cloud_builder_id** | string | True | -  |  -  | The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created. | 
| **binding_type** | string | False | -  |  `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  | Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **launch** | block | False | -  |  -  | A `launch` block. | 

