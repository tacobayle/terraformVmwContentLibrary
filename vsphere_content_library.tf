resource "vsphere_content_library" "library" {
  name            = "Content Library Test"
  storage_backing = [data.vsphere_datastore.datastore.id]
  description     = "A new source of content"
}