# azurerm_spring_cloud_certificate

Manages an Azure Spring Cloud Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_certificate" 
}

inputs = {
   name = "name of spring_cloud_certificate" 
   resource_group_name = "${resource_group}" 
   service_name = "service_name of spring_cloud_certificate" 
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
| **var.name** | string  Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **var.service_name** | string  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.exclude_private_key** | bool  `False`  |  Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.key_vault_certificate_id** | string  -  |  Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created. | 
| **var.certificate_content** | string  -  |  The content of uploaded certificate. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Certificate. | 
| **thumbprint** | string | No  | The thumbprint of the Spring Cloud certificate. | 

Additionally, all variables are provided as outputs.
