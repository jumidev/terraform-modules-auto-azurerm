# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this Shared Image Gallery."
  type        = string
  default     = null
}
variable "sharing" {
  description = "A 'sharing' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# sharing block structure  :
#   permission (string)      : (REQUIRED) The permission of the Shared Image Gallery when sharing. Possible values are 'Community', 'Groups' and 'Private'. Changing this forces a new resource to be created. -> **Note:** This requires that the Preview Feature 'Microsoft.Compute/CommunityGalleries' is enabled, see [the documentation](https://learn.microsoft.com/azure/virtual-machines/share-gallery-community?tabs=cli) for more information.
#   community_gallery (block): A 'community_gallery' block. Changing this forces a new resource to be created. ~> **NOTE:** 'community_gallery' must be set when 'permission' is set to 'Community'.
#
# community_gallery block structure:
#   eula (string)                    : (REQUIRED) The End User Licence Agreement for the Shared Image Gallery. Changing this forces a new resource to be created.
#   prefix (string)                  : (REQUIRED) Prefix of the community public name for the Shared Image Gallery. Changing this forces a new resource to be created.
#   publisher_email (string)         : (REQUIRED) Email of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.
#   publisher_uri (string)           : (REQUIRED) URI of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags to assign to the Shared Image Gallery."
  type        = map(any)
  default     = null
}
