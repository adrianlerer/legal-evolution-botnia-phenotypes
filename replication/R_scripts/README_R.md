# R Scripts for Statistical Replication

This directory contains R scripts for replicating the statistical analyses in the **Legal Evolution of Botnia Phenotypes** research project.

## Prerequisites

### Required R Version
- R >= 4.0.0

### Required R Packages

Install all required packages using:

```r
install.packages(c(
  "tidyverse",
  "readr",
  "dplyr",
  "ggplot2",
  "knitr",
  "readxl"
))
```

Or use the following script to install all dependencies:

```r
# Install CRAN packages
required_packages <- c(
  "tidyverse",    # Data manipulation and visualization
  "readr",        # Fast CSV reading
  "dplyr",        # Data manipulation
  "ggplot2",      # Data visualization
  "knitr",        # Report generation
  "readxl"        # Excel file reading
)

# Install missing packages
new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

# Load packages
lapply(required_packages, library, character.only = TRUE)
```

## Script Overview

### 01_descriptive_stats.R

**Purpose**: Generate comprehensive descriptive statistics for the 60-case verified dataset (30 CRISIS + 30 CONTROL).

**Input**: `data_extended/dataset_60_cases_verified.csv`

**Outputs**:
- Console output with detailed statistics
- `replication/output/summary_statistics.csv`
- `replication/output/correlation_matrix.csv`

**Analyses Included**:
1. Dataset overview
2. CRISIS vs CONTROL balance
3. Geographic distribution
4. Temporal distribution
5. Phenotypic Expression statistics (0-5 scale)
6. Sovereignty Phenotype statistics (0-1 scale)
7. Globalism Phenotype statistics (0-1 scale)
8. Institutional Outcome analysis
9. Correlation matrix
10. T-tests (CRISIS vs CONTROL)
11. Institutional Selectivity analysis
12. Comprehensive summary table

**Usage**:

```r
# Set working directory to repository root
setwd("~/legal-evolution-botnia-phenotypes")

# Run the script
source("replication/R_scripts/01_descriptive_stats.R")
```

## Dataset Structure

The script expects the following variables in the CSV file:

### Core Variables (14 total)

1. **Case_ID**: Unique identifier (e.g., "CRISIS_001", "CONTROL_001")
2. **Case_Name**: Descriptive case name
3. **Year**: Year of primary phenotypic expression
4. **Region**: Geographic region (Europe, Latin America, etc.)
5. **Country**: Country where case occurred
6. **Crisis_Control**: Binary indicator (CRISIS or CONTROL)
7. **Phenotypic_Expression**: Intensity of institutional competition (0-5 scale)
8. **Sovereignty_Phenotype**: Degree of sovereigntist institutional strategy (0-1 scale)
9. **Globalism_Phenotype**: Degree of globalist institutional strategy (0-1 scale)
10. **Institutional_Outcome**: Final institutional resolution (0 or 1)
11. **Institutional_Selectivity**: Degree of selective institutional engagement (0-1 scale)
12. **Duration_Months**: Temporal extent of phenotypic expression
13. **Geographic_Scope**: Spatial scale (Local, National, Regional, Global)
14. **Political_Salience**: Public attention intensity (Low, Medium, High)

## Verification Information

All 60 cases in the dataset have been verified through a rigorous 3-phase verification protocol:

- **Phase 1**: Claude-assisted case reconstruction
- **Phase 2**: Academic source verification (JSTOR, Google Scholar)
- **Phase 3**: Perplexity AI cross-validation

See `data_extended/verification_protocol.md` for complete methodology.

## Output Directory

The script creates outputs in:
```
replication/output/
├── summary_statistics.csv
└── correlation_matrix.csv
```

## Future Scripts (Planned)

- `02_correlation_analysis.R`: Advanced correlation and covariance analysis
- `03_t_tests.R`: Detailed t-test analysis with effect sizes
- `04_visualizations.R`: Publication-quality plots and figures
- `05_psm_preparation.R`: Data preparation for Propensity Score Matching (Phase 2)

## Support

For questions about the R scripts, contact:
- **Author**: Adrian Lerer
- **Project**: Legal Evolution of Botnia Phenotypes
- **Date**: October 2025

## License

See repository LICENSE file.
