# azurerm_lighthouse_definition

Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Definition.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.lighthouse_definition_id** | string | False | -  |  -  | A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name of the Lighthouse Definition. Changing this forces a new resource to be created. | 
| **var.managing_tenant_id** | string | True | -  |  -  | The ID of the managing tenant. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  -  | The ID of the managed subscription. Changing this forces a new resource to be created. | 
| **var.authorization** | block | True | -  |  -  | An `authorization` block. | 
| **var.description** | string | False | -  |  -  | A description of the Lighthouse Definition. | 
| **var.eligible_authorization** | block | False | -  |  -  | An `eligible_authorization` block. | 
| **var.plan** | block | False | -  |  -  | A `plan` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **lighthouse_definition_id** | string  | - | 
| **name** | string  | - | 
| **managing_tenant_id** | string  | - | 
| **scope** | string  | - | 
| **authorization** | block  | - | 
| **description** | string  | - | 
| **eligible_authorization** | block  | - | 
| **plan** | block  | - | 
| **id** | string  | the fully qualified ID of the Lighthouse Definition. | 