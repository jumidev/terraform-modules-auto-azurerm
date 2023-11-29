# azurerm_container_app

Manages a Container App.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **container_app_environment_id** | string | True | -  |  -  | The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name for this Container App. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **revision_mode** | string | True | -  |  `Single`, `Multiple`  | The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration. | 
| **template** | block | True | -  |  -  | A `template` block as detailed below. | 
| **dapr** | block | False | -  |  -  | A `dapr` block as detailed below. | 
| **identity** | block | False | -  |  -  | An `identity` block as detailed below. | 
| **ingress** | block | False | -  |  -  | An `ingress` block as detailed below. | 
| **registry** | block | False | -  |  -  | A `registry` block as detailed below. | 
| **secret** | list | False | -  |  -  | One or more `secret` block as detailed below. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Container App. | 

