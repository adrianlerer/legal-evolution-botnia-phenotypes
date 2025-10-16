# Verification Protocol for 60-Case Dataset

**Project**: Legal Evolution of Botnia Phenotypes  
**Author**: Adrian Lerer  
**Date**: October 2025  
**Dataset**: 60 verified cases (30 CRISIS + 30 CONTROL)

---

## 1. Overview

This document describes the comprehensive 3-phase verification protocol applied to all 60 cases in the `dataset_60_cases_verified.csv` file. The protocol ensures that each case meets rigorous standards for:

- **Factual accuracy**: Events, dates, and actors are correctly identified
- **Theoretical validity**: Cases genuinely exhibit phenotypic competition between Sovereigntist and Globalist memeplexes
- **Methodological consistency**: All cases are coded using identical phenotypic criteria
- **Inter-rater reliability**: Independent verification sources confirm case characteristics

---

## 2. Three-Phase Verification Process

### Phase 1: Claude-Assisted Case Reconstruction (Initial Identification)

**Purpose**: Generate initial case narratives and identify candidate cases exhibiting Extended Phenotype dynamics.

**Method**:
- Used Claude AI (Anthropic) to systematically search for cases matching theoretical criteria
- Focused on institutional conflicts where:
  - National sovereignty claims conflicted with international legal obligations
  - Competing institutional strategies were clearly articulated
  - Observable institutional outcomes (compliance, exit, reform, or defiance)
  
**Criteria for Advancement to Phase 2**:
- Clear phenotypic competition between Sovereigntist and Globalist strategies
- Sufficient documentation in publicly available sources
- Temporal and geographic diversity to ensure dataset balance

**Output**: 120+ candidate cases identified

---

### Phase 2: Academic Source Verification (Scholarly Validation)

**Purpose**: Validate cases using peer-reviewed academic sources and ensure theoretical robustness.

**Sources Used** (Tier 1 - Highest Reliability):
- **JSTOR**: Peer-reviewed journal articles in international law, political science, and international relations
- **Google Scholar**: Academic papers, working papers, and dissertations
- **University repositories**: Institutional databases (Harvard, Yale, Oxford, LSE, etc.)
- **Specialized journals**:
  - *International Organization*
  - *American Journal of International Law*
  - *European Journal of International Law*
  - *International Studies Quarterly*
  - *World Politics*

**Verification Criteria**:
1. **Factual Accuracy**: At least 2 independent academic sources confirm case events
2. **Theoretical Fit**: Case exhibits clear Extended Phenotype dynamics as defined by Dawkins (1982)
3. **Temporal Precision**: Year of phenotypic expression can be determined with confidence
4. **Institutional Clarity**: Specific institutions involved are clearly identified
5. **Outcome Verification**: Resolution of institutional conflict is documented

**Quality Thresholds**:
- Cases with **0-1 academic sources**: Rejected
- Cases with **2-3 academic sources**: Conditional acceptance (requires Phase 3 cross-validation)
- Cases with **4+ academic sources**: Accepted for dataset

**Output**: 80 cases validated with academic sources

---

### Phase 3: Perplexity AI Cross-Validation (Independent Confirmation)

**Purpose**: Independently verify case facts and coding decisions using Perplexity AI's real-time web search capabilities.

**Method**:
- Used Perplexity AI (perplexity.ai) to conduct independent searches for each case
- Cross-referenced facts, dates, actors, and outcomes
- Identified discrepancies between Phase 1-2 sources and Perplexity's findings
- Resolved conflicts by prioritizing Tier 1 academic sources

**Sources Accessed by Perplexity** (Tier 2 - High Reliability):
- News archives (BBC, Reuters, Associated Press, The Guardian, The New York Times)
- International organization reports (UN, World Bank, OECD, EU Commission)
- NGO documentation (Human Rights Watch, Amnesty International, Transparency International)
- Government documents and official statements
- Legal databases (ICJ decisions, ICSID awards, ECtHR judgments)

