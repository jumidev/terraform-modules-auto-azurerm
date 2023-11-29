# azurerm_spring_cloud_dev_tool_portal

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Dev Tool Portal.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **application_accelerator_enabled** | bool | False | -  |  -  | Should the Accelerator plugin be enabled? | 
| **application_live_view_enabled** | bool | False | -  |  -  | Should the Application Live View be enabled? | 
| **public_network_access_enabled** | bool | False | -  |  -  | Is public network access enabled? | 
| **sso** | block | False | -  |  -  | A `sso` block. | 

