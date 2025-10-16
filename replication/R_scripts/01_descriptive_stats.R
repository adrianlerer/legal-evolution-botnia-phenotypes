# ==============================================================================
# DESCRIPTIVE STATISTICS FOR 60-CASE DATASET
# Legal Evolution of Botnia Phenotypes Research Project
# Author: Adrian Lerer
# Date: October 2025
# ==============================================================================
# PURPOSE: Generate comprehensive descriptive statistics for the verified
# 60-case dataset (30 CRISIS + 30 CONTROL) using tidyverse framework
# ==============================================================================

# Load required libraries
library(tidyverse)
library(readr)
library(dplyr)
library(ggplot2)
library(knitr)

# Set working directory (adjust path as needed)
# setwd("~/legal-evolution-botnia-phenotypes")

# ==============================================================================
# 1. LOAD DATASET
# ==============================================================================

# Load the verified dataset
data <- read_csv("data_extended/dataset_60_cases_verified.csv")

# Display dataset structure
glimpse(data)

# ==============================================================================
# 2. BASIC DATASET OVERVIEW
# ==============================================================================

cat("\n=== DATASET OVERVIEW ===\n")
cat("Total Cases:", nrow(data), "\n")
cat("Total Variables:", ncol(data), "\n")
cat("\nVariable Names:\n")
print(names(data))

# ==============================================================================
# 3. CRISIS vs CONTROL BALANCE
# ==============================================================================

cat("\n=== CRISIS vs CONTROL BALANCE ===\n")
balance_table <- data %>%
  group_by(Crisis_Control) %>%
  summarise(
    N = n(),
    Percentage = (n() / nrow(data)) * 100
  )
print(balance_table)

# ==============================================================================
# 4. GEOGRAPHIC DISTRIBUTION
# ==============================================================================

cat("\n=== GEOGRAPHIC DISTRIBUTION ===\n")

# By region
region_table <- data %>%
  group_by(Region) %>%
  summarise(
    N = n(),
    Percentage = (n() / nrow(data)) * 100
  ) %>%
  arrange(desc(N))
print(region_table)

# By region and crisis status
region_crisis_table <- data %>%
  group_by(Region, Crisis_Control) %>%
  summarise(
    N = n(),
    .groups = "drop"
  ) %>%
  pivot_wider(names_from = Crisis_Control, values_from = N, values_fill = 0)
print(region_crisis_table)

# ==============================================================================
# 5. TEMPORAL DISTRIBUTION
# ==============================================================================

cat("\n=== TEMPORAL DISTRIBUTION ===\n")

# By decade
data <- data %>%
  mutate(Decade = floor(Year / 10) * 10)

decade_table <- data %>%
  group_by(Decade) %>%
  summarise(
    N = n(),
    Percentage = (n() / nrow(data)) * 100
  ) %>%
  arrange(Decade)
print(decade_table)

# By crisis status
decade_crisis_table <- data %>%
  group_by(Decade, Crisis_Control) %>%
  summarise(
    N = n(),
    .groups = "drop"
  ) %>%
  pivot_wider(names_from = Crisis_Control, values_from = N, values_fill = 0)
print(decade_crisis_table)

# ==============================================================================
# 6. PHENOTYPIC EXPRESSION STATISTICS
# ==============================================================================

cat("\n=== PHENOTYPIC EXPRESSION (0-5 SCALE) ===\n")

# Overall statistics
pheno_expr_overall <- data %>%
  summarise(
    N = n(),
    Mean = mean(Phenotypic_Expression, na.rm = TRUE),
    SD = sd(Phenotypic_Expression, na.rm = TRUE),
    Median = median(Phenotypic_Expression, na.rm = TRUE),
    Min = min(Phenotypic_Expression, na.rm = TRUE),
    Max = max(Phenotypic_Expression, na.rm = TRUE),
    Q1 = quantile(Phenotypic_Expression, 0.25, na.rm = TRUE),
    Q3 = quantile(Phenotypic_Expression, 0.75, na.rm = TRUE)
  )
print(pheno_expr_overall)

