resource "vsphere_content_library" "library" {
  name            = "Content Library Test"
  storage_backing = [data.vsphere_datastore.datastore.id]
  description     = "A new source of content"
}

resource "vsphere_content_library_item" "aviController" {
  name        = "Avi Controller 20.1.1"
  description = "Avi Controller 20.1.1"
  library_id  = vsphere_content_library.library.id
  file_url = "~/controller-20.1.1-9071.ova"
}