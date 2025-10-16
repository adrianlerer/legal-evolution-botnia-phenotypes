# Codebook: 60-Case Verified Dataset

**Project**: Legal Evolution of Botnia Phenotypes  
**Author**: Ignacio Adrian Lerer (adrian@lerer.com.ar)  
**Date**: October 2025  
**Dataset**: `dataset_60_cases_verified.csv`

---

## Overview

This codebook documents all 14 variables in the 60-case verified dataset. For comprehensive coding methodology, see:
- **Appendix A**: Dataset Summary (`appendices_extended/Appendix_A_Dataset_Summary.md`)
- **Appendix B**: Phenotypic Coding Manual (`appendices_extended/Appendix_B_Phenotypic_Coding.md`)
- **Verification Protocol**: `data_extended/verification_protocol.md`

---

## Variable Definitions

### 1. Case_ID

**Type**: Character  
**Format**: `CRISIS_###` or `CONTROL_###` (where ### = 001-030)  
**Description**: Unique identifier for each case  
**Example**: `CRISIS_001` (Botnia), `CONTROL_015` (Netherlands ECJ Compliance)  
**Missing Values**: None (100% complete)

---

### 2. Case_Name

**Type**: Character  
**Format**: Free text (descriptive case name)  
**Description**: Short descriptive name identifying the case  
**Example**: "Botnia Pulp Mill Dispute", "Brexit", "Poland Judicial Reforms"  
**Missing Values**: None (100% complete)  
**Notes**: Names chosen for clarity; may differ from official legal case titles

---

### 3. Year

**Type**: Integer  
**Range**: 1997-2023  
**Description**: Year of primary phenotypic expression (peak institutional competition)  
**Coding Rules**:
- Use year when institutional conflict became most intense or publicly salient
- For multi-year cases, select year with highest media coverage or most significant institutional action
- If conflict spans evenly across years, use midpoint year

**Example**: Botnia = 2006 (ICJ submission year, though case lasted 2003-2010)  
**Missing Values**: None (100% complete)

---

### 4. Region

**Type**: Categorical  
**Categories**: 
- `Europe`
- `Latin America`

**Description**: Geographic region where case primarily occurred  
**Coding Rules**:
- Assign based on country location
- For cross-regional cases (e.g., Venezuela-Spain BIT disputes), use location where phenotypic competition most visible

**Distribution**:
- Europe: 34 cases (56.7%)
- Latin America: 26 cases (43.3%)

**Missing Values**: None (100% complete)

---

### 5. Country

**Type**: Character  
**Format**: Full country name (English)  
**Description**: Country where phenotypic competition primarily manifested  
**Example**: "Argentina", "United Kingdom", "Poland"  
**Range**: 37 unique countries  
**Missing Values**: None (100% complete)  
**Notes**: For bilateral disputes (e.g., Botnia: Argentina-Uruguay), use country exhibiting sovereigntist phenotype most strongly

---

### 6. Crisis_Control

**Type**: Binary Categorical  
**Categories**:
- `CRISIS`: Case occurred during economic, political, or social crisis (N=30)
- `CONTROL`: Case occurred without major crisis context (N=30)

**Description**: Treatment indicator for causal inference analysis  
**Coding Rules**:
- **CRISIS** if case occurred within 24 months of:
  - Economic crisis (GDP decline ≥3%, banking crisis, sovereign debt crisis)
  - Political crisis (regime change, constitutional crisis, major protests)
  - Social crisis (civil unrest, humanitarian emergency)
- **CONTROL** otherwise

**Examples**:
- CRISIS: Greece Bailout (2015) – Eurozone debt crisis
- CRISIS: Venezuela ICSID (2012) – Economic crisis, political instability
- CONTROL: Netherlands ECJ Compliance (2018) – No crisis context

**Balance**: Perfect 1:1 (30 CRISIS, 30 CONTROL)  
**Missing Values**: None (100% complete)

---

### 7. Phenotypic_Expression

**Type**: Ordinal  
**Range**: 0-5 (integer)  
**Description**: Intensity of institutional competition between Sovereigntist and Globalist memeplexes  
**Coding Method**: Aggregated score from 5 components (see Appendix B for full methodology)

**Components** (weighted):
1. Institutional Artifacts (25%)
2. Duration (20%)
3. Geographic Scope (20%)
4. Political Salience (20%)
5. Institutional Consequences (15%)

**Score Interpretation**:
- **5**: Very High (e.g., Brexit, Russia CoE exit) – Maximum phenotypic expression; paradigmatic cases
- **4**: High (e.g., Botnia, Poland, Venezuela ICSID) – Clear, sustained, high-consequences competition
- **3**: Moderate (e.g., Greece, Hungary, Brazil Belo Monte) – Observable competition but limited scope/duration
- **2**: Low (e.g., minor treaty disputes, temporary compliance issues)
- **1**: Minimal (e.g., rhetoric without significant institutional action)
- **0**: None (e.g., routine compliance, no competition)

**Distribution**:
- Mean: 3.12
- SD: 1.24
- Median: 3.00
- Range: 0-5

**Missing Values**: None (100% complete)  
**Inter-Rater Reliability**: ICC = 0.87 (excellent)

---

### 8. Sovereignty_Phenotype

**Type**: Continuous  
**Range**: 0.00-1.00  
**Description**: Degree to which case exhibits Sovereigntist institutional strategies  
**Coding Rules** (see Appendix B for details):
- **0.9-1.0**: Full institutional exit or withdrawal (e.g., Brexit = 0.95, Russia CoE = 0.95)
- **0.7-0.8**: Partial withdrawal or major defiance (e.g., Poland = 0.80, Venezuela ICSID = 0.85)
- **0.5-0.6**: Mixed signals; renegotiation demands (e.g., Hungary = 0.50)
- **0.3-0.4**: Rhetorical sovereigntism but ultimate compliance (e.g., Greece = 0.35)
- **0.1-0.2**: Minimal sovereigntist elements (e.g., technical disputes)
- **0.0**: Pure globalist outcome (no sovereigntist claims)

**Relationship to Globalism_Phenotype**: Typically negatively correlated (r = -0.78), but NOT necessarily summing to 1.0 (cases can exhibit both phenotypes or neither)

**Distribution**:
- Mean: 0.58
- SD: 0.22
- Median: 0.60
- Range: 0.10-0.95

**Missing Values**: None (100% complete)

---

### 9. Globalism_Phenotype

**Type**: Continuous  
**Range**: 0.00-1.00  
**Description**: Degree to which case exhibits Globalist institutional strategies  
**Coding Rules**:
- **0.9-1.0**: Full compliance with international law; deepened integration
- **0.7-0.8**: Implementation of international rulings; regulatory harmonization
- **0.5-0.6**: Mixed outcomes; partial compliance
- **0.3-0.4**: Limited globalist elements
- **0.1-0.2**: Minimal globalist outcomes (e.g., Brexit = 0.10, Russia = 0.05)
- **0.0**: Pure sovereigntist outcome

**Examples**:
- High: Greece Bailout = 0.75 (Troika terms accepted)
- Medium: Botnia = 0.40 (ICJ ruling implemented, but Argentine resistance continued)
- Low: Brexit = 0.10 (Complete EU exit, minimal regulatory alignment)

**Distribution**:
- Mean: 0.42
- SD: 0.22
- Median: 0.40
- Range: 0.05-0.90

**Missing Values**: None (100% complete)

---

### 10. Institutional_Outcome

**Type**: Binary  
**Categories**:
- `0`: Globalist victory (international institutions/treaties upheld)
- `1`: Sovereigntist victory (national sovereignty asserted; international obligations rejected/modified)

**Description**: Final institutional resolution of phenotypic competition  
**Coding Rules**:
- Assess outcome at end of observable conflict period (not interim states)
- Focus on institutional consequences, not rhetoric
- Mixed outcomes assigned to dominant phenotype

**Examples**:
- Globalist (0): Greece (bailout accepted), Hungary (law amended), Botnia (ICJ ruling enforced)
- Sovereigntist (1): Brexit (EU exit), Venezuela (ICSID withdrawal), Poland (reforms implemented)

**Distribution**:
- Globalist (0): 28 cases (46.7%)
- Sovereigntist (1): 32 cases (53.3%)

**Missing Values**: None (100% complete)

---

### 11. Institutional_Selectivity

**Type**: Continuous  
**Range**: 0.00-1.00  
**Description**: Degree of selective institutional engagement (compliance with some obligations while rejecting others)  
**Coding Rules**:
- **High (0.7-1.0)**: Strategic selection (e.g., Brazil defies IACHR but remains in OAS = 0.75)
- **Medium (0.4-0.6)**: Moderate selectivity (e.g., partial treaty compliance)
- **Low (0.1-0.3)**: Comprehensive compliance or comprehensive rejection
- **0.0**: No selectivity (full compliance or full exit)

**Theoretical Significance**: Institutional selectivity represents intermediate phenotypic strategy between full compliance and full exit

**Distribution**:
- Mean: 0.52
- SD: 0.23
- Median: 0.50
- Range: 0.05-0.95

**Missing Values**: None (100% complete)

---

### 12. Duration_Months

**Type**: Integer  
**Range**: 2-120 months  
**Description**: Temporal extent of phenotypic competition (from initial expression to resolution or stasis)  
**Coding Rules**:
- **Start Point**: First observable institutional action signaling competition (e.g., court filing, treaty withdrawal announcement, legislative vote)
- **End Point**: Institutional resolution or stabilization (e.g., final court decision, treaty renegotiation completed, electoral defeat of sovereigntist movement)
- For ongoing cases (as of 2023), use months from start to October 2023

**Examples**:
- Botnia: 84 months (2003-2010)
- Brexit: 43 months (June 2016 - January 2020)
- Greece: 8 months (January-July 2015)

**Distribution**:
- Mean: 38.5 months
- SD: 24.3
- Median: 36.0 months
- Range: 2-120 months

**Missing Values**: None (100% complete)

---

### 13. Geographic_Scope

**Type**: Categorical (Ordinal)  
**Categories** (ranked by scope):
- `Global`: Affects multiple regions, global institutions (e.g., Brexit, Russia CoE)
- `Regional`: Affects multiple countries in same region (e.g., Botnia, Poland, Venezuela ICSID)
- `National`: Confined to single country (e.g., domestic constitutional reforms)
- `Local`: Sub-national (province, city) (e.g., municipal-federal disputes)

**Description**: Spatial scale of institutional competition  
**Coding Rules**:
- Assess based on institutional reach, not just geographic location
- Cases involving UN institutions (ICJ, ICC) often qualify as Global
- Regional integration disputes (EU, MERCOSUR) typically Regional

**Distribution**:
- Global: 12 cases (20.0%)
- Regional: 18 cases (30.0%)
- National: 22 cases (36.7%)
- Local: 8 cases (13.3%)

**Missing Values**: None (100% complete)

---

### 14. Political_Salience

**Type**: Categorical (Ordinal)  
**Categories** (ranked by intensity):
- `High`: National/international headlines; mass protests (100k+); top electoral issue
- `Medium`: Regular media coverage; organized protests (10k-100k); parliamentary debates
- `Low`: Sporadic media; expert/NGO attention only; technical discourse

**Description**: Public attention and media coverage intensity  
**Coding Rules**:
- Assess using multiple indicators:
  - Media coverage (article counts, headlines)
  - Protest participation numbers
  - Electoral salience (issue prominence in campaigns)
  - Head of state/government public statements
- Weight recent cases appropriately (media environment changes over time)

**Examples**:
- High: Brexit (100% UK media saturation), Botnia (100,000+ protesters)
- Medium: Poland (regular European press coverage, 50,000+ protesters)
- Low: Technical treaty disputes (expert journals only)

**Distribution**:
- High: 18 cases (30.0%)
- Medium: 27 cases (45.0%)
- Low: 15 cases (25.0%)

**Missing Values**: None (100% complete)

---

## Data Quality Metrics

| **Metric** | **Value** | **Standard** | **Status** |
|-----------|-----------|-------------|-----------|
| **Completeness** | 100% (0 missing values) | ≥95% | ✓ Excellent |
| **Inter-Rater Reliability (ICC)** | 0.87 | ≥0.80 | ✓ Excellent |
| **Verification Rate** | 100% (60/60 cases verified) | 100% | ✓ Complete |
| **Average Academic Sources** | 3.8 per case | ≥2.0 | ✓ High Quality |
| **Temporal Coverage** | 27 years (1997-2023) | ≥20 years | ✓ Good |
| **Geographic Coverage** | 37 countries, 2 regions | ≥30 countries | ✓ Excellent |

---

## Usage Notes

### For Descriptive Statistics
Run R script: `replication/R_scripts/01_descriptive_stats.R`

### For Causal Inference (Future Phase 2)
- Current dataset (Phase 1) has **insufficient covariates** for Propensity Score Matching (PSM)
- Phase 2 (2026) will add 18 covariates (economic, political, institutional, historical)
- See `data_extended/PSM_feasibility_note.md` for details

### For Case-Level Analysis
- Consult `appendices_extended/Appendix_C_Case_Narratives.md` for 10 detailed case studies
- See `appendices_extended/Appendix_D_Botnia_Timeline.md` for paradigmatic case reconstruction

### For Coding Replication
- Full methodology: `appendices_extended/Appendix_B_Phenotypic_Coding.md`
- Verification protocol: `data_extended/verification_protocol.md`

---

## Citation

When using this dataset, please cite:

**Lerer, Ignacio Adrian**. (2025). *Legal Evolution of Botnia Phenotypes: A 60-Case Verified Dataset with Codebook*. GitHub. https://github.com/adrianlerer/legal-evolution-botnia-phenotypes

```bibtex
@misc{lerer2025dataset,
  author = {Lerer, Ignacio Adrian},
  title = {Legal Evolution of Botnia Phenotypes: A 60-Case Verified Dataset},
  year = {2025},
  month = {October},
  howpublished = {\url{https://github.com/adrianlerer/legal-evolution-botnia-phenotypes}},
  note = {Includes codebook, verification protocol, and extended documentation}
}
```

---

## Contact

**Author**: Ignacio Adrian Lerer  
**Email**: adrian@lerer.com.ar  
**GitHub**: [@adrianlerer](https://github.com/adrianlerer)  
**Project Repository**: https://github.com/adrianlerer/legal-evolution-botnia-phenotypes

---

**Codebook Version**: 1.0  
**Last Updated**: October 2025  
**Dataset Version**: 1.0 (60 cases, Phase 1)
