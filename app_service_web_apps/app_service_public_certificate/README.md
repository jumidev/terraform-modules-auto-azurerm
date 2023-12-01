# azurerm_app_service_public_certificate

Manages an App Service Public Certificate.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_public_certificate" 
}

inputs = {
   app_service_name = "app_service_name of app_service_public_certificate" 
   resource_group_name = "${resource_group}" 
   certificate_name = "certificate_name of app_service_public_certificate" 
   certificate_location = "certificate_location of app_service_public_certificate" 
   blob = "blob of app_service_public_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **app_service_name** | string |  -  |  The name of the App Service. Changing this forces a new App Service Public Certificate to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created. | 
| **certificate_name** | string |  -  |  The name of the public certificate. Changing this forces a new App Service Public Certificate to be created. | 
| **certificate_location** | string |  `CurrentUserMy`, `LocalMachineMy`, `Unknown`  |  The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created. | 
| **blob** | string |  -  |  The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Public Certificate. | 
| **thumbprint** | string | No  | The thumbprint of the public certificate. | 

Additionally, all variables are provided as outputs.
