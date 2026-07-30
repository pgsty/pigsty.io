---
title: "xml2"
linkTitle: "xml2"
description: "XPath querying and XSLT"
weight: 3990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/xml2.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/xml2.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/xml2.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`xml2`**](/ext/e/xml2) | `1.1` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3990  | [**`xml2`**](/ext/e/xml2) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plxslt`](/ext/e/plxslt) [`omni_xml`](/ext/e/omni_xml) [`pgrdf`](/ext/e/pgrdf) [`sparql`](/ext/e/sparql) [`rdf_fdw`](/ext/e/rdf_fdw) [`pgpdf`](/ext/e/pgpdf) [`pgbson`](/ext/e/pgbson) [`hstore`](/ext/e/hstore) [`pglite_fusion`](/ext/e/pglite_fusion) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION xml2;
```




## Usage

> [xml2: XPath querying and XSLT functionality](https://www.postgresql.org/docs/current/xml2.html)

The `xml2` extension provides XPath querying and XSLT transformation functions for XML documents. Note: this module is deprecated in favor of the core SQL/XML functionality.

```sql
CREATE EXTENSION xml2;
```

### XML Validation

```sql
SELECT xml_valid('<doc><item>test</item></doc>');  -- true
```

### XPath Query Functions

```sql
-- Extract text value
SELECT xpath_string('<doc><name>Alice</name></doc>', '/doc/name');

-- Extract numeric value
SELECT xpath_number('<doc><count>42</count></doc>', '/doc/count');

-- Extract boolean
SELECT xpath_bool('<doc><active>true</active></doc>', '/doc/active');

-- Extract node set with tags
SELECT xpath_nodeset('<doc><a>1</a><a>2</a></doc>', '/doc/a', 'results', 'item');

-- Extract values as comma-separated list
SELECT xpath_list('<doc><a>1</a><a>2</a></doc>', '/doc/a');  -- 1,2
```

### xpath_table Function

Evaluate multiple XPath queries across a set of documents:

```sql
SELECT * FROM
  xpath_table('id', 'xml_col', 'documents',
              '/doc/author|/doc/title',
              'true')
  AS t(id int, author text, title text);
```

Parameters:
- Key field name (first output column)
- XML document field name
- Table/view name
- XPath expressions separated by `|`
- WHERE clause (use `'true'` for all rows)

### XSLT Transformation

```sql
-- Apply XSL stylesheet to document
SELECT xslt_process(xml_document, xsl_stylesheet);

-- With parameters
SELECT xslt_process(xml_document, xsl_stylesheet, 'param1=value1,param2=value2');
```
