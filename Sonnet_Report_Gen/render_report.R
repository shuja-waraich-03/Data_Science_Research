# render_report.R
# Knits demographic_analysis.Rmd to PDF.
# Run from the project directory or set working directory below.

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))  # RStudio only
# If running from terminal: setwd("/path/to/Report_Gen")

# ── 1. Set your Census API key ─────────────────────────────────────────────────
#  Get a free key at: https://api.census.gov/data/key_signup.html
Sys.setenv(CENSUS_API_KEY = "cae79ee00ab828454493cdbc63e0d615494c2a5e")

# ── 2. Download RUCC data (once) ───────────────────────────────────────────────
# Visit: https://www.ers.usda.gov/data-products/rural-urban-continuum-codes/
# Download "ruralurbancodes2013.xls" and place it in this directory.
# The report will still render without it (RUCC plots will be skipped).

# ── 3. Knit ────────────────────────────────────────────────────────────────────
rmarkdown::render(
  input       = "demographic_analysis.Rmd",
  output_file = "demographic_analysis.pdf",
  clean       = TRUE
)

message("Report saved to: demographic_analysis.pdf")

