resource "lab" "main" {
  title       = "Test lab connect - Peyman"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n"

  # timelimit and idle are both required on every lab.
  settings {
    timelimit {
      duration = "1h"
    }
    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.single_panel
}
