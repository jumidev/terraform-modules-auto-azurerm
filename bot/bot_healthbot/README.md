# azurerm_bot_healthbot

Manages a Healthbot Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_healthbot" 
}

inputs = {
   name = "name of bot_healthbot" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of bot_healthbot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies The Azure Region where the resource exists. Changing this force a new resource to be created. | 
| **var.sku_name** | string | True | `C0`, `F0`, `S1`  |  The name which should be used for the SKU of the service. Possible values are `C0`, `F0` and `S1`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the resource. | 
| **bot_management_portal_url** | string | No  | The management portal url. | 

Additionally, all variables are provided as outputs.
