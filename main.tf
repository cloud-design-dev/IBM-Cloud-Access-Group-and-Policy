resource "ibm_iam_access_group" "new_group" {
  name        = "${var.service}-access-group"
  description = "Access group for interacting with Satellite resources"
}


resource "ibm_iam_access_group_policy" "new_group_policy" {
  access_group_id = ibm_iam_access_group.new_group.id
  roles           = var.roles

  resources {
    service = var.service
  }
}
