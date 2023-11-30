# azurerm_media_transform

Manages a Transform.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_transform" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_transform" 
   name = "name of media_transform" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Transform to be created. | 
| **var.name** | string | True | The name which should be used for this Transform. Changing this forces a new Transform to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Transform should exist. Changing this forces a new Transform to be created. | 
| **var.description** | string | False | An optional verbose description of the Transform. | 
| **var.output** | block | False | One or more `output` blocks. At least one `output` must be defined. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Transform. | 

Additionally, all variables are provided as outputs.
