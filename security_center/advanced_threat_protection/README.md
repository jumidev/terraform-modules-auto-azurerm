# azurerm_advanced_threat_protection

Manages a resources Advanced Threat Protection setting.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.target_resource_id** | string | True | -  |  -  | The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | True | -  |  -  | Should Advanced Threat Protection be enabled on this resource? | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **target_resource_id** | string  | - | 
| **enabled** | bool  | - | 
| **id** | string  | The ID of the Advanced Threat Protection resource. | 