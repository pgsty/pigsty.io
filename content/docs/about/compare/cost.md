---
title: Cost Reference
weight: 171
description: This article provides cost data to help you evaluate self-hosted Pigsty,
  cloud RDS costs, and typical DBA salaries.
icon: fa-solid fa-sack-dollar
module: [PIGSTY]
categories: [Reference]
tags: [Cost]
---


--------------------

## Overview

|              EC2               |    Core·Month    |              RDS               |   Core·Month   |
|:------------------------------:|:---------:|:------------------------------:|:-------:|
|     DHH Self-Hosted Core-Month Price (192C 384G)      | **25.32** |         Junior Open Source DB DBA Reference Salary         | ¥15K/person·month |
|    IDC Self-Hosted (Dedicated Physical: 64C384G)     | **19.53** |         Mid-Level Open Source DB DBA Reference Salary         | ¥30K/person·month |
|       IDC Self-Hosted (Container, 500% Oversold)       |     7     |         Senior Open Source DB DBA Reference Salary         | ¥60K/person·month |
|    UCloud Elastic VM (8C16G, Oversold)     |    25     |          ORACLE Database License          |  10000  |
|     Aliyun ECS 2x Memory (Dedicated, No Oversold)      |    107    |      Aliyun RDS PG 2x Memory (Dedicated)       |   260   |
|     Aliyun ECS 4x Memory (Dedicated, No Oversold)      |    138    |      Aliyun RDS PG 4x Memory (Dedicated)       |   320   |
|     Aliyun ECS 8x Memory (Dedicated, No Oversold)      |    180    |      Aliyun RDS PG 8x Memory (Dedicated)       |   410   |
| AWS C5D.METAL 96C 200G (Monthly No Prepaid) |    100    | AWS RDS PostgreSQL db.T2 (2x)  |   440   |
| AWS C5D.METAL 96C 200G (3-Year Prepaid)  |    80     | AWS RDS PostgreSQL db.M5 (4x)  |   611   |
| AWS C7A.METAL 192C 384G (3-Year Prepaid) |   104.8   | AWS RDS PostgreSQL db.R6G (8x) |   786   |


--------------------

## RDS Cost Reference

| Payment Model            | Price              | Annualized (¥10K)  |
|-----------------|-----------------|-----------|
| IDC Self-Hosted (Single Physical Machine)     | ¥75K / 5 years      | 1.5       |
| IDC Self-Hosted (2-3 Machines for HA)  | ¥150K / 5 years       | 3.0 ~ 4.5 |
| Aliyun RDS On-Demand      | ¥87.36/hour        | 76.5      |
| Aliyun RDS Monthly (Baseline)  | ¥42K / month       | 50        |
| Aliyun RDS Annual (85% off) | ¥425,095 / year     | 42.5      |
| Aliyun RDS 3-Year Prepaid (50% off) | ¥750,168 / 3 years    | 25        |
| AWS On-Demand          | $25,817 / month     | 217       |
| AWS 1-Year No Prepaid       | $22,827 / month     | 191.7     |
| AWS 3-Year Full Prepaid       | $120K + $17.5K/month | 175       |
| AWS China/Ningxia On-Demand     | ¥197,489 / month    | 237       |
| AWS China/Ningxia 1-Year No Prepaid  | ¥143,176 / month    | 171       |
| AWS China/Ningxia 3-Year Full Prepaid  | ¥647K + ¥116K/month  | 160.6     |

Here's a comparison of self-hosted vs cloud database costs:

| Method                                                                 | Annualized (¥10K)  |
|--------------------------------------------------------------------|-----------|
| IDC Hosted Server 64C / 384G / 3.2TB NVME SSD 660K IOPS (2-3 Machines)              | 3.0 ~ 4.5 |
| Aliyun RDS PG HA Edition pg.x4m.8xlarge.2c, 64C / 256GB / 3.2TB ESSD PL3    | 25 ~ 50   |
| AWS RDS PG HA Edition db.m5.16xlarge, 64C / 256GB / 3.2TB io1 x 80k IOPS | 160 ~ 217 |



--------------------

## ECS Cost Reference

### Pure Compute Price Comparison (Excluding NVMe SSD / ESSD PL3)

