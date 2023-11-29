# azurerm_lab_service_user

Manages a Lab Service User.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Lab Service User. Changing this forces a new resource to be created. | 
| **var.lab_id** | string | True | -  |  The resource ID of the Lab Service Lab. Changing this forces a new resource to be created. | 
| **var.email** | string | True | -  |  The email address of the Lab Service User. Changing this forces a new resource to be created. | 
| **var.additional_usage_quota** | string | False | `PT0S`  |  The amount of usage quota time the Lab Service User gets in addition to the lab usage quota. Defaults to `PT0S`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **lab_id** | string  | - | 
| **email** | string  | - | 
| **additional_usage_quota** | string  | - | 
| **id** | string  | The ID of the Lab Service User. | 