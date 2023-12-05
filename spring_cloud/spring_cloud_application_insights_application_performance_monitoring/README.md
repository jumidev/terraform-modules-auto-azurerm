# azurerm_spring_cloud_application_insights_application_performance_monitoring

-> **NOTE:** This resource is only applicable for Spring Cloud Service enterprise tierManages a Spring Cloud Application Performance Monitoring resource for Application Insights.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_application_insights_application_performance_monitoring"   
}

inputs = {
   name = "name of spring_cloud_application_insights_application_performance_monitoring"   
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
| **name** | string |  The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created. | 
| **spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **globally_enabled** | bool |  `False`  |  Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`. | 
| **connection_string** | string |  -  |  The instrumentation key used to push data to Application Insights. | 
| **role_name** | string |  -  |  Specifies the cloud role name used to label the component on the application map. | 
| **role_instance** | string |  -  |  Specifies the cloud role instance. | 
| **sampling_percentage** | string |  -  |  Specifies the percentage for fixed-percentage sampling. | 
| **sampling_requests_per_second** | int |  -  |  Specifies the number of requests per second for the rate-limited sampling. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Application Performance Monitoring resource for Application Insights. | 

Additionally, all variables are provided as outputs.
