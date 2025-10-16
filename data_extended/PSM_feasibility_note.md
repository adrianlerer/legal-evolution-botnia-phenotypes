# Propensity Score Matching (PSM) Feasibility Note

**Project**: Legal Evolution of Botnia Phenotypes  
**Author**: Adrian Lerer  
**Date**: October 2025  
**Purpose**: Technical assessment of PSM implementation for causal inference in Phase 2

---

## 1. Executive Summary

This note evaluates the **feasibility of implementing Propensity Score Matching (PSM)** for the Legal Evolution of Botnia Phenotypes research project. PSM is a quasi-experimental method for estimating causal effects from observational data by controlling for confounding variables through matching treatment and control units with similar propensity scores (Rosenbaum & Rubin, 1983).

**Key Findings**:
- ✅ **Feasible**: Dataset structure (30 CRISIS + 30 CONTROL) enables PSM implementation
- ⚠️ **Covariate Limitations**: Current dataset (Phase 1) lacks necessary covariates for robust PSM
- 📈 **Path Forward**: Phase 2 data collection (Q1-Q2 2026) will expand covariate set to enable rigorous PSM analysis

---

## 2. PSM Fundamentals

### 2.1 What is Propensity Score Matching?

**Definition**: PSM estimates the probability (propensity score) that a unit receives treatment based on observed covariates, then matches treated units with control units having similar propensity scores.

**Purpose**: Reduces selection bias in observational studies by creating comparable treatment and control groups (as in randomized experiments).

**Formula**:
```
e(X) = P(T = 1 | X)
```
Where:
- `e(X)` = propensity score
- `T` = treatment indicator (1 = CRISIS, 0 = CONTROL in our case)
- `X` = vector of observed covariates

### 2.2 Key Assumptions

PSM relies on two critical assumptions:

1. **Conditional Independence Assumption (CIA)**:
   - Treatment assignment is independent of potential outcomes, conditional on covariates
   - Formally: `(Y₁, Y₀) ⊥ T | X`
   - **Interpretation**: All confounders are observed and included in X

2. **Common Support (Overlap) Assumption**:
   - For every treated unit, there exists a control unit with similar propensity score
   - Formally: `0 < P(T = 1 | X) < 1` for all X
   - **Interpretation**: Treatment and control groups overlap in covariate space

---

## 3. Current Dataset (Phase 1) Assessment

### 3.1 Available Variables

The Phase 1 dataset (`dataset_60_cases_verified.csv`) contains **14 variables**:

| **Variable** | **Type** | **Role in PSM** |
|-------------|----------|-----------------|
| Case_ID | Identifier | Not used |
| Case_Name | Identifier | Not used |
| Year | Numeric | **Potential covariate** |
| Region | Categorical | **Potential covariate** |
| Country | Categorical | Too granular (60 unique values) |
| Crisis_Control | Binary | **Treatment variable** |
| Phenotypic_Expression | Numeric (0-5) | **Outcome variable** |
| Sovereignty_Phenotype | Numeric (0-1) | **Outcome variable** |
| Globalism_Phenotype | Numeric (0-1) | **Outcome variable** |
| Institutional_Outcome | Binary | **Outcome variable** |
| Institutional_Selectivity | Numeric (0-1) | **Outcome variable** |
| Duration_Months | Numeric | **Potential covariate** |
| Geographic_Scope | Categorical | **Potential covariate** |
| Political_Salience | Categorical | **Potential covariate** |

### 3.2 Covariate Limitations

**Problem**: Current dataset has **insufficient covariates** to satisfy the CIA assumption.

**Missing Covariates** (critical for controlling selection bias):
1. **Economic Indicators**:
   - GDP per capita
   - Trade openness (trade/GDP ratio)
   - Economic growth rate
   - Foreign direct investment (FDI) inflows

2. **Political Indicators**:
   - Democracy score (Polity IV, V-Dem)
   - Government ideology (left-right scale)
   - Electoral system type
   - Political stability index

3. **Institutional Indicators**:
   - Number of international treaties signed
   - Years of EU membership (for European cases)
   - Regional integration depth (MERCOSUR, ALBA, etc.)
   - Judicial independence score

