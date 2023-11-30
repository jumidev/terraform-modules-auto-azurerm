# azurerm_virtual_hub_security_partner_provider

Manages a Security Partner Provider which could be associated to virtual hub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_security_partner_provider" 
}

inputs = {
   name = "name of virtual_hub_security_partner_provider" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   security_provider_name = "security_provider_name of virtual_hub_security_partner_provider" 
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
| **var.name** | string  -  |  The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **var.location** | string  -  |  The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **var.security_provider_name** | string  `ZScaler`, `IBoss`, `Checkpoint`  |  The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.virtual_hub_id** | string  The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Security Partner Provider. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Partner Provider. | 

Additionally, all variables are provided as outputs.
