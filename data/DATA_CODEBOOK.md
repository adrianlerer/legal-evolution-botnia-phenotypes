# Data Codebook: 60-Case Dataset

## Dataset Information

**File:** `dataset_PSM_60casos_clean.csv`  
**Format:** CSV (Comma-separated values)  
**Encoding:** UTF-8  
**Rows:** 60 cases (30 CRISIS + 30 CONTROL)  
**Columns:** 11 variables  
**Date Created:** October 2025  
**Version:** 1.0

## Variable Definitions

### 1. Case_ID
- **Type:** String (Categorical)
- **Format:** `{GROUP}_{NUMBER}`
  - GROUP: "CRISIS" or "CONTROL"
  - NUMBER: 001-030
- **Example:** `CRISIS_001`, `CONTROL_015`
- **Description:** Unique identifier for each case
- **Missing Values:** None (required field)

### 2. Country
- **Type:** String (Categorical)
- **Values:** 41 unique countries
- **Example:** `United Kingdom`, `Argentina`, `Poland`
- **Description:** Primary country involved in the legal conflict
- **Notes:** 
  - For bilateral disputes, lists the country asserting sovereignty
  - Multi-country cases (e.g., EU-wide) list primary actor
- **Missing Values:** None (required field)

### 3. Year
- **Type:** Integer
- **Range:** 1973-2023
- **Example:** `2016`, `2010`
- **Description:** Year when crisis was catalyzed or control event initiated
- **Notes:**
  - For multi-year cases, year of initial event
  - Mean CRISIS: 2012.6
  - Mean CONTROL: 2015.2
- **Missing Values:** None (required field)

### 4. Crisis_Catalyzed
- **Type:** Binary (0/1)
- **Values:**
  - `1` = CRISIS (treatment group)
  - `0` = CONTROL (control group)
- **Description:** Treatment indicator for PSM analysis
- **Distribution:**
  - CRISIS: 30 cases (50%)
  - CONTROL: 30 cases (50%)
- **Missing Values:** None (required field)

### 5. Event_Name
- **Type:** String (Free text)
- **Length:** 15-50 characters
- **Example:** 
  - CRISIS: `Brexit Referendum`, `Botnia Pulp Mill Case`
  - CONTROL: `EU Accession Completion`, `CAFTA Implementation`
- **Description:** Descriptive name of the legal event/conflict
- **Notes:** Human-readable event identifier
- **Missing Values:** None (required field)

### 6. Geographic_Region
- **Type:** String (Categorical)
- **Values:** 
  - `Europe` (34 cases, 56.7%)
  - `Latin America` (26 cases, 43.3%)
- **Description:** Macro-regional classification
- **Notes:**
  - Europe includes EU members, EFTA, Balkans, Eastern Europe
  - Latin America includes South America, Central America, Caribbean
- **Missing Values:** None (required field)

### 7. Legal_Family
- **Type:** String (Categorical)
- **Values:**
  - `Civil Law` (52 cases, 86.7%)
  - `Common Law` (8 cases, 13.3%)
- **Description:** Legal system tradition of primary country
- **Reference:** Classification follows La Porta et al. (1998)
- **Missing Values:** None (required field)

### 8. Conflict_Type
- **Type:** String (Categorical)
- **Values:** 16 unique categories
- **Example:** `Migration Crisis`, `Resource Nationalism`, `Treaty Crisis`
- **Description:** Substantive category of legal conflict
- **Categories:**
  
  **Europe-dominant types:**
  1. Migration Crisis (8 cases)
  2. Constitutional Crisis (6 cases)
  3. Rule of Law Crisis (3 cases)
  4. Secessionist Crisis (2 cases)
  5. Economic Crisis (4 cases)
  6. Fiscal Crisis (3 cases)
  7. Treaty Crisis (5 cases)
  
  **Latin America-dominant types:**
  8. Environmental Conflict (4 cases)
  9. Resource Nationalism (6 cases)
  10. Extractive Conflict (5 cases)
  11. Investment Treaty Termination (2 cases)
  
  **Cross-regional types:**
  12. Trade Integration (4 cases)
  13. Financial Cooperation (3 cases)
  14. Regulatory Reform (2 cases)
  15. Others (3 cases)

- **Missing Values:** None (required field)

