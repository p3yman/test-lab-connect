resource "lab" "main" {
  title       = "Test lab connect - Conflicted title"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n"

  # timelimit and idle are both required on every lab.
  settings {
    idle {
      enabled = true
      timeout = "15m"
    }
    timelimit {
      duration = "1h"
    }
  }

  layout = resource.layout.single_panel
}
