# azurerm_spring_cloud_dev_tool_portal

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Dev Tool Portal.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_dev_tool_portal" 
}

inputs = {
   name = "name of spring_cloud_dev_tool_portal" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_dev_tool_portal" 
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
| **var.name** | string | True | The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **var.spring_cloud_service_id** | string | True | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **var.application_accelerator_enabled** | bool | False | Should the Accelerator plugin be enabled? | 
| **var.application_live_view_enabled** | bool | False | Should the Application Live View be enabled? | 
| **var.public_network_access_enabled** | bool | False | Is public network access enabled? | 
| **var.sso** | block | False | A `sso` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Dev Tool Portal. | 

Additionally, all variables are provided as outputs.
