# azurerm_lighthouse_assignment

Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Assignment to a subscription, or to a resource group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | False | -  |  -  | A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  -  | The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created. | 
| **var.lighthouse_definition_id** | string | True | -  |  -  | A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **scope** | string  | - | 
| **lighthouse_definition_id** | string  | - | 
| **id** | string  | the fully qualified ID of the Lighthouse Assignment. | 