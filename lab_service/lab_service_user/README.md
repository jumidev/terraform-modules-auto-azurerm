# azurerm_lab_service_user

Manages a Lab Service User.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Lab Service User. Changing this forces a new resource to be created. | 
| **lab_id** | string | True | -  |  -  | The resource ID of the Lab Service Lab. Changing this forces a new resource to be created. | 
| **email** | string | True | -  |  -  | The email address of the Lab Service User. Changing this forces a new resource to be created. | 
| **additional_usage_quota** | string | False | `PT0S`  |  -  | The amount of usage quota time the Lab Service User gets in addition to the lab usage quota. Defaults to `PT0S`. | 