# By crisis status
pheno_expr_crisis <- data %>%
  group_by(Crisis_Control) %>%
  summarise(
    N = n(),
    Mean = mean(Phenotypic_Expression, na.rm = TRUE),
    SD = sd(Phenotypic_Expression, na.rm = TRUE),
    Median = median(Phenotypic_Expression, na.rm = TRUE),
    Min = min(Phenotypic_Expression, na.rm = TRUE),
    Max = max(Phenotypic_Expression, na.rm = TRUE)
  )
print(pheno_expr_crisis)

# Distribution by intensity level
pheno_distribution <- data %>%
  mutate(
    Intensity_Level = case_when(
      Phenotypic_Expression == 0 ~ "0 (None)",
      Phenotypic_Expression == 1 ~ "1 (Minimal)",
      Phenotypic_Expression == 2 ~ "2 (Low)",
      Phenotypic_Expression == 3 ~ "3 (Moderate)",
      Phenotypic_Expression == 4 ~ "4 (High)",
      Phenotypic_Expression == 5 ~ "5 (Very High)",
      TRUE ~ "Unknown"
    )
  ) %>%
  group_by(Intensity_Level) %>%
  summarise(
    N = n(),
    Percentage = (n() / nrow(data)) * 100
  )
print(pheno_distribution)

# ==============================================================================
# 7. SOVEREIGNTY PHENOTYPE STATISTICS
# ==============================================================================

cat("\n=== SOVEREIGNTY PHENOTYPE (0-1 SCALE) ===\n")

sovereignty_stats <- data %>%
  summarise(
    N = n(),
    Mean = mean(Sovereignty_Phenotype, na.rm = TRUE),
    SD = sd(Sovereignty_Phenotype, na.rm = TRUE),
    Median = median(Sovereignty_Phenotype, na.rm = TRUE),
    Min = min(Sovereignty_Phenotype, na.rm = TRUE),
    Max = max(Sovereignty_Phenotype, na.rm = TRUE)
  )
print(sovereignty_stats)

# By crisis status
sovereignty_crisis <- data %>%
  group_by(Crisis_Control) %>%
  summarise(
    N = n(),
    Mean = mean(Sovereignty_Phenotype, na.rm = TRUE),
    SD = sd(Sovereignty_Phenotype, na.rm = TRUE)
  )
print(sovereignty_crisis)

# ==============================================================================
# 8. GLOBALISM PHENOTYPE STATISTICS
# ==============================================================================

cat("\n=== GLOBALISM PHENOTYPE (0-1 SCALE) ===\n")

globalism_stats <- data %>%
  summarise(
    N = n(),
    Mean = mean(Globalism_Phenotype, na.rm = TRUE),
    SD = sd(Globalism_Phenotype, na.rm = TRUE),
    Median = median(Globalism_Phenotype, na.rm = TRUE),
    Min = min(Globalism_Phenotype, na.rm = TRUE),
    Max = max(Globalism_Phenotype, na.rm = TRUE)
  )
print(globalism_stats)

# By crisis status
globalism_crisis <- data %>%
  group_by(Crisis_Control) %>%
  summarise(
    N = n(),
    Mean = mean(Globalism_Phenotype, na.rm = TRUE),
    SD = sd(Globalism_Phenotype, na.rm = TRUE)
  )
print(globalism_crisis)

# ==============================================================================
# 9. INSTITUTIONAL OUTCOME STATISTICS
# ==============================================================================

cat("\n=== INSTITUTIONAL OUTCOME (BINARY) ===\n")

outcome_table <- data %>%
  group_by(Institutional_Outcome) %>%
  summarise(
    N = n(),
    Percentage = (n() / nrow(data)) * 100
  )
print(outcome_table)

# By crisis status
outcome_crisis_table <- data %>%
  group_by(Crisis_Control, Institutional_Outcome) %>%
  summarise(
    N = n(),
    .groups = "drop"
  ) %>%
  pivot_wider(names_from = Institutional_Outcome, values_from = N, values_fill = 0)
print(outcome_crisis_table)

# ==============================================================================
# 10. CORRELATION ANALYSIS
# ==============================================================================

cat("\n=== CORRELATION MATRIX (KEY VARIABLES) ===\n")

# Select numeric variables for correlation
cor_vars <- data %>%
  select(
    Phenotypic_Expression,
    Sovereignty_Phenotype,
    Globalism_Phenotype,
    Institutional_Outcome,
    Year
  )

