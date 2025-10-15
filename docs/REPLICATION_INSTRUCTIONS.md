# Replication Instructions

Complete step-by-step guide to replicate all figures and analyses from:

**"International Law as Extended Phenotype: A Propensity Score Matching Analysis of Legal Institutions in Sovereignty-Globalism Conflicts (2000-2025)"**

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Data Verification](#data-verification)
4. [Figure Generation](#figure-generation)
5. [PSM Analysis](#psm-analysis-future)
6. [Troubleshooting](#troubleshooting)
7. [System Requirements](#system-requirements)

---

## Prerequisites

### Required Software

- **Python:** 3.8 or higher
- **Git:** For cloning repository
- **Text editor:** For viewing data and code

### Optional Software

- **Jupyter Notebook:** For interactive analysis
- **R/RStudio:** For alternative PSM implementation (future)

### Required Python Packages

```bash
pandas>=1.3.0
numpy>=1.21.0
matplotlib>=3.4.0
seaborn>=0.11.0
networkx>=2.6.0
scipy>=1.7.0
openpyxl>=3.0.7
```

---

## Installation

### Step 1: Clone Repository

```bash
# Clone the repository
git clone https://github.com/adrianlerer/legal-evolution-botnia-phenotypes.git

# Navigate to directory
cd legal-evolution-botnia-phenotypes
```

### Step 2: Set Up Python Environment

**Option A: Using venv (recommended)**

```bash
# Create virtual environment
python3 -m venv venv

# Activate environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Install dependencies
pip install -r code/requirements.txt
```

**Option B: Using conda**

```bash
# Create conda environment
conda create -n legal-evolution python=3.9

# Activate environment
conda activate legal-evolution

# Install dependencies
pip install -r code/requirements.txt
```

### Step 3: Verify Installation

```bash
# Test imports
python -c "import pandas, numpy, matplotlib, seaborn, networkx, scipy; print('✓ All packages installed')"
```

Expected output:
```
✓ All packages installed
```

---

## Data Verification

### Step 1: Inspect Dataset

```bash
# View first 10 rows
head -10 data/dataset_PSM_60casos_clean.csv
```

### Step 2: Load Data in Python

```python
import pandas as pd

# Load dataset
df = pd.read_csv('data/dataset_PSM_60casos_clean.csv')

# Verify structure
print(f"Total cases: {len(df)}")
print(f"CRISIS: {df['Crisis_Catalyzed'].sum()}")
print(f"CONTROL: {(df['Crisis_Catalyzed'] == 0).sum()}")

# Expected output:
# Total cases: 60
# CRISIS: 30
# CONTROL: 30
```

### Step 3: Check Data Quality

```python
# Check for missing values
print(df.isnull().sum())  # Should be all zeros

# Verify geographic distribution
print(df['Geographic_Region'].value_counts())
# Expected:
# Europe          34
# Latin America   26

# Verify verification status
print(df['Verified_Status'].value_counts())
# Expected:
# Verified    60
```

---

## Figure Generation

### Quick Start (All Figures)

```bash
# Navigate to code directory
cd code

# Run figure generation script
python generate_paper_figures.py

# Figures saved to ../figures/
```

**Expected output:**
```
======================================================================
GENERATING 7 PUBLICATION-QUALITY FIGURES
International Law as Extended Phenotype (60-case dataset)
======================================================================
Loaded 60 cases:
  CRISIS: 30
  CONTROL: 30

=== Generating Figure 1: Timeline ===
✓ Saved: figure1_timeline.png

=== Generating Figure 2: Geographic Map ===
✓ Saved: figure2_geographic_map.png

[... continues for all 7 figures ...]

======================================================================
✓ ALL 7 FIGURES GENERATED SUCCESSFULLY
✓ Output directory: [path]/figures
======================================================================
```

### Individual Figure Generation

To generate a specific figure, modify the script:

```python
# Open generate_paper_figures.py
# Comment out unwanted figures in main() function

def main():
    df = load_data()
    
    figure1_timeline(df)           # Uncomment desired figures
    # figure2_geographic_map(df)   # Comment out unwanted
    # figure3_conflict_typology(df)
    # ... etc
```

### Verify Generated Figures

```bash
# Check figure directory
ls -lh ../figures/

# Expected output:
# figure1_timeline.png (318 KB)
# figure2_geographic_map.png (182 KB)
# figure3_conflict_typology.png (424 KB)
# figure4_fitness_matrix.png (237 KB)
# figure5_botnia_network.png (588 KB)
# figure6_phenotypic_expression_boxplots.png (228 KB)
# figure7_temporal_cycles.png (404 KB)
```

### View Figures

```bash
# On macOS:
open ../figures/figure1_timeline.png

# On Linux:
xdg-open ../figures/figure1_timeline.png

# On Windows:
start ../figures/figure1_timeline.png
```

---

## PSM Analysis (Future)

⚠️ **Note:** Full PSM analysis requires additional covariates not yet included in v1.0 dataset.

**Planned for v1.1:**

1. Construct economic covariates (GDP, trade openness)
2. Add political covariates (Democracy Index, government effectiveness)
3. Code outcome variable (Sovereignty_Assertion_Intensity 0-5)
4. Run PSM with logistic regression propensity score estimation
5. Check covariate balance (SMD < 0.1)
6. Estimate Average Treatment Effect on Treated (ATT)
7. Conduct sensitivity analysis (Rosenbaum bounds)

---

## Troubleshooting

### Issue 1: Import Errors

**Problem:**
```
ModuleNotFoundError: No module named 'pandas'
```

**Solution:**
```bash
# Ensure virtual environment is activated
source venv/bin/activate  # or conda activate legal-evolution

# Reinstall packages
pip install -r code/requirements.txt
```

### Issue 2: Font Warnings

**Problem:**
```
findfont: Generic family 'serif' not found because none of the following families were found: Times New Roman
```

**Solution:**
This is a harmless warning. Matplotlib will use default fonts. Figures will still generate correctly. To suppress warnings:

```python
import warnings
warnings.filterwarnings('ignore')
```

### Issue 3: Permission Denied

**Problem:**
```
PermissionError: [Errno 13] Permission denied: 'figures/figure1_timeline.png'
```

**Solution:**
```bash
# Ensure figures directory is writable
chmod 755 figures/

# Or run script from correct directory
cd code
python generate_paper_figures.py
```

### Issue 4: Data File Not Found

**Problem:**
```
FileNotFoundError: [Errno 2] No such file or directory: 'data/dataset_PSM_60casos_clean.csv'
```

**Solution:**
```bash
# Check current directory
pwd

# Should be in repository root
cd /path/to/legal-evolution-botnia-phenotypes

# Verify data file exists
ls -l data/dataset_PSM_60casos_clean.csv

# Run script with correct path
cd code
python generate_paper_figures.py
```

### Issue 5: Low-Resolution Figures

**Problem:**
Figures appear pixelated or low quality.

**Solution:**
Script uses 300 DPI by default. To increase:

```python
# Edit generate_paper_figures.py
plt.rcParams['figure.dpi'] = 600  # Change from 300 to 600
plt.rcParams['savefig.dpi'] = 600
```

---

## System Requirements

### Minimum Requirements

- **OS:** Windows 10, macOS 10.14+, or Linux (Ubuntu 18.04+)
- **RAM:** 4 GB
- **Storage:** 100 MB (for repository and figures)
- **CPU:** Any modern processor (figure generation takes ~10 seconds)

### Recommended Requirements

- **OS:** macOS 11+ or Linux (Ubuntu 20.04+)
- **RAM:** 8 GB or more
- **Storage:** 500 MB (for future PSM analysis)
- **CPU:** Multi-core processor for parallel processing (future)

### Tested Environments

✅ **Confirmed working:**
- macOS 13 (Ventura) with Python 3.10
- Ubuntu 22.04 with Python 3.9
- Windows 11 with Python 3.11

---

## Additional Resources

### Documentation
- [Data Codebook](../data/DATA_CODEBOOK.md) - Variable definitions
- [Appendix A](../appendices/APPENDIX_A_VERIFICATION_SOURCES.md) - Verification sources
- [Appendix C](../appendices/APPENDIX_C_METHODOLOGY.md) - Extended methodology

### External References
- [Propensity Score Matching Tutorial](https://sejdemyr.github.io/r-tutorials/statistics/tutorial8.html)
- [Extended Phenotype Concept](https://en.wikipedia.org/wiki/The_Extended_Phenotype)
- [ECJ Case Database](https://curia.europa.eu)
- [ICJ Case Database](https://www.icj-cij.org)

### Citation
If you use these materials, please cite:

```bibtex
@article{author2025legal,
  title={International Law as Extended Phenotype: A Propensity Score Matching Analysis of Legal Institutions in Sovereignty-Globalism Conflicts (2000-2025)},
  author={[Author Name(s)]},
  journal={Available at SSRN},
  year={2025},
  url={https://github.com/adrianlerer/legal-evolution-botnia-phenotypes}
}
```

---

## Support

**Questions or Issues?**

1. **Check Documentation:** Review README.md and appendices
2. **Search Issues:** https://github.com/adrianlerer/legal-evolution-botnia-phenotypes/issues
3. **Open New Issue:** Provide error message, Python version, OS
4. **Email:** [Contact email]

---

## License

Materials licensed under:
- **Code:** MIT License
- **Data & Paper:** CC BY 4.0

See [LICENSE](../LICENSE) for details.

---

**Last Updated:** October 15, 2025  
**Version:** 1.0  
**Maintainer:** [Author Name]