Using Aliyun as an example, the monthly pure compute price is 5-7x the self-hosted baseline, while 5-year prepaid is 2x self-hosted

|    Payment Model    | Unit Price (¥/Core·Month) | Relative to Standard | Self-Hosted Premium Multiple   |
|:----------:|:---------:|:-------:|:----------:|
| On-Demand (1.5x) |   ¥ 202   |  160 %  | 9.2 ~ 11.2 |
|  Monthly (Standard)  |   ¥ 126   |  100 %  | 5.7 ~ 7.0  |
| 1-Year Prepaid (65% off)  |  ¥ 83.7   |  66 %   | 3.8 ~ 4.7  |
| 2-Year Prepaid (55% off)  |  ¥ 70.6   |  56 %   | 3.2 ~ 3.9  |
| 3-Year Prepaid (44% off)  |  ¥ 55.1   |  44 %   | 2.5 ~ 3.1  |
| 4-Year Prepaid (35% off)  |   ¥ 45    |  35 %   | 2.0 ~ 2.5  |
| 5-Year Prepaid (30% off)  |  ¥ 38.5   |  30 %   | 1.8 ~ 2.1  |
|            |           |         |            |
| DHH @ 2023 |  ¥ 22.0   |         |            |
| Tantan IDC Self-Hosted  |  ¥ 18.0   |         |            |


### Equivalent Price Comparison Including NVMe SSD / ESSD PL3

Including common NVMe SSD specs, the monthly pure compute price is 11-14x the self-hosted baseline, while 5-year prepaid is about 9x.

|    Payment Model    | Unit Price (¥/Core·Month) | + 40GB ESSD PL3 |   Self-Hosted Premium Multiple    |
|:----------:|:---------:|:---------------:|:-----------:|
| On-Demand (1.5x) |   ¥ 202   |      ¥ 362      | 14.3 ~ 18.6 |
|  Monthly (Standard)  |   ¥ 126   |      ¥ 286      | 11.3 ~ 14.7 |
| 1-Year Prepaid (65% off)  |  ¥ 83.7   |      ¥ 244      | 9.6 ~ 12.5  |
| 2-Year Prepaid (55% off)  |  ¥ 70.6   |      ¥ 230      | 9.1 ~ 11.8  |
| 3-Year Prepaid (44% off)  |  ¥ 55.1   |      ¥ 215      | 8.5 ~ 11.0  |
| 4-Year Prepaid (35% off)  |   ¥ 45    |      ¥ 205      | 8.1 ~ 10.5  |
| 5-Year Prepaid (30% off)  |  ¥ 38.5   |      ¥ 199      | 7.9 ~ 10.2  |
|            |           |                 |             |
| DHH @ 2023 |  ¥ 25.3   |                 |             |
| Tantan IDC Self-Hosted  |  ¥ 19.5   |                 |             |

> DHH Case: 192 cores with 12.8TB Gen4 SSD (1c:66); Tantan Case: 64 cores with 3.2T Gen3 MLC SSD (1c:50).
>
> Cloud prices calculated at 40GB ESSD PL3 per core (1 core:4x RAM:40x disk).


--------------------

## EBS Cost Reference

