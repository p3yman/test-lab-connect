resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "container" "container" {
  network {
    id = resource.network.main.meta.id
  }
  image {
    name = "debian:12"
  }
  resources {
    cpu    = 1000
    memory = 256
  }
}
