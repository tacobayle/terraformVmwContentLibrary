#
# Environment Variables
#
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#
# Other Variables
#

variable "vcenter" {
  type = map
  default = {
    dc = "SDDC-Datacenter"
    cluster = "Cluster-1"
    datastore = "WorkloadDatastore"
    resource_pool = "Cluster-1/Resources"
  }
}

variable "contentLibrary" {
  default = {
    name = "Avi Content Library"
    description = "Avi Content Library"
    files = ["/home/ubuntu/controller-20.1.1-9071.ova", "/home/ubuntu/controller-20.1.2-9171.ova"]
    resource_pool = "Cluster-1/Resources"
  }
}