# Calculate correlation matrix
cor_matrix <- cor(cor_vars, use = "complete.obs")
print(round(cor_matrix, 3))

# ==============================================================================
# 11. T-TESTS: CRISIS vs CONTROL
# ==============================================================================

cat("\n=== T-TESTS: CRISIS vs CONTROL ===\n")

# Phenotypic Expression
cat("\n--- Phenotypic Expression ---\n")
t_test_pheno <- t.test(
  Phenotypic_Expression ~ Crisis_Control,
  data = data
)
print(t_test_pheno)

# Sovereignty Phenotype
cat("\n--- Sovereignty Phenotype ---\n")
t_test_sov <- t.test(
  Sovereignty_Phenotype ~ Crisis_Control,
  data = data
)
print(t_test_sov)

# Globalism Phenotype
cat("\n--- Globalism Phenotype ---\n")
t_test_glob <- t.test(
  Globalism_Phenotype ~ Crisis_Control,
  data = data
)
print(t_test_glob)

# ==============================================================================
# 12. INSTITUTIONAL SELECTIVITY
# ==============================================================================

cat("\n=== INSTITUTIONAL SELECTIVITY ===\n")

selectivity_stats <- data %>%
  summarise(
    N = n(),
    Mean = mean(Institutional_Selectivity, na.rm = TRUE),
    SD = sd(Institutional_Selectivity, na.rm = TRUE),
    Median = median(Institutional_Selectivity, na.rm = TRUE),
    Min = min(Institutional_Selectivity, na.rm = TRUE),
    Max = max(Institutional_Selectivity, na.rm = TRUE)
  )
print(selectivity_stats)

# ==============================================================================
# 13. SUMMARY STATISTICS TABLE
# ==============================================================================

cat("\n=== COMPREHENSIVE SUMMARY TABLE ===\n")

summary_table <- data %>%
  summarise(
    Variable = c("Phenotypic_Expression", "Sovereignty_Phenotype", 
                 "Globalism_Phenotype", "Institutional_Outcome",
                 "Institutional_Selectivity"),
    Mean = c(
      mean(Phenotypic_Expression, na.rm = TRUE),
      mean(Sovereignty_Phenotype, na.rm = TRUE),
      mean(Globalism_Phenotype, na.rm = TRUE),
      mean(Institutional_Outcome, na.rm = TRUE),
      mean(Institutional_Selectivity, na.rm = TRUE)
    ),
    SD = c(
      sd(Phenotypic_Expression, na.rm = TRUE),
      sd(Sovereignty_Phenotype, na.rm = TRUE),
      sd(Globalism_Phenotype, na.rm = TRUE),
      sd(Institutional_Outcome, na.rm = TRUE),
      sd(Institutional_Selectivity, na.rm = TRUE)
    ),
    Min = c(
      min(Phenotypic_Expression, na.rm = TRUE),
      min(Sovereignty_Phenotype, na.rm = TRUE),
      min(Globalism_Phenotype, na.rm = TRUE),
      min(Institutional_Outcome, na.rm = TRUE),
      min(Institutional_Selectivity, na.rm = TRUE)
    ),
    Max = c(
      max(Phenotypic_Expression, na.rm = TRUE),
      max(Sovereignty_Phenotype, na.rm = TRUE),
      max(Globalism_Phenotype, na.rm = TRUE),
      max(Institutional_Outcome, na.rm = TRUE),
      max(Institutional_Selectivity, na.rm = TRUE)
    )
  )
print(summary_table)

# ==============================================================================
# 14. EXPORT RESULTS
# ==============================================================================

# Create output directory if it doesn't exist
if (!dir.exists("replication/output")) {
  dir.create("replication/output", recursive = TRUE)
}

# Save summary table
write_csv(summary_table, "replication/output/summary_statistics.csv")

# Save correlation matrix
write.csv(cor_matrix, "replication/output/correlation_matrix.csv")

cat("\n=== ANALYSIS COMPLETE ===\n")
cat("Results saved to: replication/output/\n")
cat("- summary_statistics.csv\n")
cat("- correlation_matrix.csv\n")

# ==============================================================================
# END OF SCRIPT
# ==============================================================================