### 9. International_Tribunal
- **Type:** String (Categorical)
- **Values:** 15 unique tribunals
- **Example:** `ECJ`, `ICJ`, `ICSID`, `EFTA Court`
- **Description:** Primary international or supranational tribunal with jurisdiction
- **Major Tribunals:**
  - **ECJ** (European Court of Justice): 22 cases
  - **ICJ** (International Court of Justice): 8 cases
  - **ICSID** (International Centre for Settlement of Investment Disputes): 7 cases
  - **Constitutional Courts** (national): 12 cases
  - **IACHR** (Inter-American Court of Human Rights): 3 cases
  - **EFTA Court**: 4 cases
  - **Others** (CCJ, Regional Courts): 4 cases
- **Missing Values:** None (required field)

### 10. Verified_Status
- **Type:** String (Categorical)
- **Values:** `Verified`
- **Description:** Indicates case underwent verification process
- **Verification Methods:**
  - Phase 1: Claude web_search for European cases
  - Phase 2: Academic sources for LatAm extractive conflicts
  - Phase 3: Perplexity verification for control cases
- **Notes:** All 60 cases = "Verified" (unverified cases excluded)
- **Missing Values:** None (all cases verified)

### 11. Primary_Sources
- **Type:** String (Free text)
- **Length:** 20-100 characters
- **Example:** 
  - `ECJ Case C-647/15`
  - `ICJ Case 135 (2006-2010)`
  - `ICSID Case ARB/07/30`
- **Description:** Primary documentary sources for case verification
- **Format:** Citation format varies by source type
  - Court cases: Tribunal + Case number
  - Treaties: Treaty name + documentation
  - Reports: Institution + report type
- **Missing Values:** None (required for verification)

## Data Quality Notes

### Completeness
- **No missing values** in any field
- All 60 cases have complete 11-variable records
- 100% verification rate

### Temporal Balance
⚠️ **Known Issue:** Temporal imbalance between groups
- CRISIS mean year: 2012.6 (SD = 4.8)
- CONTROL mean year: 2015.2 (SD = 3.9)
- Standardized Mean Difference (SMD): -0.281
- **Implication:** May require temporal covariate adjustment in PSM

### Geographic Distribution
- Europe: 34 cases (17 CRISIS + 17 CONTROL)
- Latin America: 26 cases (13 CRISIS + 13 CONTROL)
- Perfect balance within regions

### Legal Family Distribution
- Civil Law: 52 cases (26 CRISIS + 26 CONTROL)
- Common Law: 8 cases (4 CRISIS + 4 CONTROL)
- Perfect balance within families

## Excluded Cases

**Total excluded:** 10 cases  
**Reason for exclusion:** Failed verification or insufficient evidence

See `appendices/APPENDIX_B_EXCLUDED_CASES.md` for details.

## Missing Variables (Future Work)

The following covariates are **NOT YET INCLUDED** but are planned:

1. **Economic Covariates:**
   - GDP per capita (World Bank)
   - Economic growth rate
   - Trade openness index

2. **Political Covariates:**
   - Democracy Index (V-Dem or Polity)
   - Government effectiveness (WGI)
   - Corruption perception index

3. **Demographic Covariates:**
   - Population size
   - Urbanization rate

4. **Outcome Variables:**
   - Sovereignty_Assertion_Intensity (0-5 scale) - requires manual coding
   - Treaty_Compliance_Index (0-10 scale)
   - Institutional_Persistence (years)

## Data Collection Protocol

### Inclusion Criteria
1. Case involves international or supranational legal institution
2. Temporal range: 1973-2023
3. Geographic scope: Europe or Latin America
4. Verifiable with primary sources
5. Clear CRISIS or CONTROL classification

### Exclusion Criteria
1. Purely domestic disputes (no international dimension)
2. Cases outside Europe/Latin America
3. Insufficient documentation
4. Ambiguous crisis status (see Appendix B for 4 borderline cases included)

## Version History

- **v1.0** (October 2025): Initial release, 60 verified cases
- **v1.1** (Planned): Add economic/political covariates
- **v2.0** (Planned): Add coded outcome variables

## References

**Legal System Classification:**
- La Porta, R., Lopez-de-Silanes, F., Shleifer, A., & Vishny, R. W. (1998). Law and finance. *Journal of Political Economy*, 106(6), 1113-1155.

**Verification Sources:**
- European Court of Justice (ECJ) case database: https://curia.europa.eu
- International Court of Justice (ICJ) case database: https://www.icj-cij.org
- ICSID case database: https://icsid.worldbank.org
- Academic literature: Google Scholar, JSTOR, HeinOnline

## Contact

Questions about data coding or verification:
- **Email:** [Contact email]
- **GitHub Issues:** https://github.com/adrianlerer/legal-evolution-botnia-phenotypes/issues

---

**Codebook Version:** 1.0  
**Last Updated:** October 15, 2025