4. **Historical Indicators**:
   - Colonial history (colonizer identity)
   - Years since independence
   - Previous sovereignty disputes (count)

**Consequence**: PSM with only 4-5 covariates (Year, Region, Duration_Months, Geographic_Scope, Political_Salience) would produce **biased estimates** due to unobserved confounders.

---

## 4. PSM Feasibility with Current Data

### 4.1 Can We Run PSM Now?

**Technical Answer**: Yes, we can mechanically run PSM with current covariates.

**Statistical Answer**: No, results would be **unreliable** and **non-publishable** due to:
- High risk of omitted variable bias
- Inability to satisfy CIA assumption
- Weak covariate balance after matching
- Limited number of covariates (4-5) vs. recommended minimum (8-12)

### 4.2 Illustrative PSM Workflow (Current Data)

If we were to proceed with current data:

```r
# Load packages
library(MatchIt)
library(tidyverse)

# Load data
data <- read_csv("data_extended/dataset_60_cases_verified.csv")

# Prepare covariates (INCOMPLETE)
data <- data %>%
  mutate(
    Region_Binary = ifelse(Region == "Europe", 1, 0),
    Scope_Numeric = case_when(
      Geographic_Scope == "Local" ~ 1,
      Geographic_Scope == "National" ~ 2,
      Geographic_Scope == "Regional" ~ 3,
      Geographic_Scope == "Global" ~ 4
    ),
    Salience_Numeric = case_when(
      Political_Salience == "Low" ~ 1,
      Political_Salience == "Medium" ~ 2,
      Political_Salience == "High" ~ 3
    )
  )

# Estimate propensity scores (BIASED due to missing covariates)
psm_model <- matchit(
  Crisis_Control ~ Year + Region_Binary + Duration_Months + 
                   Scope_Numeric + Salience_Numeric,
  data = data,
  method = "nearest",
  distance = "logit",
  ratio = 1
)

# Check balance (would likely show poor balance)
summary(psm_model)

# Extract matched data
matched_data <- match.data(psm_model)

# Estimate treatment effect (UNRELIABLE)
lm(Phenotypic_Expression ~ Crisis_Control, data = matched_data)
```

**Expected Problems**:
1. **Poor Covariate Balance**: Standardized mean differences > 0.1 for key covariates
2. **Common Support Violations**: Some treated units lack good control matches
3. **High Sensitivity to Hidden Bias**: Results would change dramatically if unmeasured confounders exist

---

## 5. Phase 2 Roadmap: Expanded Covariate Set

### 5.1 Required Data Collection (2026)

To enable rigorous PSM, Phase 2 will collect the following covariates for all 60 cases:

#### Economic Covariates (n=5)
1. **GDP_per_capita**: World Bank data (constant 2015 USD)
2. **Trade_Openness**: (Exports + Imports) / GDP (World Bank)
3. **GDP_Growth**: Annual GDP growth rate (World Bank)
4. **FDI_Inflows**: Foreign direct investment, % of GDP (World Bank)
5. **Inflation_Rate**: Consumer price index (World Bank)

#### Political Covariates (n=5)
6. **Democracy_Score**: Polity IV score (-10 to +10) or V-Dem Liberal Democracy Index (0-1)
7. **Government_Ideology**: Left-Right scale (-1 to +1) from Comparative Political Data Set
8. **Electoral_System**: Categorical (Majoritarian, Proportional, Mixed)
9. **Political_Stability**: World Bank Governance Indicators (-2.5 to +2.5)
10. **Press_Freedom**: Freedom House score (0-100)

#### Institutional Covariates (n=5)
11. **Treaty_Density**: Number of bilateral investment treaties (BITs) signed (UNCTAD)
12. **EU_Membership_Years**: Years as EU member (0 if non-EU)
13. **Regional_Integration_Depth**: Index (0-1) based on MERCOSUR, ALBA, Pacific Alliance membership
14. **Judicial_Independence**: V-Dem Judicial Independence Index (0-1)
15. **Rule_of_Law**: World Bank Rule of Law Index (-2.5 to +2.5)

#### Historical Covariates (n=3)
16. **Colonial_History**: Categorical (British, Spanish, Portuguese, French, None)
17. **Years_Since_Independence**: Continuous (2025 - independence year)
18. **Prior_Sovereignty_Disputes**: Count of previous disputes (1990-case year)

