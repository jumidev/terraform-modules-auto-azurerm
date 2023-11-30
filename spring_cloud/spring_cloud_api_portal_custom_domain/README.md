# azurerm_spring_cloud_api_portal_custom_domain

Manages a Spring Cloud API Portal Domain.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_api_portal_custom_domain" 
}

inputs = {
   name = "name of spring_cloud_api_portal_custom_domain" 
   spring_cloud_api_portal_id = "spring_cloud_api_portal_id of spring_cloud_api_portal_custom_domain" 
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
| **var.name** | string | True | The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created. | 
| **var.spring_cloud_api_portal_id** | string | True | The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created. | 
| **var.thumbprint** | string | False | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud API Portal Domain. | 

Additionally, all variables are provided as outputs.
