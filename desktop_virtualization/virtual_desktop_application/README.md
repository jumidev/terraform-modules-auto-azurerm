# azurerm_virtual_desktop_application

Manages a Virtual Desktop Application.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Virtual Desktop Application. Changing the name forces a new resource to be created. | 
| **application_group_id** | string | True | -  |  -  | Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created. | 
| **friendly_name** | string | False | -  |  -  | Option to set a friendly name for the Virtual Desktop Application. | 
| **description** | string | False | -  |  -  | Option to set a description for the Virtual Desktop Application. | 
| **path** | string | True | -  |  -  | The file path location of the app on the Virtual Desktop OS. | 
| **command_line_argument_policy** | string | True | -  |  `DoNotAllow`, `Allow`, `Require`  | Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`. | 
| **command_line_arguments** | string | False | -  |  -  | Command Line Arguments for Virtual Desktop Application. | 
| **show_in_portal** | string | False | -  |  -  | Specifies whether to show the RemoteApp program in the RD Web Access server. | 
| **icon_path** | string | False | -  |  -  | Specifies the path for an icon which will be used for this Virtual Desktop Application. | 
| **icon_index** | string | False | -  |  -  | The index of the icon you wish to use. | 

