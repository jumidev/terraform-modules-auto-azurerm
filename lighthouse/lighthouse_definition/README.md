# azurerm_lighthouse_definition

Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **lighthouse_definition_id** | string | False | -  |  -  | A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name of the Lighthouse Definition. Changing this forces a new resource to be created. | 
| **managing_tenant_id** | string | True | -  |  -  | The ID of the managing tenant. Changing this forces a new resource to be created. | 
| **scope** | string | True | -  |  -  | The ID of the managed subscription. Changing this forces a new resource to be created. | 
| **authorization** | block | True | -  |  -  | An `authorization` block. | 
| **description** | string | False | -  |  -  | A description of the Lighthouse Definition. | 
| **eligible_authorization** | block | False | -  |  -  | An `eligible_authorization` block. | 
| **plan** | block | False | -  |  -  | A `plan` block. | 

