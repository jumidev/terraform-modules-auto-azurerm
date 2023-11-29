# azurerm_spring_cloud_application_insights_application_performance_monitoring

-> **NOTE:** This resource is only applicable for Spring Cloud Service enterprise tierManages a Spring Cloud Application Performance Monitoring resource for Application Insights.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created. | 
| **var.spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new resource to be created. | 
| **var.globally_enabled** | bool | False | `False`  |  -  | Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`. | 
| **var.connection_string** | string | False | -  |  -  | The instrumentation key used to push data to Application Insights. | 
| **var.role_name** | string | False | -  |  -  | Specifies the cloud role name used to label the component on the application map. | 
| **var.role_instance** | string | False | -  |  -  | Specifies the cloud role instance. | 
| **var.sampling_percentage** | string | False | -  |  -  | Specifies the percentage for fixed-percentage sampling. | 
| **var.sampling_requests_per_second** | int | False | -  |  -  | Specifies the number of requests per second for the rate-limited sampling. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **globally_enabled** | bool  | - | 
| **connection_string** | string  | - | 
| **role_name** | string  | - | 
| **role_instance** | string  | - | 
| **sampling_percentage** | string  | - | 
| **sampling_requests_per_second** | int  | - | 
| **id** | string  | The ID of the Spring Cloud Application Performance Monitoring resource for Application Insights. | 