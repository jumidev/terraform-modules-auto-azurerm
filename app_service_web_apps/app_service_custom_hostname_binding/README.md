# azurerm_app_service_custom_hostname_binding

Manages a Hostname Binding within an App Service (or Function App).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_custom_hostname_binding" 
}

inputs = {
   hostname = "hostname of app_service_custom_hostname_binding" 
   app_service_name = "app_service_name of app_service_custom_hostname_binding" 
   resource_group_name = "${resource_group}" 
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
| **hostname** | string |  Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 
| **app_service_name** | string |  The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the App Service exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ssl_state** | string |  `IpBasedEnabled`, `SniEnabled`  |  The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **thumbprint** | string |  -  |  The SSL certificate thumbprint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Custom Hostname Binding | 
| **virtual_ip** | string | No  | The virtual IP address assigned to the hostname if IP based SSL is enabled. | 

Additionally, all variables are provided as outputs.
