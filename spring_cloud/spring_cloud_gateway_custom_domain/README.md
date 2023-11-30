# azurerm_spring_cloud_gateway_custom_domain

Manages a Spring Cloud Gateway Custom Domain.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_gateway_custom_domain" 
}

inputs = {
   name = "name of spring_cloud_gateway_custom_domain" 
   spring_cloud_gateway_id = "spring_cloud_gateway_id of spring_cloud_gateway_custom_domain" 
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
| **var.name** | string | True | The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created. | 
| **var.spring_cloud_gateway_id** | string | True | The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created. | 
| **var.thumbprint** | string | False | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Gateway Custom Domain. | 

Additionally, all variables are provided as outputs.
