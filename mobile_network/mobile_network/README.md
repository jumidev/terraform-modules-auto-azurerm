# azurerm_mobile_network

Manages a Mobile Network.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network" 
}

inputs = {
   name = "name of mobile_network" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   mobile_country_code = "mobile_country_code of mobile_network" 
   mobile_network_code = "mobile_network_code of mobile_network" 
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
| **var.name** | string |  -  |  Specifies the name which should be used for this Mobile Network. Changing this forces a new Mobile Network to be created. | 
| **var.resource_group_name** | string |  -  |  Specifies the name of the Resource Group where the Mobile Network should exist. Changing this forces a new Mobile Network to be created. | 
| **var.location** | string |  `eastus`, `northeurope`  |  Specifies the Azure Region where the Mobile Network should exist. Changing this forces a new Mobile Network to be created. The possible values are `eastus` and `northeurope`. | 
| **var.mobile_country_code** | string |  -  |  Mobile country code (MCC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created. | 
| **var.mobile_network_code** | string |  -  |  Mobile network code (MNC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the Mobile Network. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network. | 
| **service_key** | string | No  | The mobile network resource identifier. | 

Additionally, all variables are provided as outputs.
