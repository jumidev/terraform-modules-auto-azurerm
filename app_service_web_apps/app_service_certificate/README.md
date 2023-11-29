# azurerm_app_service_certificate

Manages an App Service certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the certificate. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **pfx_blob** | string | False | -  |  -  | The base64-encoded contents of the certificate. Changing this forces a new resource to be created. | 
| **password** | string | False | -  |  -  | The password to access the certificate's private key. Changing this forces a new resource to be created. | 
| **app_service_plan_id** | string | False | -  |  -  | The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service. Changing this forces a new resource to be created. | 
| **key_vault_secret_id** | string | False | -  |  -  | The ID of the Key Vault secret. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

