# Appendix B: Phenotypic Coding Manual

**Project**: Legal Evolution of Botnia Phenotypes  
**Author**: Ignacio Adrian Lerer (adrian@lerer.com.ar)  
**Date**: October 2025  
**Purpose**: Operationalize Extended Phenotype Theory for systematic case coding

---

## Table of Contents

1. [Theoretical Foundation](#1-theoretical-foundation)
2. [Coding Framework Overview](#2-coding-framework-overview)
3. [Component 1: Institutional Artifacts](#3-component-1-institutional-artifacts)
4. [Component 2: Duration](#4-component-2-duration)
5. [Component 3: Geographic Scope](#5-component-3-geographic-scope)
6. [Component 4: Political Salience](#6-component-4-political-salience)
7. [Component 5: Institutional Consequences](#7-component-5-institutional-consequences)
8. [Aggregated Phenotypic Expression Score](#8-aggregated-phenotypic-expression-score)
9. [Sovereignty and Globalism Phenotypes](#9-sovereignty-and-globalism-phenotypes)
10. [Worked Examples](#10-worked-examples)
11. [Coding Decision Trees](#11-coding-decision-trees)
12. [Inter-Rater Reliability Protocols](#12-inter-rater-reliability-protocols)

---

## 1. Theoretical Foundation

### 1.1 Extended Phenotype Theory (Dawkins, 1982)

**Core Concept**: Genes extend their influence beyond the organism's body through behavior and environmental modifications. In our adaptation, **memeplexes** (coherent sets of ideas) extend their influence through **institutional structures**.

**Application to Legal Evolution**:
- **Meme**: Ideas about sovereignty, international law, globalization
- **Memeplex**: Coherent ideological systems (Sovereigntism, Globalism)
- **Extended Phenotype**: Legal institutions, treaties, courts, norms
- **Selection Pressure**: Economic crises, political shocks, social movements
- **Fitness**: Institutional survival, reproduction (diffusion), adaptation

### 1.2 Competing Memeplexes

#### Sovereigntist Memeplex
**Core Memes**:
- National self-determination
- Popular sovereignty
- Democratic accountability
- Cultural particularism
- Border control

**Institutional Phenotypes**:
- National courts asserting supremacy over international law
- Treaty withdrawals (ICSID, ICC, Council of Europe)
- Border walls and migration restrictions
- Capital controls
- Referendums on international obligations

#### Globalist Memeplex
**Core Memes**:
- Universal human rights
- Rule of law
- Free trade and capital mobility
- Supranational governance
- Cosmopolitanism

**Institutional Phenotypes**:
- International courts (ICJ, ICC, ICSID, ECtHR)
- Regional integration (EU, MERCOSUR)
- Bilateral investment treaties (BITs)
- Free trade agreements
- International regulatory standards

### 1.3 Phenotypic Competition

**Definition**: Observable institutional conflicts where Sovereigntist and Globalist memeplexes compete for dominance.

**Examples**:
- Brexit (UK sovereignty vs. EU integration)
- Botnia (Argentine sovereignty vs. ICJ/World Bank jurisdiction)
- Venezuela ICSID withdrawal (national control vs. investor protection)
- Poland judicial reforms (national courts vs. CJEU)

---

## 2. Coding Framework Overview

### 2.1 The 5-Component Model

The **Phenotypic Expression** variable (0-5 scale) aggregates five components:

| **Component** | **Weight** | **Range** | **What It Measures** |
|--------------|-----------|-----------|---------------------|
| 1. Institutional Artifacts | 25% | 0-1 | Presence and clarity of competing institutions |
| 2. Duration | 20% | 0-1 | Temporal extent of phenotypic competition |
| 3. Geographic Scope | 20% | 0-1 | Spatial scale of institutional conflict |
| 4. Political Salience | 20% | 0-1 | Public attention and media coverage |
| 5. Institutional Consequences | 15% | 0-1 | Observable institutional changes |

**Formula**:
```
Phenotypic_Expression = 5 × [0.25×C1 + 0.20×C2 + 0.20×C3 + 0.20×C4 + 0.15×C5]
```

Where each component C1-C5 is normalized to 0-1 scale.

### 2.2 Coding Principles

1. **Observable**: Code only what can be documented in reliable sources
2. **Replicable**: Another coder should reach same conclusion using codebook
3. **Conservative**: When uncertain, assign lower score
4. **Contextual**: Consider case-specific features (country size, legal tradition)
5. **Temporal**: Code based on peak phenotypic expression year

---

## 3. Component 1: Institutional Artifacts

### 3.1 Definition

**Institutional Artifacts** are observable, durable manifestations of competing memeplexes in legal or political structures.

### 3.2 Coding Criteria (0-1 Scale)

| **Score** | **Criteria** | **Examples** |
|----------|-------------|-------------|
| **1.0** | Both phenotypes have clear, formalized institutional representation | National constitutional court vs. ICJ decision; Parliamentary sovereignty vs. EU law supremacy |
| **0.75** | One phenotype highly formalized, other less so | Treaty withdrawal (formal) vs. civil society resistance (informal) |
| **0.50** | Both phenotypes present but informally | Presidential rhetoric vs. NGO advocacy |
| **0.25** | Only one phenotype clearly articulated | Government policy with no organized opposition |
| **0.0** | No institutional competition | Routine treaty compliance |

### 3.3 Indicators of High Artifact Presence

**Sovereigntist Artifacts**:
- Constitutional amendments asserting national supremacy
- Parliamentary votes rejecting international obligations
- National court rulings invalidating international decisions
- Treaty denunciations or withdrawals
- Border infrastructure (walls, checkpoints)

**Globalist Artifacts**:
- International court judgments
- Regional integration treaties
- Bilateral investment treaties (BITs)
- International arbitration awards
- Supranational regulatory bodies

### 3.4 Coding Example: Botnia Case

**Artifacts Present**:
- **Sovereigntist**: Argentine border blockades (physical), presidential rhetoric, parliamentary resolutions
- **Globalist**: ICJ jurisdiction, World Bank IFC approval, Uruguay-Argentina BIT

**Score**: **0.90** (both phenotypes highly formalized; ICJ decision represents peak Globalist artifact, blockades represent clear Sovereigntist artifact)

---

## 4. Component 2: Duration

### 4.1 Definition

**Duration** measures the temporal extent of phenotypic competition, from initial expression to resolution or stasis.

### 4.2 Coding Criteria (0-1 Scale)

| **Duration (Months)** | **Score** | **Interpretation** |
|---------------------|----------|-------------------|
| 0-6 | 0.0-0.2 | Ephemeral (brief protest, quickly resolved) |
| 7-24 | 0.3-0.5 | Short-term (election cycle, temporary crisis) |
| 25-60 | 0.6-0.8 | Medium-term (multi-year dispute) |
| 61+ | 0.9-1.0 | Long-term (decadal conflict) |

**Formula**:
```
Duration_Score = min(1.0, Duration_Months / 120)
```

Where 120 months (10 years) = maximum score threshold.

### 4.3 Start and End Points

**Start Point**: First observable institutional action signaling competition
- Court filing
- Treaty withdrawal announcement
- Legislative vote
- Mass mobilization

**End Point**: Institutional resolution or stasis
- Court final decision
- Treaty re-negotiation completed
- Electoral defeat of sovereigntist movement
- Institutionalization of stalemate

### 4.4 Coding Example: Brexit

**Timeline**:
- **Start**: June 23, 2016 (referendum)
- **End**: January 31, 2020 (official withdrawal)
- **Duration**: 43 months

**Score**: **0.72** (43/120 = 0.358, but adjusted upward due to ongoing post-withdrawal tensions; final score 0.72)

---

## 5. Component 3: Geographic Scope

### 5.1 Definition

**Geographic Scope** measures the spatial scale at which phenotypic competition manifests.

### 5.2 Coding Criteria (0-1 Scale)

| **Scope** | **Score** | **Definition** | **Examples** |
|----------|----------|---------------|-------------|
| **Global** | 1.0 | Affects multiple regions, global institutions | Brexit (global trade impacts), Venezuela ICSID (global investment regime) |
| **Regional** | 0.67 | Affects multiple countries in same region | EU-Poland conflict (affects all EU), MERCOSUR disputes |
| **National** | 0.33 | Confined to single country | Domestic constitutional reforms, national court rulings |
| **Local** | 0.0 | Sub-national (province, city) | Municipal resistance to federal policy |

### 5.3 Indicators

**Global Scope**:
- Involves UN institutions (ICJ, ICC)
- Affects global supply chains or financial markets
- Referenced in international policy debates beyond region

**Regional Scope**:
- Involves regional organizations (EU, OAS, AU, ASEAN)
- Affects neighboring countries directly
- Triggers regional diplomatic responses

**National Scope**:
- Confined to domestic legal system
- No direct extraterritorial effects
- Minimal international attention

**Local Scope**:
- Sub-national actors only
- No national legislative or judicial involvement
- Isolated from broader institutional structures

### 5.4 Coding Example: Botnia Case

**Scope**: **Regional** (0.67)
- Directly affected Argentina and Uruguay
- Involved MERCOSUR institutions
- Created tensions in broader Southern Cone region
- But did not have global systemic effects (unlike Brexit)

---

## 6. Component 4: Political Salience

### 6.1 Definition

**Political Salience** measures public attention, media coverage, and political mobilization around the case.

### 6.2 Coding Criteria (0-1 Scale)

| **Level** | **Score** | **Indicators** |
|----------|----------|---------------|
| **High** | 0.8-1.0 | National/international headlines; mass protests (100k+); top electoral issue; sustained media (6+ months) |
| **Medium** | 0.4-0.6 | Regular media coverage; organized protests (10k-100k); parliamentary debates; political party platforms |
| **Low** | 0.0-0.3 | Sporadic media; expert/NGO attention only; no mass mobilization; technical/legal discourse |

### 6.3 Measurement Sources

**Quantitative Proxies**:
- Google Trends data (search volume)
- News article counts (LexisNexis, Google News)
- Protest participation numbers
- Parliamentary debate transcripts (word counts)
- Social media mentions (Twitter, Facebook)

**Qualitative Assessment**:
- Did case dominate electoral campaign?
- Did head of state/government make public statements?
- Did case trigger constitutional crisis?
- Was case referenced in international diplomacy?

### 6.4 Coding Example: Brexit

**Indicators**:
- 100% media saturation in UK (2016-2020)
- Mass protests (1 million+ marchers in London)
- Defined 2017 and 2019 elections
- Toppled two Prime Ministers
- Global media coverage

**Score**: **1.0** (maximum salience)

---

## 7. Component 5: Institutional Consequences

### 7.1 Definition

**Institutional Consequences** measure observable, durable changes to institutional structures resulting from phenotypic competition.

### 7.2 Coding Criteria (0-1 Scale)

| **Score** | **Consequences** | **Examples** |
|----------|-----------------|-------------|
| **1.0** | Major institutional rupture (exit, collapse) | Brexit (EU exit), Venezuela ICSID withdrawal, Russia Council of Europe exit |
| **0.75** | Significant institutional reform | Treaty renegotiation, constitutional amendments, new regulatory framework |
| **0.50** | Moderate changes (compliance with modifications) | Partial treaty compliance, selective enforcement, implementation delays |
| **0.25** | Minimal changes (rhetoric without action) | Political statements, non-binding resolutions, symbolic gestures |
| **0.0** | No institutional change (status quo) | Case resolved without structural changes |

### 7.3 Types of Institutional Consequences

#### Type A: Exit/Withdrawal
- Treaty denunciation
- International organization withdrawal
- Court jurisdiction rejection

#### Type B: Reform/Renegotiation
- Treaty amendments
- Institutional restructuring
- New dispute resolution mechanisms

#### Type C: Defiance/Non-Compliance
- Refusal to implement international rulings
- Selective compliance
- Constitutional supremacy assertions

#### Type D: Absorption/Compliance
- Full implementation of international obligations
- Institutional adaptation
- Policy convergence

### 7.4 Coding Example: Poland Judicial Reforms

**Consequences**:
- Constitutional Tribunal composition changed (2015-2016)
- Supreme Court retirement age lowered (2017)
- Disciplinary regime for judges created (2019)
- CJEU rulings defied (2021-2023)

**Score**: **0.85** (major institutional restructuring, though not full exit from EU)

---

## 8. Aggregated Phenotypic Expression Score

### 8.1 Calculation Formula

```
Phenotypic_Expression = 5 × [
  0.25 × Institutional_Artifacts +
  0.20 × Duration +
  0.20 × Geographic_Scope +
  0.20 × Political_Salience +
  0.15 × Institutional_Consequences
]
```

**Result**: Integer score from 0 to 5

### 8.2 Rounding Rules

- Round to nearest integer
- If exactly X.5, round **down** (conservative principle)

### 8.3 Score Interpretation

| **Score** | **Label** | **Interpretation** |
|----------|----------|-------------------|
| **5** | Very High | Paradigmatic case; textbook example of phenotypic competition (e.g., Brexit, Botnia) |
| **4** | High | Clear, sustained competition with significant consequences (e.g., Poland, Venezuela ICSID) |
| **3** | Moderate | Observable competition but limited in scope or duration (e.g., Hungary media law, Ecuador Rafael Correa disputes) |
| **2** | Low | Weak or brief competition with minimal consequences (e.g., minor treaty disputes, temporary compliance issues) |
| **1** | Minimal | Barely observable competition; mostly rhetoric (e.g., populist statements without institutional action) |
| **0** | None | No phenotypic competition; routine institutional operation |

### 8.4 Worked Example: Botnia Case

**Component Scores**:
1. Institutional Artifacts: 0.90
2. Duration: 1.0 (120 months)
3. Geographic Scope: 0.67 (Regional)
4. Political Salience: 0.85 (High - national media, protests, presidential involvement)
5. Institutional Consequences: 0.80 (ICJ decision implemented, but Argentine blockades continued)

**Calculation**:
```
PE = 5 × [0.25×0.90 + 0.20×1.0 + 0.20×0.67 + 0.20×0.85 + 0.15×0.80]
   = 5 × [0.225 + 0.20 + 0.134 + 0.17 + 0.12]
   = 5 × 0.849
   = 4.245
```

**Final Score**: **4** (rounded down from 4.245)

---

## 9. Sovereignty and Globalism Phenotypes

### 9.1 Conceptual Distinction

**Phenotypic Expression** (0-5) measures **intensity** of competition.

**Sovereignty/Globalism Phenotypes** (0-1 each) measure **directionality** - which memeplex dominates institutional outcomes.

### 9.2 Sovereignty Phenotype (0-1 Scale)

**Definition**: Degree to which the case exhibits Sovereigntist institutional strategies.

**Coding Criteria**:

| **Score** | **Indicators** |
|----------|---------------|
| **0.9-1.0** | Full treaty withdrawal; international court rejection; border closure; capital controls |
| **0.7-0.8** | Partial withdrawal; selective compliance; constitutional supremacy assertion |
| **0.5-0.6** | Mixed signals; renegotiation demands; conditional compliance |
| **0.3-0.4** | Rhetorical sovereigntism; symbolic gestures; but ultimate compliance |
| **0.1-0.2** | Minimal sovereigntist elements; predominantly globalist outcome |
| **0.0** | Pure globalist outcome; no sovereigntist claims |

### 9.3 Globalism Phenotype (0-1 Scale)

**Definition**: Degree to which the case exhibits Globalist institutional strategies.

**Coding Criteria**:

| **Score** | **Indicators** |
|----------|---------------|
| **0.9-1.0** | Full compliance with international law; deepened integration; new treaties signed |
| **0.7-0.8** | Implementation of international rulings; treaty ratification; regulatory harmonization |
| **0.5-0.6** | Mixed outcomes; partial compliance; ongoing negotiations |
| **0.3-0.4** | Rhetorical globalism; limited implementation; sovereignty concerns raised |
| **0.1-0.2** | Minimal globalist elements; predominantly sovereigntist outcome |
| **0.0** | Pure sovereigntist outcome; no globalist elements |

### 9.4 Relationship Between Phenotypes

**Constraint**: `Sovereignty_Phenotype + Globalism_Phenotype ≠ 1.0` (necessarily)

**Reason**: Some cases exhibit **both** phenotypes (institutional ambivalence), while others are unambiguous victories for one memeplex.

**Examples**:
- **Botnia**: Sovereignty_Phenotype = 0.70, Globalism_Phenotype = 0.40 (mixed outcome; ICJ ruled for Uruguay but Argentine blockades continued)
- **Brexit**: Sovereignty_Phenotype = 0.95, Globalism_Phenotype = 0.10 (clear Sovereigntist victory)
- **Netherlands ECJ Compliance**: Sovereignty_Phenotype = 0.15, Globalism_Phenotype = 0.90 (clear Globalist victory)

### 9.5 Coding Decision Tree

```
Step 1: Identify institutional outcome
  ├─ Exit/withdrawal → High Sovereignty (0.8-1.0), Low Globalism (0.1-0.3)
  ├─ Full compliance → Low Sovereignty (0.1-0.3), High Globalism (0.8-1.0)
  └─ Renegotiation/reform → Mixed (both 0.4-0.6)

Step 2: Assess durability
  ├─ Outcome stable → Increase winner's score by 0.1
  └─ Outcome contested → Keep both scores moderate (0.4-0.6)

Step 3: Check for institutional changes
  ├─ New Sovereigntist institutions → +0.1 to Sovereignty_Phenotype
  └─ New Globalist institutions → +0.1 to Globalism_Phenotype
```

---

## 10. Worked Examples

### 10.1 Case 1: Botnia (Argentina-Uruguay, 2003-2010)

**Background**: Uruguay authorized Finnish company Botnia to build pulp mill on shared river. Argentina claimed environmental harm and blockaded bridge. Both countries submitted to ICJ.

**Component Coding**:

| **Component** | **Raw Score** | **Weight** | **Contribution** |
|--------------|--------------|-----------|-----------------|
| Institutional Artifacts | 0.90 | 0.25 | 0.225 |
| Duration | 1.0 (84 months) | 0.20 | 0.20 |
| Geographic Scope | 0.67 (Regional) | 0.20 | 0.134 |
| Political Salience | 0.85 (High) | 0.20 | 0.17 |
| Institutional Consequences | 0.80 (ICJ ruling implemented, but blockades persisted) | 0.15 | 0.12 |

**Phenotypic Expression**: 5 × 0.849 = **4.245 → 4**

**Sovereignty Phenotype**: **0.70** (Argentine blockades, presidential defiance, but ICJ jurisdiction accepted)

**Globalism Phenotype**: **0.40** (ICJ ruling enforced, but limited compliance)

**Institutional Outcome**: **0** (Globalist victory - ICJ ruled for Uruguay)

---

### 10.2 Case 2: Brexit (United Kingdom, 2016-2020)

**Background**: UK voted to leave EU in 2016 referendum. Triggered Article 50, negotiated withdrawal agreement, formally exited January 31, 2020.

**Component Coding**:

| **Component** | **Raw Score** | **Weight** | **Contribution** |
|--------------|--------------|-----------|-----------------|
| Institutional Artifacts | 1.0 (Article 50, UK Parliament vs. EU law) | 0.25 | 0.25 |
| Duration | 0.72 (43 months) | 0.20 | 0.144 |
| Geographic Scope | 1.0 (Global) | 0.20 | 0.20 |
| Political Salience | 1.0 (Maximum) | 0.20 | 0.20 |
| Institutional Consequences | 1.0 (Full exit from EU) | 0.15 | 0.15 |

**Phenotypic Expression**: 5 × 0.944 = **4.72 → 5**

**Sovereignty Phenotype**: **0.95** (Complete withdrawal from supranational integration)

**Globalism Phenotype**: **0.10** (Withdrawal agreement maintained some regulatory alignment, but fundamentally anti-globalist)

**Institutional Outcome**: **1** (Sovereigntist victory)

---

### 10.3 Case 3: Greece Bailout Referendum (2015)

**Background**: Greece held referendum on EU/IMF bailout terms. 61% voted "No" (Oxi), but government accepted bailout anyway.

**Component Coding**:

| **Component** | **Raw Score** | **Weight** | **Contribution** |
|--------------|--------------|-----------|-----------------|
| Institutional Artifacts | 0.75 (Referendum vs. Troika demands) | 0.25 | 0.1875 |
| Duration | 0.17 (8 months) | 0.20 | 0.034 |
| Geographic Scope | 0.67 (Regional - EU) | 0.20 | 0.134 |
| Political Salience | 0.90 (High - national crisis) | 0.20 | 0.18 |
| Institutional Consequences | 0.25 (Referendum overridden; bailout accepted) | 0.15 | 0.0375 |

**Phenotypic Expression**: 5 × 0.573 = **2.865 → 3**

**Sovereignty Phenotype**: **0.35** (Referendum expressed sovereigntist sentiment, but outcome was compliance)

**Globalism Phenotype**: **0.75** (Bailout terms implemented; EU/IMF institutional control maintained)

**Institutional Outcome**: **0** (Globalist victory)

---

## 11. Coding Decision Trees

### 11.1 Is This a Valid Case?

```
START: Does case involve international legal obligations?
  ├─ NO → Not a valid case (purely domestic)
  └─ YES → Continue

Is there observable institutional competition?
  ├─ NO → Score = 0 (routine compliance)
  └─ YES → Continue

Are competing institutional strategies articulated?
  ├─ NO → Score = 1-2 (minimal phenotypic expression)
  └─ YES → Continue to component scoring
```

### 11.2 Component 1 Decision Tree (Institutional Artifacts)

```
Are there formal legal documents representing competition?
  ├─ Both phenotypes formalized → 0.8-1.0
  ├─ One formalized, one informal → 0.5-0.7
  └─ Both informal → 0.0-0.4

Are institutional artifacts durable (expected to last 5+ years)?
  ├─ YES → Add 0.1 to score
  └─ NO → No adjustment

Final score: 0.0-1.0
```

### 11.3 Component 5 Decision Tree (Institutional Consequences)

```
Did case result in institutional exit/withdrawal?
  ├─ YES → 0.9-1.0
  └─ NO → Continue

Did case result in significant institutional reform?
  ├─ YES → 0.6-0.8
  └─ NO → Continue

Did case result in moderate compliance changes?
  ├─ YES → 0.3-0.5
  └─ NO → 0.0-0.2

Final score: 0.0-1.0
```

---

## 12. Inter-Rater Reliability Protocols

### 12.1 Training Phase

**Objective**: Achieve ICC ≥ 0.80 before independent coding.

**Process**:
1. **Phase 1**: Primary coder (Adrian Lerer) trains secondary coder using 5 paradigmatic cases (Botnia, Brexit, Venezuela ICSID, Poland, Greece)
2. **Phase 2**: Both coders independently code 10 training cases
3. **Phase 3**: Calculate ICC; if < 0.80, resolve discrepancies and repeat Phase 2
4. **Phase 4**: Independent coding of remaining 50 cases

### 12.2 Discrepancy Resolution

**Protocol**:
1. **Minor discrepancies** (±0.1 on component scores): Average the two scores
2. **Moderate discrepancies** (±0.2-0.3): Discuss case-specific evidence; reach consensus
3. **Major discrepancies** (±0.4+): Consult third expert coder; use median of 3 scores

### 12.3 Documentation

For each case, maintain:
- **Source List**: All documents consulted (academic articles, news, official records)
- **Coding Justification**: 1-paragraph rationale for each component score
- **Discrepancy Log**: Notes on disagreements and resolutions

---

## Conclusion

This phenotypic coding manual operationalizes **Extended Phenotype Theory** for systematic, replicable analysis of international legal conflicts. By decomposing phenotypic expression into five measurable components, we enable rigorous comparative analysis while maintaining theoretical fidelity to Dawkins' original framework.

**Key Principles**:
1. **Transparency**: All coding decisions documented and justified
2. **Replicability**: Independent coders can reproduce scores using this manual
3. **Conservatism**: When uncertain, assign lower scores
4. **Theory-Driven**: Every component connects to Extended Phenotype Theory

---

**Manual Version**: 1.0  
**Last Updated**: October 2025  
**Author**: Ignacio Adrian Lerer  
**Email**: adrian@lerer.com.ar  
**Project Repository**: https://github.com/adrianlerer/legal-evolution-botnia-phenotypes