| **Evaluation Factor** | **Local** **PCI-E NVME SSD**                            | **Aliyun ESSD PL3**                                                                                                                                                                                             | **AWS io2 Block Express**                                                                                                                                           |
|----------|------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Capacity       | 32TB                                                 | 32 TB                                                                                                                                                                                                           | 64 TB                                                                                                                                                               |
| IOPS     | 4K Random Read: 600K ~ 1.1M, 4K Random Write: 200K ~ 350K                  | 4K Random Read: Max 1M                                                                                                                                                                                                     | 16K Random IOPS: 256K                                                                                                                                                     |
| Latency       | 4K Random Read: 75µs, 4K Random Write: 15µs                                | 4K Random Read: 200µs                                                                                                                                                                                                   | Random IO: ~500µs (contextually inferred as 16K)                                                                                                                                |
| Reliability      | UBER < 1e-18, equivalent to 18 nines, MTBF: 2M hours, 5DWPD for 3 years          | Data Reliability 9 nines [Storage and Data Reliability](https://help.aliyun.com/document_detail/476273.html)                                                                                                                                       | **Durability**: 99.999%, 5 nines (0.001% annual failure rate) [io2 Specification](https://aws.amazon.com/blogs/storage/achieve-higher-database-performance-using-amazon-ebs-io2-block-express-volumes/) |
| Cost       | **¥16/TB·month** (5-year amortized / 3.2T MLC), 5-year warranty, ¥3000 retail | **¥3200/TB·month** (original ¥6400, monthly ¥4000), 50% off with 3-year full prepaid                                                                                                                                                            | **¥1900/TB·month** using max spec 65536GB 256K IOPS best discount                                                                                                                  |
| SLA      | 5-year warranty, replacement on failure                                         | [Aliyun RDS SLA](https://terms.aliyun.com/legal-agreement/terms/suit_bu1_ali_cloud/suit_bu1_ali_cloud201910310944_35008.html?spm=a2c4g.11186623.0.0.270e6e37n8Exh5) Availability 99.99%: 15% monthly fee, 99%: 30% monthly fee, 95%: 100% monthly fee | [Amazon RDS SLA](https://d1.awsstatic.com/legal/amazonrdsservice/Amazon-RDS-Service-Level-Agreement-Chinese.pdf) Availability 99.95%: 15% monthly fee, 99%: 25% monthly fee, 95%: 100% monthly fee        |

--------------------

## S3 Cost Reference


|                                                          Date                                                          |    $/GB·Month    |  ¥/TB·5Years  |    HDD ¥/TB     | SSD ¥/TB |
|:----------------------------------------------------------------------------------------------------------------------:|:------------:|:---------:|:---------------:|:--------:|
|                               [2006](https://aws.amazon.com/blogs/aws/amazon_s3/).03                                |    0.150     |   63000   |      2800       |          |
|          [2010](http://aws.typepad.com/aws/2010/11/what-can-i-say-another-amazon-s3-price-reduction.html).11           |    0.140     |   58800   |      1680       |          |
|              [2012](http://aws.typepad.com/aws/2012/11/amazon-s3-price-reduction-december-1-2012.html).12              |    0.095     |   39900   |       420       |  15400   |
| [2014](http://aws.typepad.com/aws/2014/03/aws-price-reduction-42-ec2-s3-rds-elasticache-and-elastic-mapreduce.html).04 |    0.030     |   12600   |       371       |   9051   |
|             [2016](https://aws.amazon.com/ru/blogs/aws/aws-storage-update-s3-glacier-price-reductions/).12             |    0.023     |   9660    |       245       |   3766   |
|                                    [2023](https://aws.amazon.com/s3/pricing).12                                     |    0.023     |   9660    |       105       |   280    |
|                                                                                                                        |              |           |                 |          |
|                                                       **Other References**                                                        |  **High-Perf Storage**   | **Top-Tier Discounted** | **vs Purchased NVMe SSD** | **Price Ref** |
|                                                       S3 Express                                                       |    0.160     |   67200   |     DHH 12T     |   1400   |
|                                                        EBS io2                                                         | 0.125 + IOPS |  114000   |  Shannon 3.2T   |   900    |

--------------------

## Cloud Exit Collection

There was a time when "**moving to the cloud**" was almost politically correct in tech circles, and an entire generation of app developers had their vision obscured by the cloud. Let's use real data analysis and firsthand experience to explain the value and pitfalls of the public cloud rental model — for your reference in this era of cost reduction and efficiency improvement — please see "[Cloud Computing Mudslide: Collection](/blog/cloud/exit)"

**Cloud Infrastructure Basics**

- [Reclaiming the Dividends of Computer Hardware](https://mp.weixin.qq.com/s/1OSRcBfd58s0tgZTUZHB9g)

- [Exposing Object Storage: From Cost Reduction to Price Gouging](https://mp.weixin.qq.com/s/HathxpQ_KUuqxyrtyCDzWw)

- [Is Cloud Disk a Scam?](https://mp.weixin.qq.com/s/UxjiUBTpb1pRUfGtR9V3ag)

- [Is Cloud Database an IQ Tax?](https://mp.weixin.qq.com/s/LefEAXTcBH-KBJNhXNoc7A)

- [Garbage Tencent Cloud CDN: From Getting Started to Giving Up](https://mp.weixin.qq.com/s/ANFnbDXwuhKI99fgYRZ9ug)

-------------

**Cloud Business Model**

- [The End of FinOps is Leaving the Cloud](https://mp.weixin.qq.com/s/Yp_PU8nmyK-NVq0clD98RQ)

- [Why Is Cloud Computing Still Not as Profitable as Mining Sand?](https://mp.weixin.qq.com/s/2w0bLJI7TvUNp1tzLYbvsA)

- [Is Cloud SLA Just a Placebo?](https://mp.weixin.qq.com/s/LC5jAhuVObRcrTLxI1FUQA)

- [Have the Price-Gouging Platforms Really Cut Prices?](https://mp.weixin.qq.com/s/TksQ108v_nGaW11-87Es3A)

- [Paradigm Shift: From Cloud to Local-First](https://mp.weixin.qq.com/s/Yp6L0hh4b4HuJQRPD3aJYw)

-------------

**Cloud Exit Odyssey**

- [The Secret to High Availability Off-Cloud: Reject Intellectual Masturbation](https://mp.weixin.qq.com/s/yIVal-9U6_TXX-dZpVtjBg)

- [Save Millions in Half a Year: DHH Cloud Exit FAQ](https://mp.weixin.qq.com/s/xaa079P4DRCz0hzNovGoOA)

- [Is It Time to Abandon Cloud Computing?](https://mp.weixin.qq.com/s/CicctyvV1xk5B-AsKfzPjw)

- [Cloud Exit Odyssey](https://mp.weixin.qq.com/s/H2S3TV-AsqS43A5Hh-XMhQ)

-------------

**Cloud Failure Post-Mortems**

- [From Cost Reduction Comedy to Real Cost Reduction](https://mp.weixin.qq.com/s/FIOB_Oqefx1oez1iu7AGGg)

- [What We Can Learn from Alibaba Cloud's Epic Failure](https://mp.weixin.qq.com/s/OIlR0rolEQff9YfCpj3wIQ)

- [Alibaba Cloud Weekly Explosion: Cloud Database Control Plane Down Again](https://mp.weixin.qq.com/s/3F1ud-tWB3eymu1-dxSHMA)

- [Alibaba Cloud Computing Epic Failure Incoming](https://mp.weixin.qq.com/s/cTge3xOlIQCALQc8Mi-P8w)


-------------

**RDS Failures**

- [A Better Open Source RDS Alternative: Pigsty](https://mp.weixin.qq.com/s/-E_-HZ7LvOze5lmzy3QbQA)

- [Rebuttal: Why You Shouldn't Hire DBAs](https://mp.weixin.qq.com/s/CMRrqI2yBWlNbACHpNgL1g)

- [Cloud RDS: From DROP DATABASE to Run Away](https://mp.weixin.qq.com/s/AGEW1iHQkQy4NQyYC2GonQ)

- [Should Databases Go in K8S?](https://mp.weixin.qq.com/s/4a8Qy4O80xqsnytC4l9lRg)

- [Is Putting Databases in Docker a Good Idea?](https://mp.weixin.qq.com/s/kFftay1IokBDqyMuArqOpg)


-------------

**Cloud Vendor Profiles**

- [Internet Tech Master Crash Course](https://mp.weixin.qq.com/s/8ZffsCgchv8LH5ujv0lRGQ) [Repost]

- [How State-Owned Enterprises Inside the Door View Cloud Vendors Outside](https://mp.weixin.qq.com/s/qSTEf9txjHNTHeEFv3NkWg) [Repost]

- [Alibaba Cloud Stuck at State Enterprise Customers' Door](https://mp.weixin.qq.com/s/1dse1KSCq2xG-QaL1JzZ8Q) [Repost]

- [The Amateur Troupes Behind Internet Failures](https://mp.weixin.qq.com/s/OxhhJ4U1P43di_eaE1uGPw) [Repost]

- [Cloud Vendors View of Customers: Poor, Idle, and Starved for Love](https://mp.weixin.qq.com/s/y9IradwxTxOsUGcOHia1XQ) [Repost]
