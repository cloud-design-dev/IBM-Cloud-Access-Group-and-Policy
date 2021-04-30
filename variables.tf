variable "ibmcloud_api_key" {
  description = "The IBM Cloud API key that will be used to deploy resources."
  type = string
  default = ""
}

variable "roles" {
  description = "Roles to assign to the access group"
  default = ["Viewer", "Operator", "Editor", "Reader", "Writer", "Manager", "Deployer", "Satellite Cluster Creator", "Satellite Link Administrator", "Satellite Link Source Access Controller", "Administrator"]
}

variable "service" {
  description = "The IBM Cloud service to assign access policy to resources."
  default = "satellite"
}