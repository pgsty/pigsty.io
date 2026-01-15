---
title: Compliance Standards
weight: 300
draft: true
description: RTO/RPO compliance requirements from major international and Chinese standards for databases, and how PostgreSQL meets these requirements.
icon: fa-solid fa-scale-balanced
module: [PIGSTY, PGSQL]
categories: [Concept]
---


## Overview

This document compiles the **RTO** (Recovery Time Objective) and **RPO** (Recovery Point Objective) compliance requirements from major international and Chinese standards for database disaster recovery. These standards cover critical industries including finance, healthcare, payments, and publicly traded companies, serving as important references for database selection and architecture design.

**Key Conclusion**: PostgreSQL + Patroni synchronous replication mode, with properly configured `ttl`/`loop_wait` parameters, can fully meet the financial industry's core system requirements of **RPO=0, RTO<2 hours**. In fact, Pigsty's default configuration can achieve second-level RTO, far exceeding minimum regulatory requirements.


-----------

## Chinese National Standards

[**"Cybersecurity Technology - Information System Disaster Recovery Specification"**](https://std.samr.gov.cn/) (GB/T 20988-2025) is the foundational national standard for information system disaster recovery in China, released on June 30, 2025, and effective from January 1, 2026. This standard consolidates and replaces the original GB/T 20988-2007 "Information Security Technology - Information System Disaster Recovery Specification" and GB/T 30285-2013 "Information Security Technology - Disaster Recovery Center Construction and Operation Management Specification."

The new standard introduces the disaster recovery lifecycle concept, updates the disaster recovery capability level classification, RTO/RPO relationship examples with disaster recovery capability levels, disaster recovery plan framework, and adds cloud technology disaster recovery service examples. The national standard divides disaster recovery capability into **6 levels**:

| Level | Name                       | RTO          | RPO        | Typical Implementation      |
|:------|:---------------------------|:-------------|:-----------|:----------------------------|
| Level 1 | Basic Support            | > 7 days     | 1-7 days   | Off-site tape storage       |
| Level 2 | Backup Site Support      | > 24 hours   | 1-7 days   | Cold standby center         |
| Level 3 | Electronic Transfer + Partial Equipment | 12-24 hours | Hours to 1 day | Async replication + partial equipment |
| Level 4 | Electronic Transfer + Full Equipment | Hours to 12 hours | Hours | Async replication + full equipment |
| Level 5 | Real-time Transfer + Full Equipment | Minutes to 2 hours | 0-30 min | Sync replication + hot standby |
| Level 6 | Zero Loss + Remote Cluster | Minutes | 0 | Sync replication + standby cluster |
{.full-width}

Level 6 requires real-time synchronous updates of customer data, ensuring business data consistency and integrity; the backup center's remote cluster system and network system can automatically perform load balancing and system switching, with business recovery time controllable to minutes, achieving zero data loss.

**Pigsty Capability Comparison**:

| Configuration                    | RTO        | RPO               | GB Level |
|:---------------------------------|:-----------|:------------------|:---------|
| Default Async (`pg_rto=30`)      | ~30-40s    | May lose < 1MB    | Level 5  |
| Default Sync (`pg_rto=30`)       | ~30-35s    | 0                 | Level 6  |
| Aggressive Sync (`pg_rto=15`)    | ~10-15s    | 0                 | Level 6  |
| Two-site Three-center + Sync    | ~15-30s    | 0                 | Level 6  |
{.full-width}


-----------

## Chinese Financial Industry Standards

Financial institutions have the **strictest** requirements for zero data loss and business continuity among all industries, particularly banks and securities firms. Banking architecture requires **two-site three-center** or primary-backup models for disaster recovery systems, with same-city data centers at least 50 km apart and remote data centers at least 300 km apart.

| Industry | Standard Document | RTO | RPO | Notes |
|:---------|:------------------|:----|:----|:------|
| Banking | [**"Commercial Bank Business Continuity Supervision Guidelines"**](https://www.gov.cn/gzdt/2011-08/22/content_1930374.htm) (CBRC [2011] No. 104) | ≤ 4 hours | ≤ 30 min | Basic requirements for important business systems |
| Banking | [**"Banking Information System Disaster Recovery Management Specification"**](https://www.cfstc.org/bzgk/gk/view/bzxq.jsp?i=bzid%3D5BEBABB4E5EE7918B86F6D56EDC9B78E62AF168D4B9EB4AE) (JR/T 0044-2008) | < 6h to < 24h | < 15min to < 2h | Tiered by system importance, stricter for critical systems |
| Banking | [**"Distributed Database Technology Financial Application Specification"**](http://www.caict.ac.cn/kxyj/qwfb/ztbg/202011/P020201116397348788498.pdf) (JR/T 0205-2020) | ≤ 30min to ≤ 1min | 0 | Distributed DB levels 4-6, all require RPO=0 |
| Securities | [**"Securities and Futures Industry Information System Backup Capability Standard"**](https://neris.csrc.gov.cn/falvfagui/rdqsHeader/mainbody?navbarId=3&secFutrsLawId=ac60afab583f475bb84bfd5fb3d0e7d7) (JR/T 0059-2021) | ≤ 15 min | 0 | Core trading systems require GB Level 5-6 |
| Insurance | [**"Insurance Industry Information System Disaster Recovery Management Guidelines"**](https://www.gov.cn/gzdt/2008-05/20/content_980596.htm) (CIRC [2008] No. 20) | ≤ 36h to ≤ 72h | ≤ 8h to ≤ 24h | Tiered 3-4 by system importance, relatively lenient |
{.full-width}

According to financial industry standards, distributed transaction databases for financial applications **all require RPO = 0**.

### Financial Industry RTO/RPO Summary

| Industry | System Type | RTO | RPO | DR Level |
|:---------|:------------|:----|:----|:---------|
| Banking-Core | Core banking, payment clearing | ≤ 2 hours | ≤ 15 min | Level 5-6 |
| Banking-Important | Online banking, channel systems | ≤ 4 hours | ≤ 30 min | Level 4-5 |
| Banking-General | Office, reporting | ≤ 24 hours | ≤ 2 hours | Level 3-4 |
| Securities-Trading | Matching, clearing | ≤ 15 min | 0 | Level 6 |
| Securities-General | Market data, information | ≤ 4 hours | ≤ 1 hour | Level 4-5 |
| Insurance-Core | Policy issuance, claims | ≤ 36 hours | ≤ 8 hours | Level 4 |
| Insurance-Important | Customer service, finance | ≤ 72 hours | ≤ 24 hours | Level 3 |
{.full-width}


-----------

## Other Industry Standards

Key industries for disaster recovery include banking, power, railways, civil aviation, securities, insurance, customs, and taxation.

| Industry | Core System RTO | Core System RPO | Reference Standard |
|:---------|:----------------|:----------------|:-------------------|
| Power/Energy | ≤ 4 hours | ≤ 1 hour | SERC regulations |
| Telecom | ≤ 2 hours | ≤ 30 min | MIIT regulations |
| Healthcare (Tier 3) | ≤ 4 hours | ≤ 1 hour | NHC IT requirements |
| Government (Provincial) | ≤ 4 hours | ≤ 2 hours | CAC requirements |
| Transportation (Aviation/Rail) | ≤ 2 hours | ≤ 30 min | CAAC/CRC requirements |
| E-commerce/Internet | ≤ 15 min | ≤ 5 min | Business-driven |
| Manufacturing | ≤ 8 hours | ≤ 4 hours | Business needs |
| Education | ≤ 24 hours | ≤ 8 hours | MOE requirements |
{.full-width}


-----------

## International Standards

### SHARE 78 Standard (7-Tier Model)

SHARE 78 is a disaster recovery capability classification standard proposed by the IBM user organization SHARE in 1978. It's the earliest and most authoritative international DR classification system and a key reference for China's GB/T 20988 national standard.

| Tier | Name | RTO | RPO | Database Implementation |
|:-----|:-----|:----|:----|:------------------------|
| Tier 0 | No Off-site Backup | No guarantee | No guarantee | Local data only, no backup |
| Tier 1 | PTAM Physical Media Transfer | Days to weeks | 24+ hours | Tape backup, manual transport |
| Tier 2 | PTAM + Hot Standby Center | 24-72 hours | 24 hours | Off-site cold standby, manual recovery |
| Tier 3 | Electronic Transfer | 12-24 hours | 1-4 hours | Async replication (PostgreSQL async mode) |
| Tier 4 | Active Backup Center | 4-12 hours | Min to 1 hour | Async replication + hot standby server |
| Tier 5 | Active-Active/Two-Phase Commit | 1-4 hours | Minutes | Sync replication (`synchronous_commit=on`) |
| Tier 6 | Zero Data Loss | Minutes | 0 | Sync replication + auto failure detection (Patroni + sync) |
| Tier 7 | Automatic Failover | Seconds | 0 | Sync replication + auto failover + transparent app switching |
{.full-width}

**PostgreSQL/Patroni Configuration Mapping**:

| Tier | PostgreSQL/Patroni Configuration | Oracle Equivalent |
|:-----|:---------------------------------|:------------------|
| Tier 3-4 | `synchronous_commit: off` + Streaming Replication | Data Guard Maximum Performance |
| Tier 5 | `synchronous_commit: remote_write` | Data Guard Maximum Availability |
| Tier 6 | `synchronous_commit: on/remote_apply` + `synchronous_mode: true` | Data Guard Maximum Protection |
| Tier 7 | Tier 6 + Patroni Auto Failover + Connection Pool | RAC + Data Guard |
{.full-width}


### ISO 22301 (Business Continuity Management)

ISO 22301 is the international standard for Business Continuity Management Systems (BCMS). ISO 22300 defines related terminology.

#### Core Terminology

| Term | ISO Definition | Database Meaning |
|:-----|:---------------|:-----------------|
| RTO | Time period after disaster within which business process must be restored | Maximum time from database service interruption to availability |
| RPO | Amount of data loss an organization can accept (measured in time) | Maximum acceptable data loss time window for database |
| MTPD | Maximum Tolerable Period of Disruption | Extreme time limit for complete business unavailability |
| MBCO | Minimum Business Continuity Objective | Minimum service level that must be maintained during disaster |
{.full-width}

#### ISO 22301 Database Requirements

- **Business Impact Analysis (BIA)**: Must assess the impact of database outages on business
- **Tiered Protection**: Different importance databases should have different RTO/RPO targets
- **Regular Testing**: DR drills at least annually
- **Documentation**: All recovery procedures must be documented in writing
- **Continuous Improvement**: Continuously optimize recovery processes based on test results


### PCI-DSS (Payment Card Industry Data Security Standard)

PCI-DSS is the data security standard for the payment card industry, with strict requirements for systems handling credit/debit card data.

#### Core Requirements

| Requirement | Content | Database Requirements |
|:------------|:--------|:---------------------|
| 9.5.1 | Secure off-site backup | Database backups must be stored in physically isolated secure locations |
| 12.10.1 | Incident response plan | Must include database recovery procedures |
| 12.10.2 | Annual testing | Test database recovery process at least once per year |
| 10.7 | Audit log retention | Database audit logs retained at least 1 year, 3 months online accessible |
{.full-width}

#### RTO/RPO Recommendations by System Type

| System Type | Recommended RTO | Recommended RPO | Reason |
|:------------|:----------------|:----------------|:-------|
| Payment Transaction DB | ≤ 15 min | Near 0 | Transaction data cannot be lost |
| Cardholder Data Storage | ≤ 1 hour | ≤ 1 min | Sensitive data needs high protection |
| Customer Account System | ≤ 2 hours | ≤ 1 hour | Affects customer experience |
| Historical Archive System | ≤ 24 hours | ≤ 24 hours | Non-real-time business |
{.full-width}


### SOX (Sarbanes-Oxley Act)

SOX is the financial reporting internal control regulation that US publicly traded companies must comply with.

#### Core Requirements

| Section | Content | Database Requirements |
|:--------|:--------|:---------------------|
| Section 404 | Management establishes and maintains adequate internal controls for financial reporting | Database DR included in internal control scope |
| Section 802 | Prevent falsification, destruction, or alteration of financial records | Database audit trails, immutable backups |
| Section 103/105 | Key documents retained no less than 7 years | Database archiving strategy, long-term backup retention |
{.full-width}

#### SOX Database Compliance Requirements

| Requirement | Content | Database Implementation |
|:------------|:--------|:------------------------|
| Data Retention | Financial data retained at least 7 years | Database archiving strategy, long-term backup |
| Audit Trail | All changes must be traceable | Enable database audit logs, WAL archiving |
| Access Control | Restrict unauthorized access | Database role permissions, row-level security |
| Integrity Protection | Prevent data tampering | Checksums, immutable backups |
| Disaster Recovery | Complete DR plan | Documented recovery procedures, regular testing |
{.full-width}

#### SOX RTO/RPO Recommendations

| System Type | Recommended RTO | Recommended RPO | Notes |
|:------------|:----------------|:----------------|:------|
| General Ledger System | ≤ 4 hours | ≤ 1 hour | Core to financial reporting |
| AR/AP Systems | ≤ 8 hours | ≤ 4 hours | Critical to daily operations |
| Reporting Systems | ≤ 24 hours | ≤ 8 hours | Can tolerate longer recovery |
| Audit Log Database | ≤ 2 hours | 0 | Audit data cannot be lost |
{.full-width}


### HIPAA (US Health Information Protection Act)

HIPAA is the US healthcare industry regulation for protecting patient health information (PHI).

#### HIPAA Security Rule Required Implementations

| Requirement Type | Database Requirements |
|:-----------------|:---------------------|
| Data Backup Plan (Required) | Regular backup of ePHI, recoverable exact copies |
| Disaster Recovery Plan (Required) | Procedures to restore ePHI to original state |
| Emergency Mode Operation Plan (Required) | Critical business functions protecting PHI during disaster |
| Application and Data Criticality Analysis (Addressable) | Identify most critical databases and applications |
| Testing and Revision Procedures (Addressable) | Regular testing and revision of contingency plans |
{.full-width}

#### HIPAA Database RTO/RPO Reference

| System Type | Recommended RTO | Recommended RPO | Reason |
|:------------|:----------------|:----------------|:-------|
| Electronic Health Records (EHR) | ≤ 1 hour | Near 0 | Emergency access needed |
| Pharmacy Management System | ≤ 2 hours | ≤ 15 min | Medication safety critical |
| Laboratory Information System | ≤ 4 hours | ≤ 30 min | Diagnostic results important |
| Billing System | ≤ 24 hours | ≤ 4 hours | Non-clinical system |
| Patient Portal | ≤ 8 hours | ≤ 1 hour | Affects patient experience |
{.full-width}


### Basel III

Basel III is the core framework for international banking regulation, developed by the Basel Committee on Banking Supervision.

#### Core Framework

The Basel Committee requires banks to strengthen their ability to respond to operational risks, including pandemics, cyber incidents, technical failures, and natural disasters that could cause significant operational disruptions. Banks should develop plans and implement controls to maintain the integrity of critical information during cyber incidents, such as secure storage and offline backups of data supporting critical operations on immutable media.

#### Basel Requirements for Bank Databases

Bank ICT policies should be fully documented, including:

- Governance and oversight responsibilities, risk ownership
- Any ICT security measures currently implemented
- Cybersecurity controls, incident response plans
- Business continuity and disaster recovery plans should be regularly reviewed and monitored
- Critical ICT assets must be identified, with security measures tailored to assets most important to bank's critical operations
- Including plans to protect critical data in the event of cybersecurity risk incidents

#### Basel Banking RTO/RPO Recommendations

| System Type | Recommended RTO | Recommended RPO | Basel Focus |
|:------------|:----------------|:----------------|:------------|
| Core Banking System | ≤ 15 min | 0 | Systemic importance |
| Payment Clearing System | ≤ 15 min | 0 | Financial infrastructure |
| Online Banking | ≤ 30 min | ≤ 1 min | Customer service continuity |
| Risk Management System | ≤ 2 hours | ≤ 15 min | Regulatory reporting |
| Anti-Money Laundering System | ≤ 4 hours | ≤ 1 hour | Compliance requirements |
{.full-width}


-----------

## Standards Comparison

### RTO/RPO Requirements Across Standards

| Standard | Applicable Industry | Core System RTO | Core System RPO | Testing Requirement | Data Retention |
|:---------|:--------------------|:----------------|:----------------|:--------------------|:---------------|
| SHARE 78 Tier 6-7 | General | Seconds to minutes | 0 | Recommended periodic | Not specified |
| ISO 22301 | General | Per BIA | Per BIA | At least annual | Not specified |
| PCI-DSS | Payments | ≤ 15 min | Near 0 | Annual required | 1+ years |
| SOX | Public Companies | ≤ 4 hours | ≤ 1 hour | Periodic required | 7 years |
| HIPAA | Healthcare | ≤ 1 hour | ≤ 15 min | Periodic required | 6 years |
| Basel III | Banking | ≤ 15 min | 0 | Periodic required | 3-7 years |
{.full-width}

### PostgreSQL/Patroni Capability Coverage

| Compliance Requirement | Patroni Default Config | Patroni Optimized Config | Meets Requirements |
|:-----------------------|:-----------------------|:-------------------------|:-------------------|
| PCI-DSS Core Trading | RTO~35s, RPO may lose | RTO~15s, RPO=0 (sync) | ✅ Meets after optimization |
| SOX Financial Systems | ✅ | ✅ | ✅ Meets by default |
| HIPAA EHR | ✅ | ✅ | ✅ Meets by default |
| Basel III Core Banking | Requires sync config | RTO~15s, RPO=0 | ✅ Meets after optimization |
| SHARE 78 Tier 7 | Tier 6 | Tier 6-7 | ✅ Achievable with connection pool |
{.full-width}


-----------

## Configuration Recommendations

### Standard Compliance Configuration (SOX/HIPAA General Systems)

```yaml
pg_rto: 30                            # Standard TTL
pg_rpo: 1048576                       # Allow 1MB data loss

# Corresponding Patroni configuration
bootstrap:
  dcs:
    ttl: 30
    loop_wait: 10
    retry_timeout: 10
    synchronous_mode: false           # Async replication
    # RTO: ~30-40s, RPO: May lose several seconds of data
```


### Strict Compliance Configuration (PCI-DSS/Basel III Core Systems)

```yaml
pg_rto: 15                            # Shorter TTL
pg_rpo: 0                             # Zero data loss
pg_conf: crit.yml                     # Use critical business template

# Corresponding Patroni configuration
bootstrap:
  dcs:
    ttl: 20
    loop_wait: 5
    retry_timeout: 5
    primary_start_timeout: 0
    synchronous_mode: true            # Sync replication
    synchronous_mode_strict: true     # Strict mode
    synchronous_node_count: 1
    # RTO: ~10-15s, RPO: 0
```


-----------

## Key Conclusions

1. **Finance is strictest**: Basel III and PCI-DSS require RPO=0, RTO<15 minutes for core trading systems
2. **Healthcare focuses on availability**: HIPAA requires ePHI data to be accessible at all times, but RPO requirements are relatively lenient
3. **SOX emphasizes data integrity**: 7-year data retention and complete audit trails are core requirements
4. **PostgreSQL + Patroni fully capable**:
   - Synchronous replication mode achieves **RPO=0**
   - Automatic failover achieves **RTO<30 seconds**
   - Far exceeds minimum requirements of most compliance standards
5. **Testing is a common requirement**: All standards require regular DR drills and documentation
