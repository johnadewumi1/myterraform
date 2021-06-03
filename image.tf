resource "oci_core_images" "tf_images" {
  #Required
  compartment_id = var.compartment_id
  instance_id = oci_core_instance.johnserver.id
}
