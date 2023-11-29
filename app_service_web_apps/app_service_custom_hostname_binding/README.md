# azurerm_app_service_custom_hostname_binding

Manages a Hostname Binding within an App Service (or Function App).

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.hostname** | string | True | -  |  Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 
| **var.app_service_name** | string | True | -  |  The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the App Service exists. Changing this forces a new resource to be created. | 
| **var.ssl_state** | string | False | `IpBasedEnabled`, `SniEnabled`  |  The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **var.thumbprint** | string | False | -  |  The SSL certificate thumbprint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **hostname** | string  | - | 
| **app_service_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **ssl_state** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the App Service Custom Hostname Binding | 
| **virtual_ip** | string  | The virtual IP address assigned to the hostname if IP based SSL is enabled. | 