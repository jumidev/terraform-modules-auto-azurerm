# azurerm_spring_cloud_api_portal

Manages a Spring Cloud API Portal.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created. | 
| **var.gateway_ids** | string | False | -  |  Specifies a list of Spring Cloud Gateway. | 
| **var.https_only_enabled** | bool | False | -  |  is only https is allowed? | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.public_network_access_enabled** | bool | False | -  |  Is the public network access enabled? | 
| **var.sso** | block | False | -  |  A `sso` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **gateway_ids** | string  | - | 
| **https_only_enabled** | bool  | - | 
| **instance_count** | int  | - | 
| **public_network_access_enabled** | bool  | - | 
| **sso** | block  | - | 
| **id** | string  | The ID of the Spring Cloud API Portal. | 
| **url** | string  | TODO. | 