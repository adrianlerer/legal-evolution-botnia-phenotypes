# International Law as Extended Phenotype: Replication Materials

[![DOI](https://img.shields.io/badge/DOI-10.2139%2Fssrn.XXXXXXX-blue)](https://papers.ssrn.com/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Data: Verified](https://img.shields.io/badge/Data-Verified-green.svg)](data/)

## Overview

This repository contains complete replication materials for:

**"International Law as Extended Phenotype: Globalist and Sovereigntist Memeplexes Competing Through Legal Artifacts (2000-2025)"**

**Author:** Ignacio Adrian Lerer  
**Institution:** Independent Legal Scholar, Buenos Aires, Argentina  
**Date:** October 15, 2025  
**Paper:** [SSRN Link - to be added upon publication]  
**Email:** adrian@lerer.com.ar

## Abstract

This paper applies Dawkins's extended phenotype framework to international law, arguing that legal institutions—treaties, tribunals, judicial decisions—are not mere "representations" of political ideas but **material artifacts** constructed by competing memeplexes. Using a verified dataset of 60 transnational conflicts (2000-2025), with the Argentina-Uruguay Botnia pulp mill case (2006-2010) as paradigmatic, I demonstrate that globalist and sovereigntist memeplexes produce distinct phenotypic legal artifacts through institutional competition. The International Court of Justice's Botnia ruling (2010), EU Article 7 procedures against Poland/Hungary, and Latin American environmental tribunals are analyzed as extended phenotypes—physical constructs that extend the replicative capacity of their underlying memeplexes, analogous to beaver dams or spider webs in biological systems. This framework reveals international law not as neutral norm-setting but as an evolutionary battlefield where memetic fitness determines which legal artifacts persist, replicate, and shape future conflicts.

**Key Findings:**
- **Crisis effect**: Crisis cases show 49% higher phenotypic expression (Cohen's d = 1.88, p < 0.001)
- **Zero-sum trade-off**: Sovereignty-Globalism phenotypes are perfectly negatively correlated (r ≈ -1.0)
- **Crisis catalyst**: Crisis-catalyzed cases result in sovereignty victories 90% of the time (vs. 20% in control cases)
- **Temporal phase transition**: 2015 marks inflection point—68% of cases occur 2010-2020, with 40% in 2015-2019 alone
- **Phenotypic fitness matrix**: Globalist strategies achieve 0.91 fitness under stable conditions but drop to 0.35 under crisis; sovereigntist strategies show inverse pattern (0.44 stable, 0.82 crisis)

## Repository Structure

```
legal-evolution-botnia-phenotypes/
├── README.md                 # This file
├── LICENSE                   # CC BY 4.0 license
├── CITATION.cff             # Citation metadata
├── paper/                    # Paper documents
│   └── paper_original.docx  # Full manuscript (SSRN version)
├── data/                     # Datasets (standard)
│   ├── dataset_PSM_60casos_clean.csv  # Main dataset (60 cases)
│   └── DATA_CODEBOOK.md     # Variable descriptions
├── data_extended/           # ✨ EXTENDED DOCUMENTATION (Oct 2025)
│   ├── dataset_60_cases_verified.csv  # Comprehensive verified dataset
│   ├── codebook_variables.md          # 50+ page codebook (14 variables)
│   ├── verification_protocol.md       # 3-phase verification process
│   └── PSM_feasibility_note.md        # Causal inference roadmap
├── code/                     # Analysis scripts
│   ├── generate_paper_figures.py     # Figure generation
│   └── requirements.txt     # Python dependencies
├── figures/                  # Publication-quality figures (300 DPI)
│   ├── figure1_timeline.png              # Temporal distribution
│   ├── figure2_geographic_map.png        # Geographic breakdown
│   ├── figure3_conflict_typology.png     # Conflict types
│   ├── figure4_fitness_matrix.png        # Phenotypic fitness
│   ├── figure5_botnia_network.png        # Citation network
│   ├── figure6_phenotypic_expression_boxplots.png  # Statistical comparison
│   └── figure7_temporal_cycles.png       # Temporal cycles
├── appendices/              # Supplementary materials (standard)
│   ├── APPENDIX_A_VERIFICATION_SOURCES.md  # Case verification details
│   ├── APPENDIX_B_EXCLUDED_CASES.md        # Excluded cases with justification
│   ├── APPENDIX_C_METHODOLOGY.md           # Extended methodology
│   └── APPENDIX_D_PSM_DIAGNOSTICS.md       # PSM balance checks
├── appendices_extended/     # ✨ EXTENDED DOCUMENTATION (Oct 2025)
│   ├── Appendix_A_Dataset_Summary.md      # 60+ pages descriptive statistics
│   ├── Appendix_B_Phenotypic_Coding.md    # 70+ pages coding manual
│   ├── Appendix_C_Case_Narratives.md      # 150+ pages, 10 detailed cases
│   └── Appendix_D_Botnia_Timeline.md      # 50+ pages, author's insider perspective
├── replication/             # ✨ EXTENDED DOCUMENTATION (Oct 2025)
│   ├── R_scripts/           # R analysis scripts
│   │   ├── 01_descriptive_stats.R         # Comprehensive descriptive stats
│   │   └── README_R.md                     # R dependencies and usage
│   └── Python_scripts/      # Python scripts (existing)
└── docs/                    # Documentation
    ├── REPLICATION_INSTRUCTIONS.md        # Step-by-step replication guide
    └── EXTENDED_DOCUMENTATION.md          # ✨ Extended docs index (470+ pages)
```

## Extended Documentation (October 2025)

This repository now features a **two-tier documentation system**:

### Tier 1: Standard Documentation
Core research materials for general audiences:
- `/data/` - Original datasets
- `/appendices/` - Standard supplementary materials
- `/code/` - Figure generation scripts

### Tier 2: Extended Documentation ✨
In-depth materials for replication and extension studies (**470+ pages**):

#### Data Documentation (`/data_extended/`)
- **Codebook** (50+ pages): Comprehensive variable definitions for all 14 variables
- **Verification Protocol** (40+ pages): 3-phase verification methodology (Claude → Academic Sources → Perplexity AI)
- **PSM Feasibility Note** (50+ pages): Causal inference roadmap for Phase 2 (2026)

#### Case Studies (`/appendices_extended/`)
- **Appendix A** (60+ pages): Dataset summary with 15 sections of descriptive statistics
- **Appendix B** (70+ pages): Phenotypic coding manual operationalizing Extended Phenotype Theory
- **Appendix C** (150+ pages): 10 detailed case narratives (Botnia, Brexit, Poland, Greece, Venezuela, Ecuador, Russia, Philippines, Brazil, Hungary)
- **Appendix D** (50+ pages): Botnia timeline with author's insider perspective as AFOA Vice President (2005-2008)

#### Replication Materials (`/replication/`)
- **R Scripts**: `01_descriptive_stats.R` generates comprehensive statistics (14 analyses)
- **Documentation**: Installation guides, usage instructions, dependency management

**Quick Access**: See [`docs/EXTENDED_DOCUMENTATION.md`](docs/EXTENDED_DOCUMENTATION.md) for comprehensive index and navigation guide.

**Key Features**:
- ✅ **100% Data Completeness**: 0 missing values across 60 cases × 14 variables
- ✅ **Excellent Reliability**: Inter-rater reliability (ICC) = 0.87
- ✅ **Rigorous Verification**: All 60 cases verified through 3-phase protocol (average 3.8 academic sources per case)
- ✅ **Replicable Coding**: Step-by-step coding manual enables independent replication
- ✅ **R Code Provided**: Complete R scripts for descriptive statistics (tidyverse framework)

**Author's Note**: The extended documentation reflects my journey from environmental activist (AFOA Vice President, 2005-2008 during Botnia conflict) to academic researcher (2010-present). The Botnia case timeline (Appendix D) provides unique insider perspective on Extended Phenotype dynamics.

**Phase 2 Roadmap** (2026):
- Expand dataset: 60 → 100 cases
- Add covariates: 14 → 32 variables (economic, political, institutional, historical)
- Geographic expansion: Asia, Africa, Middle East
- Implement Propensity Score Matching (PSM) analysis
- Target: Journal submission Q4 2026

---

## Quick Start

### Prerequisites

```bash
# Python 3.8+
pip install pandas numpy matplotlib seaborn networkx scipy
```

### Reproduce Figures

```bash
# Clone repository
git clone https://github.com/adrianlerer/legal-evolution-botnia-phenotypes.git
cd legal-evolution-botnia-phenotypes

# Install dependencies
cd code
pip install -r requirements.txt

# Generate all figures
python generate_paper_figures.py

# Figures saved to ../figures/
```

## Dataset Description

### Main Dataset: `dataset_PSM_60casos_clean.csv`

- **Total Cases:** 60 (30 CRISIS + 30 CONTROL)
- **Temporal Range:** 1973-2023 (concentration 2010-2020)
- **Geographic Coverage:** 
  - Europe: 34 cases (56.7%)
  - Latin America: 26 cases (43.3%)
- **Verification Status:** All cases manually verified with primary sources

### Variables

| Variable | Type | Description |
|----------|------|-------------|
| `Case_ID` | String | Unique identifier (e.g., CRISIS_001) |
| `Country` | String | Primary country involved |
| `Year` | Integer | Year of crisis/event |
| `Crisis_Catalyzed` | Binary | 1=CRISIS, 0=CONTROL |
| `Event_Name` | String | Descriptive event name |
| `Geographic_Region` | String | Europe or Latin America |
| `Legal_Family` | String | Common Law or Civil Law |
| `Conflict_Type` | String | Category (16 types) |
| `International_Tribunal` | String | Primary tribunal involved |
| `Verified_Status` | String | Verification method |
| `Primary_Sources` | String | Documentation sources |

### Conflict Type Categories

**Europe (7 types):**
- Migration Crisis
- Constitutional Crisis
- Rule of Law Crisis
- Secessionist Crisis
- Economic Crisis
- Fiscal Crisis
- Treaty Crisis

**Latin America (6 types):**
- Environmental Conflict
- Resource Nationalism
- Extractive Conflict
- Investment Treaty Termination

**Cross-Regional (3 types):**
- Trade Integration
- Financial Cooperation
- Regulatory Reform

## Verification Process

All 60 cases underwent rigorous 3-phase verification:

1. **Phase 1 (European Cases):** Claude web_search for official documents
2. **Phase 2 (LatAm Extractive):** Academic sources and ICSID records
3. **Phase 3 (Control Cases):** Perplexity verification for treaty compliance

See `appendices/APPENDIX_A_VERIFICATION_SOURCES.md` for complete source list.

## Key Figures

### Figure 1: Temporal Distribution (2000-2025)
Shows concentration of cases around major geopolitical events (2015 Refugee Crisis, 2016 Brexit)

### Figure 2: Geographic Distribution
Pie charts comparing Europe vs Latin America crisis/control ratios

### Figure 3: Conflict Typology
Horizontal bar chart of 16 conflict types showing crisis vs cooperation patterns

### Figure 4: Phenotypic Fitness Matrix
3×3 heatmap demonstrating fitness advantages of different institutional strategies under varying environmental conditions

### Figure 5: Botnia Citation Network
Directed graph showing legal influence radiating from the paradigmatic Botnia ICJ case (2006-2010)

### Figure 6: Phenotypic Expression Box Plots
Statistical comparison showing Crisis cases (μ=7.2) vs Control cases (μ=4.8), t-test p<0.001

### Figure 7: Temporal Cycles (2008-2024)
Line graph with 3-year moving averages correlating case frequency with geopolitical crises

## Theoretical Framework

### Extended Phenotype Theory (Dawkins 1982)

Legal institutions analyzed as **extended phenotypes** - artifacts produced by competing memeplexes that extend beyond individual organisms:

- **Memeplexes:** Globalist (supranational integration) vs Sovereigntist (national autonomy)
- **Selection Pressure:** Crisis conditions vs stable conditions
- **Fitness Landscape:** Institutional persistence × goal achievement / adaptation cost
- **Transmission:** Legal precedents as memetic vectors through citation networks

## Methodology Notes

This paper uses **qualitative comparative analysis** of verified cases rather than propensity score matching. The dataset enables:
- Descriptive pattern identification across 60 cases
- Comparative institutional analysis (Europe vs Latin America)
- Temporal trend analysis (2000-2025)
- Phenotypic fitness assessment under varying selection pressures

**Future extensions** may incorporate:
- Economic/demographic covariates (GDP, democracy indices, trade openness)
- Quantitative outcome coding (Sovereignty_Assertion_Intensity 0-5 scale)
- Propensity score matching for causal inference
- Geographic expansion (Asia, Africa, Middle East)

See `data_extended/PSM_feasibility_note.md` for detailed roadmap.

## Citation

### APA
```
Lerer, I.A. (2025). International Law as Extended Phenotype: Globalist and Sovereigntist 
Memeplexes Competing Through Legal Artifacts (2000-2025). 
Available at SSRN: https://ssrn.com/abstract=XXXXXXX
```

### BibTeX
```bibtex
@article{lerer2025legal,
  title={International Law as Extended Phenotype: Globalist and Sovereigntist Memeplexes Competing Through Legal Artifacts (2000-2025)},
  author={Lerer, Ignacio Adrian},
  journal={Available at SSRN},
  year={2025},
  url={https://ssrn.com/abstract=XXXXXXX}
}
```

### Chicago
```
Lerer, Ignacio Adrian. "International Law as Extended Phenotype: Globalist and Sovereigntist 
Memeplexes Competing Through Legal Artifacts (2000-2025)." 
Available at SSRN (2025). https://ssrn.com/abstract=XXXXXXX
```

## License

**Code:** MIT License  
**Data & Paper:** Creative Commons Attribution 4.0 International (CC BY 4.0)

You are free to:
- **Share** — copy and redistribute the material
- **Adapt** — remix, transform, and build upon the material

Under the following terms:
- **Attribution** — You must give appropriate credit

See [LICENSE](LICENSE) for details.

## Contact

**Author:** Ignacio Adrian Lerer  
**Email:** adrian@lerer.com.ar  
**GitHub:** [@adrianlerer](https://github.com/adrianlerer)  
**GitHub Issues:** [Report bugs or request features](https://github.com/adrianlerer/legal-evolution-botnia-phenotypes/issues)

## Acknowledgments

- Data verification: Claude AI, Perplexity AI
- Case identification: Academic literature, ICJ/ECJ/ICSID databases
- Theoretical framework: Richard Dawkins (*The Extended Phenotype*, 1982)
- Personal experience: AFOA Vice President (2005-2008) during Botnia conflict

## Version History

- **v1.0.0** (October 2025) - Initial release with 60 verified cases and 7 figures

---

**Last Updated:** October 15, 2025  
**Repository:** https://github.com/adrianlerer/legal-evolution-botnia-phenotypes  
**Paper:** [SSRN Link pending]
