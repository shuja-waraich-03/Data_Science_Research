# install_packages.R
# Run this once before knitting the report.

pkgs <- c(
  "readxl", "dplyr", "tidyr", "ggplot2", "ggrepel",
  "scales", "tidycensus", "tigris", "sf", "patchwork",
  "knitr", "kableExtra", "viridis", "RColorBrewer",
  "stringr", "rmarkdown", "tinytex"
)

missing <- pkgs[!pkgs %in% rownames(installed.packages())]
if (length(missing)) {
  install.packages(missing, dependencies = TRUE)
}

# Install a minimal LaTeX distribution for PDF output (run once)
if (!tinytex::is_tinytex()) {
  tinytex::install_tinytex()
}

message("All packages ready.")
