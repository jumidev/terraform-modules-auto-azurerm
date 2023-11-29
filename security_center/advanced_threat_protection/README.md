# azurerm_advanced_threat_protection

Manages a resources Advanced Threat Protection setting.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **target_resource_id** | string | True | -  |  -  | The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created. | 
| **enabled** | bool | True | -  |  -  | Should Advanced Threat Protection be enabled on this resource? | 

