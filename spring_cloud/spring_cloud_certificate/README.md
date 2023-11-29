# azurerm_spring_cloud_certificate

Manages an Azure Spring Cloud Certificate.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **var.service_name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **var.exclude_private_key** | bool | False | `False`  |  -  | Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.key_vault_certificate_id** | string | False | -  |  -  | Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created. | 
| **var.certificate_content** | string | False | -  |  -  | The content of uploaded certificate. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **service_name** | string  | - | 
| **exclude_private_key** | bool  | - | 
| **key_vault_certificate_id** | string  | - | 
| **certificate_content** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Certificate. | 
| **thumbprint** | string  | The thumbprint of the Spring Cloud certificate. | 