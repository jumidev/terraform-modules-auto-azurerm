# azurerm_lab_service_user

Manages a Lab Service User.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_user" 
}

inputs = {
   name = "name of lab_service_user" 
   lab_id = "lab_id of lab_service_user" 
   email = "email of lab_service_user" 
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
| **var.name** | string |  The name which should be used for this Lab Service User. Changing this forces a new resource to be created. | 
| **var.lab_id** | string |  The resource ID of the Lab Service Lab. Changing this forces a new resource to be created. | 
| **var.email** | string |  The email address of the Lab Service User. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.additional_usage_quota** | string |  `PT0S`  |  The amount of usage quota time the Lab Service User gets in addition to the lab usage quota. Defaults to `PT0S`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service User. | 

Additionally, all variables are provided as outputs.
