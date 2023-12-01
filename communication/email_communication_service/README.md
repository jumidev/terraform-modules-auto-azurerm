# azurerm_email_communication_service

Manages an Email Communication Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "communication/email_communication_service" 
}

inputs = {
   name = "name of email_communication_service" 
   resource_group_name = "${resource_group}" 
   data_location = "data_location of email_communication_service" 
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
| **name** | string |  -  |  The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created. | 
| **data_location** | string |  `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  |  The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Changing this forces a new Email Communication Service to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Email Communication Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Email Communication Service. | 

Additionally, all variables are provided as outputs.
