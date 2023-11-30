# azurerm_app_service_slot_custom_hostname_binding

Manages a Hostname Binding within an App Service Slot.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.app_service_slot_id** | string  The ID of the App Service Slot. Changing this forces a new resource to be created. | 
| **var.hostname** | string  Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.ssl_state** | string  `IpBasedEnabled`, `SniEnabled`  |  The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **var.thumbprint** | string  -  |  The SSL certificate thumbprint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Custom Hostname Binding | 
| **virtual_ip** | string | No  | The virtual IP address assigned to the hostname if IP based SSL is enabled. | 

Additionally, all variables are provided as outputs.
