# azurerm_marketplace_agreement

Allows accepting the Legal Terms for a Marketplace Image.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/marketplace_agreement"   
}

inputs = {
   offer = "The Offer of the Marketplace Image"   
   plan = "The Plan of the Marketplace Image"   
   publisher = "The Publisher of the Marketplace Image"   
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
| **offer** | string |  The Offer of the Marketplace Image. Changing this forces a new resource to be created. | 
| **plan** | string |  The Plan of the Marketplace Image. Changing this forces a new resource to be created. | 
| **publisher** | string |  The Publisher of the Marketplace Image. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Marketplace Agreement. | 

Additionally, all variables are provided as outputs.
