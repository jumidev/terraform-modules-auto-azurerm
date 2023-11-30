# azurerm_spring_cloud_custom_domain

Manages an Azure Spring Cloud Custom Domain.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created. | 
| **var.spring_cloud_app_id** | string | True | Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.certificate_name** | string | False | Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified | 
| **var.thumbprint** | string | False | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificate_name` is specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_app_id** | string  | - | 
| **certificate_name** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Custom Domain. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_custom_domain" 
}

inputs = {
   name = "name of spring_cloud_custom_domain" 
   spring_cloud_app_id = "spring_cloud_app_id of spring_cloud_custom_domain" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```