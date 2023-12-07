# azurerm_spring_cloud_custom_domain

Manages an Azure Spring Cloud Custom Domain.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_custom_domain"   
}

inputs = {
   name = "Specifies the name of the Spring Cloud Custom Domain..."   
   # spring_cloud_app_id → set in tfstate_inputs
}

tfstate_inputs = {
   spring_cloud_app_id = "path/to/spring_cloud_app_component:id"   
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
| **name** | string |  Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created. | 
| **spring_cloud_app_id** | string |  Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **certificate_name** | string |  `thumbprint`  |  Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified | 
| **thumbprint** | string |  `certificate_name`  |  Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificate_name` is specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Custom Domain. | 

Additionally, all variables are provided as outputs.
