# azurerm_app_service_slot_custom_hostname_binding

Manages a Hostname Binding within an App Service Slot.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.app_service_slot_id** | string | True | -  |  The ID of the App Service Slot. Changing this forces a new resource to be created. | 
| **var.hostname** | string | True | -  |  Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 
| **var.ssl_state** | string | False | `IpBasedEnabled`, `SniEnabled`  |  The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **var.thumbprint** | string | False | -  |  The SSL certificate thumbprint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **app_service_slot_id** | string  | - | 
| **hostname** | string  | - | 
| **ssl_state** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the App Service Custom Hostname Binding | 
| **virtual_ip** | string  | The virtual IP address assigned to the hostname if IP based SSL is enabled. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_slot_custom_hostname_binding" 
}

inputs = {
   app_service_slot_id = "app_service_slot_id of app_service_slot_custom_hostname_binding" 
   hostname = "hostname of app_service_slot_custom_hostname_binding" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```