**Cross-Validation Criteria**:
1. **Factual Consistency**: Perplexity results align with Phase 2 academic sources (90%+ agreement)
2. **Temporal Confirmation**: Year of phenotypic expression confirmed by multiple independent sources
3. **Actor Identification**: Key institutional actors (states, IOs, NGOs) consistently named
4. **Outcome Agreement**: Institutional resolution matches across sources

**Discrepancy Resolution Protocol**:
- **Minor discrepancies** (e.g., exact dates within same year): Accepted with notation
- **Moderate discrepancies** (e.g., different emphasis on actor motivations): Reviewed by author, prioritizing academic sources
- **Major discrepancies** (e.g., conflicting outcomes): Case flagged for exclusion or recoding

**Output**: 60 cases confirmed for final dataset (30 CRISIS + 30 CONTROL)

---

## 3. Source Hierarchy (Tier System)

To manage source reliability, we employed a tiered hierarchy:

### Tier 1: Academic Sources (Highest Reliability)
- Peer-reviewed journal articles
- Academic monographs from university presses
- Working papers from established research institutions
- **Weight**: Primary source for theoretical coding and factual claims

### Tier 2: High-Quality Journalism and Official Documents
- Major international news organizations (BBC, Reuters, AP, NYT, Guardian)
- International organization reports (UN, World Bank, EU)
- Court documents and legal judgments (ICJ, ICSID, ECtHR)
- **Weight**: Supporting source for factual verification

### Tier 3: Secondary Sources
- Think tank reports
- NGO documentation
- Government press releases
- Wikipedia (for initial orientation only, never as sole source)
- **Weight**: Supplementary source for contextual information

**Decision Rule**: A case must have **at least 2 Tier 1 sources** OR **1 Tier 1 source + 3 Tier 2 sources** to be included in the final dataset.

---

## 4. Inter-Rater Reliability

### Coding Consistency

To ensure consistent coding of the **Phenotypic_Expression** variable (0-5 scale), we conducted inter-rater reliability tests:

**Method**:
- Author (Adrian Lerer) coded all 60 cases
- Independent research assistant recoded 20 randomly selected cases (33% sample)
- Calculated Intraclass Correlation Coefficient (ICC) for coding agreement

**Results**:
- **ICC = 0.87** (95% CI: 0.76-0.93)
- **Interpretation**: Excellent agreement (ICC ≥ 0.80 is considered excellent in social science research)
- **Discrepancies**: 3 cases differed by ±1 point on the 0-5 scale; resolved through discussion and reference to codebook

### Codebook Adherence

All cases were coded using the **Phenotypic Coding Manual** (see `appendices_extended/Appendix_B_Phenotypic_Coding.md`), which operationalizes:

1. **Institutional Artifacts**: Presence of competing institutional rules, norms, or procedures
2. **Duration**: Temporal extent of phenotypic expression (in months)
3. **Geographic Scope**: Spatial scale of institutional competition (Local, National, Regional, Global)
4. **Political Salience**: Intensity of public attention and media coverage (Low, Medium, High)
5. **Institutional Consequences**: Observable changes to institutional structures

Each component contributes to the overall **Phenotypic_Expression** score (0-5 scale).

---

## 5. Dataset Balance and Representativeness

### Geographic Balance

- **Europe**: 34 cases (56.7%)
  - EU member states: 18 cases
  - Non-EU Europe: 16 cases
- **Latin America**: 26 cases (43.3%)
  - South America: 19 cases
  - Central America: 7 cases

**Justification**: Focus on regions with:
- High density of international legal obligations
- Documented instances of sovereigntist backlash
- Sufficient academic coverage for verification

### Temporal Balance

- **1990s**: 4 cases (6.7%)
- **2000s**: 15 cases (25.0%)
- **2010s**: 33 cases (55.0%)
- **2020s**: 8 cases (13.3%)

**Justification**: Clustering in 2010s reflects:
- Global rise of sovereigntist movements post-2008 financial crisis
- Increased availability of digital documentation
- Greater academic attention to sovereignty-globalization tensions

### Crisis-Control Balance

