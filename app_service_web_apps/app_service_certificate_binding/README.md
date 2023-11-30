# azurerm_app_service_certificate_binding

Manages an App Service Certificate Binding.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_certificate_binding" 
}

inputs = {
   certificate_id = "certificate_id of app_service_certificate_binding" 
   hostname_binding_id = "hostname_binding_id of app_service_certificate_binding" 
   ssl_state = "ssl_state of app_service_certificate_binding" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.certificate_id** | string | True | -  |  The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created. | 
| **var.hostname_binding_id** | string | True | -  |  The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created. | 
| **var.ssl_state** | string | True | `IpBasedEnabled`, `SniEnabled`  |  The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Certificate Binding. | 
| **app_service_name** | string | No  | The name of the App Service to which the certificate was bound. | 
| **hostname** | string | No  | The hostname of the bound certificate. | 
| **thumbprint** | string | No  | The certificate thumbprint. | 

Additionally, all variables are provided as outputs.