**Total Covariates**: 18 (in addition to current 5) = **23 covariates for PSM**

### 5.2 Data Sources

| **Covariate Category** | **Primary Source** | **Backup Source** |
|------------------------|-------------------|------------------|
| Economic | World Bank WDI | IMF World Economic Outlook |
| Political (Democracy) | Polity IV Project | V-Dem Dataset |
| Political (Ideology) | Comparative Political Data Set | Manifesto Project |
| Institutional (Treaties) | UNCTAD | ICSID Database |
| Institutional (EU) | Eurostat | Europa.eu |
| Governance | World Bank WGI | Freedom House |
| Historical | CIA World Factbook | Wikipedia (verified) |

**Data Accessibility**: All sources are publicly available and free (no paywalls).

### 5.3 Data Collection Timeline

| **Quarter** | **Activity** | **Deliverable** |
|------------|-------------|----------------|
| Q1 2026 | Covariate data collection (economic + political) | 10 covariates added |
| Q2 2026 | Covariate data collection (institutional + historical) | 18 covariates added |
| Q3 2026 | PSM analysis + sensitivity analysis | Working paper draft |
| Q4 2026 | Peer review + revision | Journal submission |

---

## 6. PSM Implementation Plan (Phase 2)

### 6.1 Propensity Score Estimation

**Method**: Logistic regression

**Formula**:
```
logit(e(X)) = β₀ + β₁(GDP_per_capita) + β₂(Democracy_Score) + ... + β₁₈(Prior_Disputes) + ε
```

**Software**: R package `MatchIt` (Ho et al., 2011) or Stata `psmatch2` (Leuven & Sianesi, 2003)

### 6.2 Matching Algorithm

**Primary Method**: **Nearest Neighbor Matching (1:1 ratio)**
- Each CRISIS case matched to 1 CONTROL case with most similar propensity score
- Caliper = 0.2 × SD(propensity score) to ensure good matches

**Alternative Methods** (for robustness checks):
1. **Kernel Matching**: Uses weighted average of all control units
2. **Radius Matching**: Matches within caliper distance
3. **Optimal Matching**: Minimizes global matching distance

### 6.3 Balance Diagnostics

**Covariate Balance Tests**:
1. **Standardized Mean Difference (SMD)**: Target < 0.1 for all covariates
2. **Variance Ratio**: Target 0.5-2.0 for continuous covariates
3. **Love Plot**: Visual inspection of covariate balance before/after matching

**Common Support Assessment**:
- Histogram of propensity scores for treatment vs. control groups
- Identify and trim cases outside common support region

### 6.4 Treatment Effect Estimation

**Average Treatment Effect on the Treated (ATT)**:
```
ATT = E[Y₁ - Y₀ | T = 1]
```

Where:
- Y₁ = outcome for treated units (CRISIS cases)
- Y₀ = outcome for control units (matched CONTROL cases)
- T = 1 indicates CRISIS case

**Outcome Variables**:
1. **Phenotypic_Expression** (0-5 scale): Primary outcome
2. **Sovereignty_Phenotype** (0-1 scale): Secondary outcome
3. **Globalism_Phenotype** (0-1 scale): Secondary outcome
4. **Institutional_Outcome** (binary): Tertiary outcome

### 6.5 Sensitivity Analysis

**Rosenbaum Bounds Test** (Rosenbaum, 2002):
- Assesses how strong hidden bias must be to change conclusions
- Reports Gamma (Γ) threshold at which results become non-significant
- **Target**: Γ > 2.0 indicates robust results

**Formula**:
```
Γ = odds(e(X)_treated) / odds(e(X)_control)
```

---

## 7. Expected Results and Implications

### 7.1 Hypothesized Treatment Effects

Based on Extended Phenotype Theory (Dawkins, 1982), we hypothesize:

**H1**: CRISIS cases will have **higher Phenotypic_Expression** than matched CONTROL cases  
**Expected ATT**: +1.5 to +2.0 points on 0-5 scale (p < 0.01)

