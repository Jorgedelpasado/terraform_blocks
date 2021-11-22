resource "google_dataproc_cluster" "dataproc-cluster" {
  #provider = google-beta       # In order for "ednpoint_config to work google-beta must be the provider"
  name     = var.cluster_name
  region   = var.region
  project = var.project_id

  cluster_config {

    master_config {
      num_instances = 1
      machine_type  = "n1-standard-2"

      disk_config {
        boot_disk_type    = "pd-standard"
        boot_disk_size_gb = 50
        num_local_ssds    = 0
      }
    }

    worker_config {
      num_instances    = 2
      machine_type     = "n1-standard-2"

      disk_config {
        boot_disk_type    = "pd-standard"
        boot_disk_size_gb = 50
        num_local_ssds    = 0
      }
    }

    software_config {
      image_version = "2.0-debian10"
      optional_components = ["JUPYTER"]
    }

    # This block provides access to the web interfaces
    # endpoint_config {
    # enable_http_port_access = "true"
    # }

  }
}