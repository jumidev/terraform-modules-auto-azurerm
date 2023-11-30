# azurerm_virtual_desktop_application

Manages a Virtual Desktop Application.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "desktop_virtualization/virtual_desktop_application" 
}

inputs = {
   name = "name of virtual_desktop_application" 
   application_group_id = "application_group_id of virtual_desktop_application" 
   path = "path of virtual_desktop_application" 
   command_line_argument_policy = "command_line_argument_policy of virtual_desktop_application" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Virtual Desktop Application. Changing the name forces a new resource to be created. | 
| **var.application_group_id** | string | True | -  |  Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created. | 
| **var.friendly_name** | string | False | -  |  Option to set a friendly name for the Virtual Desktop Application. | 
| **var.description** | string | False | -  |  Option to set a description for the Virtual Desktop Application. | 
| **var.path** | string | True | -  |  The file path location of the app on the Virtual Desktop OS. | 
| **var.command_line_argument_policy** | string | True | `DoNotAllow`, `Allow`, `Require`  |  Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`. | 
| **var.command_line_arguments** | string | False | -  |  Command Line Arguments for Virtual Desktop Application. | 
| **var.show_in_portal** | string | False | -  |  Specifies whether to show the RemoteApp program in the RD Web Access server. | 
| **var.icon_path** | string | False | -  |  Specifies the path for an icon which will be used for this Virtual Desktop Application. | 
| **var.icon_index** | string | False | -  |  The index of the icon you wish to use. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Application. | 

Additionally, all variables are provided as outputs.
