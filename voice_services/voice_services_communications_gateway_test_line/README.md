# azurerm_voice_services_communications_gateway_test_line

Manages a Voice Services Communications Gateway Test Line.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created. | 
| **var.voice_services_communications_gateway_id** | string | True | -  |  Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created. | 
| **var.phone_number** | string | True | -  |  Specifies the phone number. | 
| **var.purpose** | string | True | `Automated`, `Manual`  |  The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **voice_services_communications_gateway_id** | string  | - | 
| **phone_number** | string  | - | 
| **purpose** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Voice Services Communications Gateway Test Line. | 