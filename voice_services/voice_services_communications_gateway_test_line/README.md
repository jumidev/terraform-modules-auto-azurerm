# azurerm_voice_services_communications_gateway_test_line

Manages a Voice Services Communications Gateway Test Line.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "voice_services/voice_services_communications_gateway_test_line"   
}

inputs = {
   name = "Specifies the name which should be used for this Voice Services Communications G..."   
   location = "${location}"   
   # voice_services_communications_gateway_id → set in tfstate_inputs
   phone_number = "Specifies the phone number"   
   purpose = "The purpose of the Voice Services Communications Gateway Test Line..."   
}

tfstate_inputs = {
   voice_services_communications_gateway_id = "path/to/voice_services_communications_gateway_component:id"   
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
| **name** | string |  -  |  Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created. | 
| **voice_services_communications_gateway_id** | string |  -  |  Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created. | 
| **phone_number** | string |  -  |  Specifies the phone number. | 
| **purpose** | string |  `Automated`, `Manual`  |  The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Voice Services Communications Gateway Test Line. | 

Additionally, all variables are provided as outputs.