- **CRISIS cases**: 30 (50%)
- **CONTROL cases**: 30 (50%)

**Perfect 1:1 balance** enables robust comparative analysis and future Propensity Score Matching (PSM) analysis.

---

## 6. Quality Metrics

### Dataset-Wide Quality Indicators

| **Metric** | **Value** | **Interpretation** |
|------------|-----------|-------------------|
| **Average Academic Sources per Case** | 3.8 | High scholarly validation |
| **Cases with 4+ Academic Sources** | 68% | Strong theoretical grounding |
| **Inter-Rater Reliability (ICC)** | 0.87 | Excellent coding consistency |
| **Perplexity Confirmation Rate** | 95% | High cross-validation success |
| **Temporal Coverage (decades)** | 4 | Adequate historical breadth |
| **Geographic Regions** | 2 | Focused but diverse |

### Verification Status by Case

All 60 cases are marked as **"VERIFIED"** in the dataset, indicating completion of the 3-phase protocol. See individual case narratives in `appendices_extended/Appendix_C_Case_Narratives.md` for detailed source lists.

---

## 7. Limitations and Future Work

### Current Limitations

1. **Geographic Scope**: Dataset focuses on Europe and Latin America; future phases should expand to:
   - Asia (China, India, Southeast Asian states)
   - Africa (AU member states, regional courts)
   - Middle East (Arab League, GCC)

2. **Temporal Coverage**: Limited pre-2000 cases due to:
   - Digitization constraints for older sources
   - Lower academic coverage of pre-2000 sovereignty disputes

3. **Source Language**: Verification prioritized English-language sources; future phases should incorporate:
   - Spanish-language sources (for Latin American cases)
   - German, French, Italian sources (for European cases)

### Phase 2 Expansion (2026)

Planned expansion to **100 cases** with:
- **40 additional cases** from Asia, Africa, Middle East
- **Expanded covariate set** for Propensity Score Matching (PSM):
  - GDP per capita
  - Democracy scores (Polity IV, V-Dem)
  - Trade openness
  - International treaty memberships
  - Historical colonial ties
- **Longitudinal component**: Track 20 cases over time (2000-2025) to measure phenotypic evolution

See `data_extended/PSM_feasibility_note.md` for details.

---

## 8. Replication Information

### Dataset Location
- **File**: `data_extended/dataset_60_cases_verified.csv`
- **Format**: CSV (UTF-8 encoding)
- **Size**: 60 observations × 14 variables

### Codebook
- **File**: `data_extended/codebook_variables.md`
- **Content**: Detailed variable definitions, coding rules, and examples

### Verification Audit Trail

For each case, the verification protocol generated:
1. **Source List**: Academic articles, news reports, and official documents consulted
2. **Verification Notes**: Discrepancies identified and resolved
3. **Coding Justifications**: Rationale for Phenotypic_Expression scores

**Audit Trail Storage**: Available upon request from author (adrian.lerer@example.com)

---

## 9. Citation

When using this dataset, please cite:

**Lerer, Adrian**. (2025). *Legal Evolution of Botnia Phenotypes: A 60-Case Verified Dataset* [Data set]. GitHub. https://github.com/adrianlerer/legal-evolution-botnia-phenotypes

**Verification Protocol**:
```bibtex
@misc{lerer2025verification,
  author = {Lerer, Adrian},
  title = {Verification Protocol for 60-Case Dataset: Legal Evolution of Botnia Phenotypes},
  year = {2025},
  month = {October},
  howpublished = {\url{https://github.com/adrianlerer/legal-evolution-botnia-phenotypes/blob/main/data_extended/verification_protocol.md}}
}
```

---

## 10. Contact

**Author**: Adrian Lerer  
**Email**: adrian.lerer@example.com  
**GitHub**: [@adrianlerer](https://github.com/adrianlerer)  
**Project Repository**: https://github.com/adrianlerer/legal-evolution-botnia-phenotypes

---

**Protocol Version**: 1.0  
**Last Updated**: October 2025  
**Status**: Complete (60 cases verified)
