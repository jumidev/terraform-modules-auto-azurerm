# azurerm_spring_cloud_application_live_view

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Application Live View.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_application_live_view"   
}

inputs = {
   name = "name of spring_cloud_application_live_view"   
   # spring_cloud_service_id → set in tfstate_inputs
}

tfstate_inputs = {
   spring_cloud_service_id = "path/to/spring_cloud_service_component:id"   
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
| **name** | string |  The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`. | 
| **spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Application Live View. | 

Additionally, all variables are provided as outputs.
