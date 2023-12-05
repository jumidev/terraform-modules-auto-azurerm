# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created."
  type        = string

}
variable "build_pack_group" {
  description = "(REQUIRED) One or more 'build_pack_group' blocks."
  type        = map(map(any))
}
#
# build_pack_group block structure:
#   name (string)                   : (REQUIRED) The name which should be used for this build pack group.
#   build_pack_ids (string)         : Specifies a list of the build pack's ID.


variable "stack" {
  description = "(REQUIRED) A 'stack' block."
  type        = map(any)
}
#
# stack block structure:
#   version (string)     : (REQUIRED) Specifies the version of the ClusterStack


