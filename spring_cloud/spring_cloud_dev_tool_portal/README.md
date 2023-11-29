# azurerm_spring_cloud_dev_tool_portal

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Dev Tool Portal.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **var.spring_cloud_service_id** | string | True | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **var.application_accelerator_enabled** | bool | False | Should the Accelerator plugin be enabled? | 
| **var.application_live_view_enabled** | bool | False | Should the Application Live View be enabled? | 
| **var.public_network_access_enabled** | bool | False | Is public network access enabled? | 
| **var.sso** | block | False | A `sso` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **application_accelerator_enabled** | bool  | - | 
| **application_live_view_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **sso** | block  | - | 
| **id** | string  | The ID of the Spring Cloud Dev Tool Portal. | 