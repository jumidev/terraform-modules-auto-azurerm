# azurerm_spring_cloud_certificate

Manages an Azure Spring Cloud Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created. | 
| **service_name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **exclude_private_key** | bool | False | `False`  |  -  | Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`. | 
| **key_vault_certificate_id** | string | False | -  |  -  | Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created. | 
| **certificate_content** | string | False | -  |  -  | The content of uploaded certificate. Changing this forces a new resource to be created. | 