**H2**: CRISIS cases will have **higher Sovereignty_Phenotype** than matched CONTROL cases  
**Expected ATT**: +0.20 to +0.30 on 0-1 scale (p < 0.05)

**H3**: CRISIS cases will have **lower Globalism_Phenotype** than matched CONTROL cases  
**Expected ATT**: -0.15 to -0.25 on 0-1 scale (p < 0.05)

### 7.2 Causal Interpretation

If ATT estimates are statistically significant and Rosenbaum bounds are robust:

**Causal Claim**: Economic or political crises **cause** increased phenotypic expression of sovereigntist memeplexes, controlling for pre-crisis economic, political, and institutional characteristics.

**Mechanism**: Crises create **selection pressures** that favor Sovereigntist Extended Phenotypes over Globalist phenotypes, leading to observable institutional changes (withdrawals, renegotiations, defiance).

---

## 8. Limitations and Caveats

### 8.1 Fundamental PSM Limitations

1. **CIA Assumption Untestable**: We can never know if all confounders are observed
2. **No Time-Varying Confounders**: PSM assumes confounders measured at single point (pre-treatment)
3. **External Validity**: Results may not generalize beyond Europe and Latin America

### 8.2 Dataset-Specific Challenges

1. **Small Sample Size**: 60 cases (30 treated) is near lower bound for PSM
   - **Mitigation**: Use multiple matching algorithms, report sensitivity analyses
2. **Geographic Clustering**: Europe (56.7%) and Latin America (43.3%) may have region-specific confounders
   - **Mitigation**: Include region fixed effects, test for effect heterogeneity
3. **Temporal Clustering**: 68% of cases in 2010s may reflect period-specific trends
   - **Mitigation**: Include decade fixed effects, test for time trends

---

## 9. Alternative Causal Inference Methods

If PSM proves infeasible, consider:

### 9.1 Regression Discontinuity Design (RDD)
**Applicability**: If some cases have "sharp" crisis thresholds (e.g., GDP decline > 5%)
**Advantage**: Stronger causal identification than PSM
**Challenge**: Requires continuous forcing variable

### 9.2 Difference-in-Differences (DiD)
**Applicability**: If longitudinal data available (pre/post crisis)
**Advantage**: Controls for time-invariant confounders
**Challenge**: Requires parallel trends assumption

### 9.3 Synthetic Control Method (SCM)
**Applicability**: For high-profile cases with detailed longitudinal data (e.g., Brexit, Venezuela)
**Advantage**: Creates synthetic control group from weighted donor pool
**Challenge**: Data-intensive, case-by-case implementation

---

## 10. Conclusion and Recommendation

### Current Status (Phase 1)
❌ **PSM Not Feasible**: Current dataset lacks necessary covariates for rigorous causal inference.

### Path Forward (Phase 2)
✅ **PSM Feasible with Data Expansion**: Collecting 18 additional covariates (Q1-Q2 2026) will enable:
- Robust propensity score estimation
- Credible covariate balance
- Publication-quality causal inference

### Recommendation
**Proceed with Phase 2 data collection** following the roadmap outlined in Section 5. Expected completion: Q4 2026.

---

## 11. References

- **Dawkins, Richard** (1982). *The Extended Phenotype: The Long Reach of the Gene*. Oxford University Press.
- **Ho, Daniel E., Kosuke Imai, Gary King, and Elizabeth A. Stuart** (2011). "MatchIt: Nonparametric Preprocessing for Parametric Causal Inference." *Journal of Statistical Software* 42(8): 1-28.
- **Leuven, Edwin, and Barbara Sianesi** (2003). "PSMATCH2: Stata Module to Perform Full Mahalanobis and Propensity Score Matching."
- **Rosenbaum, Paul R.** (2002). *Observational Studies*. 2nd ed. New York: Springer.
- **Rosenbaum, Paul R., and Donald B. Rubin** (1983). "The Central Role of the Propensity Score in Observational Studies for Causal Effects." *Biometrika* 70(1): 41-55.

---

**Document Version**: 1.0  
**Last Updated**: October 2025  
**Author**: Adrian Lerer  
**Contact**: adrian.lerer@example.com  
**Project Repository**: https://github.com/adrianlerer/legal-evolution-botnia-phenotypes
