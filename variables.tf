#
# Environment Variables
#
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#
# Other Variables Variables
#
variable "vcenter" {
  type = map
  default = {
    dc = "wdc-06-vc12"
    cluster = "wdc-06-vc12c01"
    datastore = "wdc-06-vc12c01-vsan"
    resource_pool = "wdc-06-vc12c01/Resources"
  }
}