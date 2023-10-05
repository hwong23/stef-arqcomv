---
keywords:
- SOA
- madurez
- gobierno
- PGN
lang: en-US
date-meta: '2023-10-05'
author-meta:
- Harry Wong, ing.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-10-05" />
  <meta name="citation_publication_date" content="2023-10-05" />
  <meta property="article:published_time" content="2023-10-05" />
  <meta name="dc.modified" content="2023-10-05T17:58:53+00:00" />
  <meta property="article:modified_time" content="2023-10-05T17:58:53+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Harry Wong, ing." />
  <meta name="citation_author_institution" content="Arquitecto, Softgic" />
  <link rel="canonical" href="https://hwong23.github.io/stef-arqcomv/" />
  <meta property="og:url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta property="twitter:url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta name="citation_fulltext_html_url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta name="citation_pdf_url" content="https://hwong23.github.io/stef-arqcomv/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://hwong23.github.io/stef-arqcomv/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/stef-arqcomv/v/9a07ee5a61622411b22fc11a3c77031444ce3547/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/9a07ee5a61622411b22fc11a3c77031444ce3547/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/9a07ee5a61622411b22fc11a3c77031444ce3547/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.bib
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...

---
title: Documento de Arquitectura Migración Funcional PGN SIU
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SIU
geometry:
  - top=1in
  - bottom=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
...


<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.9a07ee5 de 05 Oct 2023

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 05 Oct 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, Migración Funcional SIU, Contrato 078-2023, 
([Web](https://hwong23.github.io/stef-arqcomv/v/9a07ee5a61622411b22fc11a3c77031444ce3547/))
están basados en el resultado de la Fase 1 del proyecto PGN SIU del 2022,
[Sharepoint Softgic@9a07ee5](http://softgic.sharepoint.com)
del October 5, 2023.
</em></small>





<br>

## Autores



+ **Harry Wong, ing.**
  <br>
    · ![Usuario](images/github.svg){.inline_icon width=16 height=16}
    [e_hwong](https://github.com/e_hwong)
    <br>
  <small>
     Arquitecto, Softgic
  </small>


::: {#correspondence}
✉ — Enviar mensajes a Harry Wong, ing. \<harry.wong@softgic.co\>.


:::

<br>








<small><em>
This manuscript
([permalink](https://hwong23.github.io/stef-arqcomv/v/9a07ee5a61622411b22fc11a3c77031444ce3547/))
was automatically generated
from [hwong23/stef-arqcomv@9a07ee5](https://github.com/hwong23/stef-arqcomv/tree/9a07ee5a61622411b22fc11a3c77031444ce3547)
on October 5, 2023.
</em></small>



## Authors



+ **Harry Wong, ing.**
  <br>
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [e_hwong](https://github.com/e_hwong)
    <br>
  <small>
     Arquitecto, Softgic
  </small>


::: {#correspondence}
✉ — Correspondence possible via [GitHub Issues](https://github.com/hwong23/stef-arqcomv/issues)
or email to
Harry Wong, ing. \<harry.wong@softgic.co\>.


:::


## Objetivo del Documento
Descripción de los productos del trabajo de arquitectura de la Fase 2, proyecto Migración Funcional SIU de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SIU      |
|----------------|----------------------------|
| Palabras clave | SIU, Softgic, PGN, Análisis de brecha, GAP, Comparativa              |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.9a07ee5 del 05 Oct 2023 |
| Vínculos       | [N003a Vista Segmento PGN SIU](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage




## Contenidos
\toc

<br>

<div style="page-break-before: always;"></div>
\newpage



# Introducción

## Propósito
Este documento tiene como propósito presentar la arquitectura del aplicativo Sistema Único de Información (SUI) para Procuraduría General de la Nación (PGN). según los requerimientos definidos durante la etapa de preventa y luego detallados en las historias de usuario.

La arquitectura será una guía para que el diseño y la implementación de los componentes que conforman la solución sean cobijados bajo lineamientos y premisas bien definidos, permitiendo a los elementos del sistema interactuar entre sí de forma coherente. La arquitectura será tomada como un diseño estratégico que establece restricciones globales para el diseño, define un marco inicial de trabajo para la implementación de los requerimientos funcionales y no funcionales.

La definición arquitectónica de este proyecto será un proceso evolutivo como tal. Este documento puede ser susceptible a cambios a medida que se vayan agregando nuevas funcionalidades o requisitos al sistema.

Uno de los principales propósitos de este documento es hacer una representación de las decisiones de disposición lógica y física de las partes del sistema; por tanto, es un diseño estratégico, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

 <div style="page-break-before: always;"></div>
\newpage



# Restricciones Principales
Informamos de las restricciones que hacen parte del proyecto, y por tanto, a considera en el ejercicio de arquitectura del presente proyecto.

Lista de restricciones de la migración SUI, 2023.

1. Restricciones de hardware o software en servidores. Los equipos de infraestructura del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 serán los mismos de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.
1. Disponibilidad de recursos. Los recursos de implementación y validación de calidad de esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Estándares. Los estándares seleccionados por la solución de este proyecto, (Fase 2, PGN Migración Funcional SIU, están determinados por el uso de las plataformas específicas determinadas por la implementación (desarrollo del software).
1. Requerimientos de interoperabilidad. Los recursos de interoperabilidad y colaboración entre sistemas, módulos, submódulos y aplicaciones de terceros relacionados con esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Requerimientos de protocolos o interfaces. Los recursos de red, y protocolos de comunicación o transporte de esta Fase del proyecto a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de los considerados en la anterior Fase 1. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Seguridad. Las restricciones de seguridad del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de las de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.

<br>

## Restricciones Secundarias
Otras restricciones a detallar.

1. Repositorio de datos.
1. Memoria, disco, CPU.
1. Requerimientos de rendimiento.

<br>


# Requisitos de Arquitectura (no funcional)
Entendemos como requisitos de arquitectura aquellos requerimientos no visibles pero estructurales, medibles, y que impactan al funcionamiento, desarrollo y mantenimiento de la solución migración SUI, objeto de este proyecto, OP 078-2023.
 
Definiremos estos requisitos de la solución a tener en cuenta al momento del desarrollo.

## Requerimientos generales
1. **Parametrización**. Crear desarrollos parametrizables necesarios para permitir la administración de la información de uso general.
1. **Interoperabilidad**. Crear desarrollos de SUI interoperables con otros sistemas de información de la entidad según requerimientos de los procesos.
1. **Diseño**. Los desarrollos complementarios deben responder a los criterios de bajo acoplamiento y alta cohesión.
1. **Reglas de negocio**. Las soluciones deben disponer de todas las validaciones y controles que garanticen la calidad, seguridad y unicidad de la información.
1. Para los casos que aplique, la solución debe contar con una integración con el servicio de correo de la Entidad.
1. Todos los desarrollos complementarios serán en su totalidad propiedad de la entidad, para lo cual la entidad podrá modificar y/o actualizar a futuro los procesos modelados, acorde a las necesidades; por tanto, deberán entregarse los derechos intelectuales y patrimoniales como parte de la documentación y el código fuente que corresponda.

<div style="page-break-before: always;"></div>
\newpage


## Requisitos Particulares de Arquitectura (no funcional) 

### Consistencia SUI (lógica)

| Requisito      | Extensibilidad SUI |
|----------------|--------------------|
| Descripción | Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. |
| Calidad sistémica | La consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |

Table: Requisito no. 1, Migración SUI, Consistencia. {#tbl:requisito1-id}

### Mantenibilidad SUI

| Requisito      | Mantenibilidad SUI |
|----------------|--------------------|
| Descripción | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  |
| Calidad sistémica | La mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |

Table: Requisito no. 2, Mantenibilidad SUI. {#tbl:requisito2-id}

### Extensibilidad SUI

| Requisito      | Extensibilidad SUI |
|----------------|--------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Requisito no. 3, Migración SUI, Flexibilidad. {#tbl:requisito3-id}


This manuscript is a template (aka "rootstock") for [Manubot](https://manubot.org/ "Manubot"), a tool for writing scholarly manuscripts.
Use this template as a starting point for your manuscript.

The rest of this document is a full list of formatting elements/features supported by Manubot.
Compare the input (`.md` files in the `/content` directory) to the output you see below.

## Basic formatting

**Bold** __text__

[Semi-bold text]{.semibold}

[Centered text]{.center}

[Right-aligned text]{.right}

*Italic* _text_

Combined *italics and __bold__*

~~Strikethrough~~

1. Ordered list item
2. Ordered list item
    a. Sub-item
    b. Sub-item
        i. Sub-sub-item
3. Ordered list item
    a. Sub-item

- List item
- List item
- List item

subscript: H~2~O is a liquid

superscript: 2^10^ is 1024.

[unicode superscripts](https://www.google.com/search?q=superscript+generator)⁰¹²³⁴⁵⁶⁷⁸⁹

[unicode subscripts](https://www.google.com/search?q=superscript+generator)₀₁₂₃₄₅₆₇₈₉

A long paragraph of text.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Putting each sentence on its own line has numerous benefits with regard to [editing](https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line) and [version control](https://rhodesmill.org/brandon/2012/one-sentence-per-line/).

Line break without starting a new paragraph by putting  
two spaces at end of line.

## Document organization

Document section headings:

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

### A heading centered on its own printed page{.center .page_center}

<!-- an arbitrary comment. visible in input, but not visible in output. -->

Horizontal rule:

---

`Heading 1`'s are recommended to be reserved for the title of the manuscript.

`Heading 2`'s are recommended for broad sections such as *Abstract*, *Methods*, *Conclusion*, etc.

`Heading 3`'s and `Heading 4`'s are recommended for sub-sections.

## Links

Bare URL link: <https://manubot.org>

[Long link with lots of words and stuff and junk and bleep and blah and stuff and other stuff and more stuff yeah](https://manubot.org)

[Link with text](https://manubot.org)

[Link with hover text](https://manubot.org "Manubot Homepage")

[Link by reference][manubot homepage]

[Manubot Homepage]: https://manubot.org

## Citations

Citation by DOI [@doi:10.7554/eLife.32822].

Citation by PubMed Central ID [@pmc:PMC6103790].

Citation by PubMed ID [@pubmed:30718888].

Citation by Wikidata ID [@wikidata:Q56458321].

Citation by ISBN [@isbn:9780262517638].

Citation by URL [@{https://greenelab.github.io/meta-review/}].

Citation by alias [@deep-review].

Multiple citations can be put inside the same set of brackets [@doi:10.7554/eLife.32822; @deep-review; @isbn:9780262517638].
Manubot plugins provide easier, more convenient visualization of and navigation between citations [@doi:10.1371/journal.pcbi.1007128; @pubmed:30718888; @pmc:PMC6103790; @deep-review].

Citation tags (i.e. aliases) can be defined in their own paragraphs using Markdown's reference link syntax:

[@deep-review]: doi:10.1098/rsif.2017.0387

## Referencing figures, tables, equations

Figure @fig:square-image

Figure @fig:wide-image

Figure @fig:tall-image

Figure @fig:vector-image

Table @tbl:bowling-scores

Equation @eq:regular-equation

Equation @eq:long-equation

## Quotes and code

> Quoted text

> Quoted block of text
>
> Two roads diverged in a wood, and I—  
> I took the one less traveled by,  
> And that has made all the difference.

Code `in the middle` of normal text, aka `inline code`.

Code block with Python syntax highlighting:

```python
from manubot.cite.doi import expand_short_doi

def test_expand_short_doi():
    doi = expand_short_doi("10/c3bp")
    # a string too long to fit within page:
    assert doi == "10.25313/2524-2695-2018-3-vliyanie-enhansera-copia-i-insulyatora-gypsy-na-sintez-ernk-modifikatsii-hromatina-i-svyazyvanie-insulyatornyh-belkov-vtransfetsirovannyh-geneticheskih-konstruktsiyah"
```

Code block with no syntax highlighting:

```
Exporting HTML manuscript
Exporting DOCX manuscript
Exporting PDF manuscript
```

## Figures

![
**A square image at actual size and with a bottom caption.**
Loaded from the latest version of image on GitHub.
](https://github.com/manubot/resources/raw/15493970f8882fce22bef829619d3fb37a613ba5/test/square.png "Square image"){#fig:square-image}

![
**An image too wide to fit within page at full size.**
Loaded from a specific (hashed) version of the image on GitHub.
](https://github.com/manubot/resources/raw/15493970f8882fce22bef829619d3fb37a613ba5/test/wide.png "Wide image"){#fig:wide-image}

![
**A tall image with a specified height.**
Loaded from a specific (hashed) version of the image on GitHub.
](https://github.com/manubot/resources/raw/15493970f8882fce22bef829619d3fb37a613ba5/test/tall.png "Tall image"){#fig:tall-image height=3in}

![
**A vector `.svg` image loaded from GitHub.**
The parameter `sanitize=true` is necessary to properly load SVGs hosted via GitHub URLs.
White background specified to serve as a backdrop for transparent sections of the image.
Note that if you want to export to Word (`.docx`), you need to download the image and reference it locally (e.g. `content/images/vector.svg`) instead of using a URL.
](https://raw.githubusercontent.com/manubot/resources/main/test/vector.svg?sanitize=true "Vector image"){#fig:vector-image height=2.5in .white}

## Tables

| *Bowling Scores* | Jane          | John          | Alice         | Bob           |
|:-----------------|:-------------:|:-------------:|:-------------:|:-------------:|
| Game 1 | 150 | 187 | 210 | 105 |
| Game 2 |  98 | 202 | 197 | 102 |
| Game 3 | 123 | 180 | 238 | 134 |

Table: A table with a top caption and specified relative column widths.
{#tbl:bowling-scores}

|         | Digits 1-33                        | Digits 34-66                      | Digits 67-99                      | Ref.                                                        |
|:--------|:-----------------------------------|:----------------------------------|:----------------------------------|:------------------------------------------------------------|
| pi      | 3.14159265358979323846264338327950 | 288419716939937510582097494459230 | 781640628620899862803482534211706 | [`piday.org`](https://www.piday.org/million/)               |
| e       | 2.71828182845904523536028747135266 | 249775724709369995957496696762772 | 407663035354759457138217852516642 | [`nasa.gov`](https://apod.nasa.gov/htmltest/gifcity/e.2mil) |

Table: A table too wide to fit within page.
{#tbl:constant-digits}

|          | **Colors** <!-- ="2" --> |                      |
|:--------:|:--------------------------------:|:--------------------:|
| **Size** | **Text Color**                   | **Background Color** |
| big      | blue                             | orange               |
| small    | black                            | white                |

Table: A table with merged cells using the `attributes` plugin.
{#tbl: merged-cells}

## Equations

A LaTeX equation:

$$\int_0^\infty e^{-x^2} dx=\frac{\sqrt{\pi}}{2}$$ {#eq:regular-equation}

An equation too long to fit within page:

$ = a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9$$ {#eq:long-equation}

## Special

<i class="fas fa-exclamation-triangle"></i> [WARNING]{.semibold} _The following features are only supported and intended for `.html` and `.pdf` exports._
_Journals are not likely to support them, and they may not display correctly when converted to other formats such as `.docx`._

[Link styled as a button](https://manubot.org "Manubot Homepage"){.button}

Adding arbitrary HTML attributes to an element using Pandoc's attribute syntax:

::: {#some_id_1 .some_class style="background: #ad1457; color: white; margin-left: 40px;" title="a paragraph of text" data-color="white" disabled="true"}
Manubot Manubot Manubot Manubot Manubot.
Manubot Manubot Manubot Manubot.
Manubot Manubot Manubot.
Manubot Manubot.
Manubot.
:::

Adding arbitrary HTML attributes to an element with the Manubot `attributes` plugin (more flexible than Pandoc's method in terms of which elements you can add attributes to):

Manubot Manubot Manubot Manubot Manubot.
Manubot Manubot Manubot Manubot.
Manubot Manubot Manubot.
Manubot Manubot.
Manubot.
<!-- ="element_id" class="some_class" ="color: #ad1457; margin-left: 40px;" ="true" ="a paragraph of text" -color="red" -->

Available background colors for text, images, code, banners, etc:  

`white`{.white}
`lightgrey`{.lightgrey}
`grey`{.grey}
`darkgrey`{.darkgrey}
`black`{.black}
`lightred`{.lightred}
`lightyellow`{.lightyellow}
`lightgreen`{.lightgreen}
`lightblue`{.lightblue}
`lightpurple`{.lightpurple}
`red`{.red}
`orange`{.orange}
`yellow`{.yellow}
`green`{.green}
`blue`{.blue}
`purple`{.purple}

Using the [Font Awesome](https://fontawesome.com/) icon set:

<!-- include the Font Awesome library, per: https://fontawesome.com/start -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<i class="fas fa-check"></i> <i class="fas fa-question"></i> <i class="fas fa-star"></i> <i class="fas fa-bell"></i> <i class="fas fa-times-circle"></i> <i class="fas fa-ellipsis-h"></i>

[
<i class="fas fa-scroll fa-lg"></i> **Light Grey Banner**<br>
useful for *general information* - [manubot.org](https://manubot.org/)
]{.banner .lightgrey}

[
<i class="fas fa-info-circle fa-lg"></i> **Blue Banner**<br>
useful for *important information* - [manubot.org](https://manubot.org/)
]{.banner .lightblue}

[
<i class="fas fa-ban fa-lg"></i> **Light Red Banner**<br>
useful for *warnings* - [manubot.org](https://manubot.org/)
]{.banner .lightred}


# Doc.3.Migración Funcional SUI
* [Patrón de Diseño Línea Base SUI PGN](#patrón-de-diseño-línea-base-sui-pgn)
	* [Lineabase.0.SIU applicación](#lineabase.0.siu-applicación)
	* [Lineabase.1.SIU componente](#lineabase.1.siu-componente)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Linebase.2.Portal](#linebase.2.portal)
* [Patrón de Diseño Migración SUI PGN](#patrón-de-diseño-migración-sui-pgn)
	* [Migracion.1a.SIU módulos](#migracion.1a.siu-módulos)
	* [Migracion.1b.SIU módulos componentes](#migracion.1b.siu-módulos-componentes)
	* [Migracion.1c.SIU modulos colaboración](#migracion.1c.siu-modulos-colaboración)
* [Organización cambios arquitectura](#organización-cambios-arquitectura)
	* [Organización. 1n. Mapa producto](#organización.-1n.-mapa-producto)
	* [Organización. 1n.1.b. Mapa producto PGN. Relatoría](#organización.-1n.1.b.-mapa-producto-pgn.-relatoría)
	* [Organización. 2n.1a. Mapa producto PGN. Conciliacion](#organización.-2n.1a.-mapa-producto-pgn.-conciliacion)
	* [Organización. 4n.1. Mapa producto PGN. Estratego](#organización.-4n.1.-mapa-producto-pgn.-estratego)
	* [Organización. 3n.1. Mapa producto PGN. SIAF](#organización.-3n.1.-mapa-producto-pgn.-siaf)
* [Arquitectura de Seguridad, SUI Migración](#arquitectura-de-seguridad,-sui-migración)
	* [Seguridad. 1. Requerimientos](#seguridad.-1.-requerimientos)
	* [Seguridad. Linebase.2.Portal](#seguridad.-linebase.2.portal)
* [Análisis de Productos](#análisis-de-productos)
	* [Organización. 4n.1a. Mapa producto PGN. Comparativa](#organización.-4n.1a.-mapa-producto-pgn.-comparativa)
* [Riesgos Técnicos](#riesgos-técnicos)
	* [Riesgos.1. Migración funcional](#riesgos.1.-migración-funcional)
	* [Riesgos.2. Modelo Riesgo RSG10](#riesgos.2.-modelo-riesgo-rsg10)

<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Línea Base SUI PGN
## Lineabase.0.SIU applicación
![Diagram: Lineabase.0.SIU applicación](images/Lineabase.0.SIUapplicación.png){#fig:Lineabase.0.SIUapplicación width=}

Procuraduría General de la Nación, proyecto Migración SIU, 2023, Fase II. Línea base del sistema único de información (SUI en adelante) de la PGN. Presentación de componentes de software  originales implementados en la Fase I del presente proyecto.


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component||*plantilla:* element-md-new<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||

## Lineabase.1.SIU componente
![Diagram: Lineabase.1.SIU componente](images/Lineabase.1.SIUcomponente.png){#fig:Lineabase.1.SIUcomponente width=5.89in}

Distribución de los servicios y paquetes que integran la aplicación de SUI. 

Cuatro paquetes con tecnologías respectivas

1. Angular 11 (Web)
1. API Transaccional (Node Js)
1. API Config (C#)
1. Persistencia (SQL)

Asuntos de la Migración:

* Estrategia CMS central
* Motor de búsqueda
* Estatego como BI
* Conciliación y Doku
* Gestión de sesiones / caducidad



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component||*plantilla:* element-md-new<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component||*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface||*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service|||
|**Doku (gest. doc.)**|application-service|||
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service|||
|**Mensaje: JSON**|data-object|||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component||*plantilla:* element-md-new<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component||*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface||*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service|||
|**Doku (gest. doc.)**|application-service|||
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service|||
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||

## Linebase.2.Portal
![Diagram: Linebase.2.Portal](images/Linebase.2.Portal.png){#fig:Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||
<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Migración SUI PGN
## Migracion.1a.SIU módulos
![Diagram: Migracion.1a.SIU módulos](images/Migracion.1a.SIUmódulos.png){#fig:Migracion.1a.SIUmódulos width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales dell SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

Los submódulos identificados tienen los siguientes roles para el SUI migrado:

1. cc:Presentación
1. cc:Servicios de aplicación
1. cc:Portales y canales
1. cc:Administración y configuración
1. cc:Almacenamiento

### Requerimientos Asociados a los Submódulos
La disposición de los módulos y submódulos presentada, denominada SUI Migración en adelante, facilita la focalización de los requerimientos encontrados en el levantamiento realizado en el actual proyecto. Así, por ejemplo, los requerimientos funcionales se encuentran concentrados en el submódulo de presentación (ver imagen).


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|||
|**cc:PGN SUI (misional)**|application-collaboration|||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**cc:Servicios de aplicación**|application-collaboration|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**Cliente PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Misionales**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Migracion.1b.SIU módulos componentes
![Diagram: Migracion.1b.SIU módulos componentes](images/Migracion.1b.SIUmóduloscomponentes.png){#fig:Migracion.1b.SIUmóduloscomponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migración PGN. Organización intena de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologeias. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component||*plantilla:* element-md-new<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component||*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface||*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service|||
|**Doku (gest. doc.)**|application-service|||
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**ccccc Proveedores contenidos**|application-service|||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Misionales**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Migracion.1c.SIU modulos colaboración
![Diagram: Migracion.1c.SIU modulos colaboración](images/Migracion.1c.SIUmoduloscolaboración.png){#fig:Migracion.1c.SIUmoduloscolaboración width=}

Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante buses de datos empresarial, sin perjuicio del patrón de comunicación estadar descrito en el diagrama.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Almacenamiento**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|||
|**cc:PGN SUI (misional)**|application-collaboration|||
|**cc:PGN SUI (misional)**|application-collaboration|||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
<div style="page-break-before: always;"></div>
\newpage

# Organización cambios arquitectura
## Organización. 1n. Mapa producto
![Diagram: Organización. 1n. Mapa producto](images/Organización.1n.Mapaproducto.png){#fig:Organización.1n.Mapaproducto width=3.14in}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Tiempo**|gap|||
|**Características**|goal||*modulo:* <br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|

## Organización. 1n.1.b. Mapa producto PGN. Relatoría
![Diagram: Organización. 1n.1.b. Mapa producto PGN. Relatoría](images/Organización.1n.1.b.MapaproductoPGN.Relatoría.png){#fig:Organización.1n.1.b.MapaproductoPGN.Relatoría width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Administración de contenidos**|capability||*modulo:* relatoria<br>|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Componentes de usabilidad, no. 1**|capability||*modulo:* relatoria<br>|
|**Componentes de usabilidad, no. 2**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de búsqueda**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de descripción de contenidos**|capability||*modulo:* relatoria<br>|
|**Integración API CMS**|capability||*modulo:* relatoria<br>|
|**Motor de búsqueda**|capability||*modulo:* relatoria<br>|
|**Proceso de organización de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de recolección de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de sincronización automática de contenidos**|capability||*modulo:* relatoria<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Búsqueda**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Características**|goal||*modulo:* <br>|
|**Contenidos**|goal|Se tendran que adecuar los contenidos audivisuales de los sitios web, con subtitulos o CLosed Caption y la apropiacion de lenguajes de señas. |*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Descripción (metatada)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Indexación**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Recolección**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Sincronización (actualizcn)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* relatoria<br>|
|**Búsqueda de contenidos. Relatoría v0.1**|value||*modulo:* relatoria<br>|
|**Despliegue Relatoría v1.2**|value||*modulo:* relatoria<br>|
|**Gestión contenidos. Rltría v1.0**|value||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Organización contenidos. Rltría v0.5**|value||*modulo:* relatoria<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 2**|work-package||*modulo:* relatoria<br>|
|**Iteración 3**|work-package||*modulo:* relatoria<br>|
|**Iteración 4**|work-package||*modulo:* relatoria<br>|
|**Iteración 5**|work-package||*modulo:* relatoria<br>|
|**Iteración 6**|work-package||*modulo:* relatoria<br>|
|**Iteración 7**|work-package||*modulo:* relatoria<br>|
|**rel.Iteración 1**|work-package||*modulo:* relatoria<br>|

## Organización. 2n.1a. Mapa producto PGN. Conciliacion
![Diagram: Organización. 2n.1a. Mapa producto PGN. Conciliacion](images/Organización.2n.1a.MapaproductoPGN.Conciliacion.png){#fig:Organización.2n.1a.MapaproductoPGN.Conciliacion width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo  Preventico**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinar**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención**|capability||*modulo:* conciliacion<br>|
|**Integración API Dokus**|capability||*modulo:* conciliacion<br>|
|**Motor de flujo de trabajo**|capability||*modulo:* conciliacion<br>|
|**Panel de control flujos**|capability||*modulo:* conciliacion<br>|
|**Reporte flujos de trabajo**|capability||*modulo:* conciliacion<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Características**|goal||*modulo:* <br>|
|**Conciliación administrativa**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación civil**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación disciplinar**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación familia**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación preventivo**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Diseño de flujos de Conciliación**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión de instancias (flujos)**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión documental**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Informes de gestión flujos**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* conciliacion<br>|
|**Despliegue Conciliación v1.2**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinario. Conciliación v0.9**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención. Conciliación v0.1 (copy)**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Preventivo. Conciliación v0.7**|value||*modulo:* conciliacion<br>|
|**Gestión de flujos. Conciliación 1.0**|value||*modulo:* conciliacion<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* conciliacion<br>|
|**Iteración 2**|work-package||*modulo:* conciliacion<br>|
|**Iteración 3**|work-package||*modulo:* conciliacion<br>|
|**Iteración 4**|work-package||*modulo:* conciliacion<br>|
|**Iteración 5**|work-package||*modulo:* conciliacion<br>|
|**Iteración 6**|work-package||*modulo:* conciliacion<br>|
|**Iteración 7**|work-package||*modulo:* conciliacion<br>|

## Organización. 4n.1. Mapa producto PGN. Estratego
![Diagram: Organización. 4n.1. Mapa producto PGN. Estratego](images/Organización.4n.1.MapaproductoPGN.Estratego.png){#fig:Organización.4n.1.MapaproductoPGN.Estratego width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**Características**|goal||*modulo:* <br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|

## Organización. 3n.1. Mapa producto PGN. SIAF
![Diagram: Organización. 3n.1. Mapa producto PGN. SIAF](images/Organización.3n.1.MapaproductoPGN.SIAF.png){#fig:Organización.3n.1.MapaproductoPGN.SIAF width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones de acuerdo al estado**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**CRUD Campos**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Características**|goal||*modulo:* <br>|
|**Creación de movimiento**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependiendo del tipo de movimiento**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Login (Doble factor)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Sincronización con Homminis**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Vista CRUD**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 9**|work-package||*modulo:* siaf<br>|
<div style="page-break-before: always;"></div>
\newpage

# Arquitectura de Seguridad, SUI Migración
## Seguridad. 1. Requerimientos
![Diagram: Seguridad. 1. Requerimientos](images/Seguridad.1.Requerimientos.png){#fig:Seguridad.1.Requerimientos width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:PGN SUI (misional)**|application-collaboration|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQRSEG1**|requirement|1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad.||
|**RQRSEG10**|requirement|1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad.||
|**RQRSEG12**|requirement|1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones.||
|**RQRSEG13**|requirement|1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización.||
|**RQRSEG15**|requirement|1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet).||
|**RQRSEG16**|requirement|1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad.||
|**RQRSEG17**|requirement|1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad.||
|**RQRSEG18**|requirement| "1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. "||
|**RQRSEG18**|requirement|1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información.,id-d1a6b80e7a6c4538b922f333f4d7ec7a,requirement<br>RQRSEG11,"1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio).||
|**RQRSEG19**|requirement|1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados.||
|**RQRSEG2**|requirement|1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución.||
|**RQRSEG21**|requirement|1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. """||
|**RQRSEG22**|requirement|1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta.||
|**RQRSEG24**|requirement|1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet||
|**RQRSEG25**|requirement| "1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad."||
|**RQRSEG26**|requirement| "1. Para los casos que aplique se debe permitir el manejo de certificados o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. "||
|**RQRSEG27**|requirement| "1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. "||
|**RQRSEG28**|requirement| "1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). "||
|**RQRSEG29**|requirement| "1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. "||
|**RQRSEG3**|requirement|1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas.||
|**RQRSEG4**|requirement|1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse.||
|**RQRSEG5**|requirement|1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción.||
|**RQRSEG6**|requirement|1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación).||
|**RQRSEG7**|requirement|1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos).||
|**RQRSEG8**|requirement|1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella.||
|**RQRSEG9**|requirement|1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad.||

## Seguridad. Linebase.2.Portal
![Diagram: Seguridad. Linebase.2.Portal](images/Seguridad.Linebase.2.Portal.png){#fig:Seguridad.Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Directivas de Aplicaciones.**|application-component|||
|**Directivas de acceso.**|application-component|||
|**Directivas de proteccion de aplicaciones.**|application-component|||
|**Directivas de riesgos de protección. ***|application-component|||
|**Requiere MFA ***|application-component|||
|**Requiere inicio de sesión.**|application-component|||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||
<div style="page-break-before: always;"></div>
\newpage

# Análisis de Productos
## Organización. 4n.1a. Mapa producto PGN. Comparativa
![Diagram: Organización. 4n.1a. Mapa producto PGN. Comparativa](images/Organización.4n.1a.MapaproductoPGN.Comparativa.png){#fig:Organización.4n.1a.MapaproductoPGN.Comparativa width=}

Mapa de productos. Comparativa funcional y técnica de módulos PGN, SIAF (izq.) y Estratego (derecha).

### Volumen Funcional
El análisis funcional de ambos módulos realizado durante el levantamiento (iteración 0) del presente proyecto arroja que SIAF tiene un 40% más de volumen que Estratego. Esto es, 16 funcionalidades de Estratego, mientras que SIAF suma 26. Ver imagen comparativa.

### Viabilidad de Alcance
Tomando en cuenta el criterio de calidad de la migración, objeto del presente contrato, 078-2023, de migrar módulos completos dentro de lo posible, y contrastando este criterio con el plazo del proyecto actual, que es de 4 meses, de los cuales ya se han ejecuta aproximadamente el 20% del mismo, es más viable la estrategia de migración de estratego sobre la de SIAF de la PGN por requerir menos iteraciones de desarrollo: seis (6) iteraciones, versus, nueve (9) de SIAF.

### Impacto / Beneficio a PGN
Los hitos de mercado del presente análisis producto, imagen arriba, dan cuenta  del beneficio e impacto de ambos proyectos de migración. Haciendo la comparación de los hitos de mercado de estos productos resalta que Estratego prima sobre SIAF en tanto que el peso cualitativo de las funciones estratégicas del primero son de mayor relevancia que las funciones operativos de inventario de SIAF. Basado en esto, Estratego reporta mayor beneficio y menos impacto en esfuerzo (por la razón anterior) que SIAF.

En conclusion, por los criterios de viabilidad y tamaño funcional y por el impacto estratégico, Estratego resulta en la migración a seleccionar sobre la del modulo SIAF. Esta estrategia satisface además la restricción de migrar moóulos completos sobre migración parcial.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Acciones de acuerdo al estado (copy)**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén (copy)**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos (copy)**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**CRUD Campos (copy)**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Creación de movimiento (copy)**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario (copy)**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación) (copy)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total (copy)**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental) (copy)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Dependiendo del tipo de movimiento (copy)**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos (copy)**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado (copy)**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática (copy)**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos (copy)**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado (copy)**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf) (copy)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento (copy)**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes (copy)**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Login (Doble factor) (copy)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible (copy)**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo (copy)**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Sincronización con Homminis (copy)**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Vista CRUD (copy)**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada (copy)**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada (copy)**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada (copy)**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|
|**Iteración 9 (copy)**|work-package||*modulo:* siaf<br>|
<div style="page-break-before: always;"></div>
\newpage

# Riesgos Técnicos
## Riesgos.1. Migración funcional
![Diagram: Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:Riesgos.1.Migraciónfuncional width=}

Riesgos de la migración funcional:

* RSG1. Estrategia CMS central
* RSG2. Motor de búsqueda
* RSG3. Estatego como BI
* RSG4. Conciliación y Doku
* RSG5. Gestión de sesiones / caducidad
* RSG6. Componentes de negocio
* RSG7. Asignación de roles y permisos de Acceso 
* RSG8. Intentos de accesos no autorizados
* RSG9. Alteración de datos negocio
* RSG10. Validación decisiones de arquitectura

### Acciones de Mitigación

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del SCM central (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del motor de búsqueda compartido (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: diseño de solución de inteligencia de negocio (Power BI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: ubicar la lógica, los flujos, y los datos misionales dentro del SIU. La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: facilitar la administración de seguridad en un solo lugar (distinto de localizarla en las aplicaciones web). La PGN debe decidir si o no a la acción propuesta.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**RSG1. Estrategia CMS central**|constraint|Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br>||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**RSG2. Motor de búsqueda compartido**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG3. Estatego como BI**|constraint|Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br>||
|**RSG4. Conciliación y gestión documental (Doku)**|constraint|Definir la ubicación de los componentes misionales de Conciliación Administrativa (SIU). Debe estar fuera de Doku.<br>||
|**RSG5. Gestión de sesiones / caducidad**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG6. Componentes de negocio**|constraint|Incluir el esfuerzo de creación de componentes estrcturales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br>Algunos componentes requeridos son:<br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br>||
|**RSG7. Asignación de roles y permisos de Acceso **|constraint|RSG7. Asignación de roles y permisos de Acceso<br>Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. <br>Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.<br>||
|**RSG8. Intentos de accesos no autorizados**|constraint|RSG8. Intentos de accesos no autorizados<br>Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.<br>||
|**RSG9. Alteración de datos negocio**|constraint|RSG9. Alteración de datos almacenados en Base de Datos.<br>Se deberán asignar usuarios para la conexión de cada base de datos.<br>Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). <br>Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. <br>||
|**Riesgos Migración Funcional SIU**|constraint|Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br>||

## Riesgos.2. Modelo Riesgo RSG10
![Diagram: Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:Riesgos.2.ModeloRiesgoRSG10 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Impacto**|assessment|||
|**Agente de riesgo PGN**|business-actor|Arquitecto PGN||
|**Agente de riesgo Softgic**|business-actor|Arquitecto Softgic||
|**Desconocimiento arq. de referencia SUI**|business-event|||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**Evaluación  arquitectura de referencia SUI**|course-of-action|La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br>||
|**Sesión semanal validación arquitectura**|requirement|||
|**Supervisor contrato 078-2023**|stakeholder|||


``Generated on: Thu Sep 28 2023 12:49:24 GMT-0500 (COT)``

## Requerimientos de Administración
1.	Las soluciones deben permitir la administración de los Roles de Usuarios: esta funcionalidad debe permitir configurar los diferentes roles de los usuarios funcionales de los procesos. 
2.	Administrar los Perfiles de acceso por rol: Esta funcionalidad permitirá configurar a que funcionalidades u opciones de la solución puede entrar un usuario con un rol específico. 
Administrar los Usuarios de la Solución: Esta funcionalidad debe permitir configurar, activar, desactivar usuarios de las soluciones desarrolladas.
4.	Para los casos que aplique se debe asociar el desarrollo con el mecanismo de Firmas (digital, electrónica o mecánica): Esta funcionalidad debe permitir configurar los usuarios que tienen permitida la aprobación de documentos desde la solución implementada, a través del tipo de firma que corresponda. 
5.	Administrar los Permisos de acceso: Esta funcionalidad permite definir específicamente a que servicios de la solución puede ingresar un usuario (CRUD). 
6.	En los desarrollos se debe contar con un módulo de auditoría que permita generar consultas para conocer quién y cuándo se ha realizado una actuación determinada dentro de procesos críticos, almacenando el código del usuario la actuación, la acción, la fecha, la hora, y la dirección IP de la máquina. 
7.	Las soluciones deben permitir la configuración de permisos de consulta con diferentes alcances para cada tipo de usuario. 
8.	Desde la interfaz de usuario se debe poder crear, modificar o inactivar usuarios, perfiles o roles, permisos a las diferentes funcionalidades de la solución. 
9.	Las soluciones deben permitir la definición de varios tipos de usuario. 
10.	Las soluciones deben permitir la parametrización de los consecutivos que maneja la entidad para los diferentes documentos generados por las soluciones. 
11.	Debe permitir parametrizar la vinculación del consecutivo a un documento en forma manual o automática. 
12.	Las soluciones deben permitir que se configure la autenticación de forma interna integrándose con LDAP el acceso de los usuarios y actores de las diferentes dependencias de la entidad que interactúen con los demás sistemas. 

<br>


## Requerimientos de Seguridad
1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. 
1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución. 
1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas. 
1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse. 
1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. 
1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación). 
1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos). 
1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella. 
1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad. 
1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones. 
1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. 
1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. 
1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet). 
1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad. 
1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad. 
1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. 
1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. 
1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta. 
1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. 
1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet”. 

<br>


---
title: Documento de Arquitectura Migración Funcional PGN SIU
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SIU
geometry:
  - top=1in
  - bottom=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
...

<div style="page-break-before: always;"></div>
\newpage

<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.9a07ee5 de 05 Oct 2023

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 05 Oct 2023


<div style="page-break-before: always;"></div>
\newpage

# Descripción de Infraestructura Migración SUI PGN

## Objetivo del Documento
Descripción de los productos del trabajo de infraestructura del proyecto Migración SUI, Fase 2, de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición física de las ítems de hardware, redes y cómputo (procesamiento, comunicación y almacenamiento) del sistema SUI Migración. Por tanto, el documento contiene información estratégica para la toma de decisiones de plataforma y servicios de infraestructura, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SIU      |
|----------------|----------------------------|
| Palabras clave | SIU, Softgic, PGN, Análisis de brecha, GAP, Infraestrctura, PasS |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.9a07ee5 del 05 Oct 2023 |
| Vínculos       | [N003a Vista Segmento PGN SIU](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage



# Documento de Arquitectura Infraestructura SUI PGN
* [Descripción de Infraestructura Migración SUI PGN](#descripción-de-infraestructura-migración-sui-pgn)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Lineabase.0.SIU applicación. física](#lineabase.0.siu-applicación.-física)
	* [Seguridad. Lineabase.0.SIU applicación](#seguridad.-lineabase.0.siu-applicación)

<div style="page-break-before: always;"></div>
\newpage

# Descripción de Infraestructura Migración SUI PGN
## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component||*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface||*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service|||
|**Doku (gest. doc.)**|application-service|||
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service|||
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**Servidor BDD App**|node|||
|**Servidor BDD Config**|node|||
|**Servidor Lappiz **|node|||
|**Servidor Web App**|node|||
|**Servidor Web Canales**|node|Nombre físico<br>IP LAN<br>IP Pública<br>||

## Lineabase.0.SIU applicación. física
![Diagram: Lineabase.0.SIU applicación. física](images/Lineabase.0.SIUapplicación.física.png){#fig:Lineabase.0.SIUapplicación.física width=}

## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración




### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|||
|**Servidor BDD Config**|node|||
|**Servidor Lappiz **|node|||
|**Servidor Web App**|node|||
|**Servidor Web Canales**|node|Nombre físico<br>IP LAN<br>IP Pública<br>||
|**www pgn com**|technology-interface|||

## Seguridad. Lineabase.0.SIU applicación
![Diagram: Seguridad. Lineabase.0.SIU applicación](images/Seguridad.Lineabase.0.SIUapplicación.png){#fig:Seguridad.Lineabase.0.SIUapplicación width=}

## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración




### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component||*plataforma:* angular 11<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**FW BD.**|node|||
|**Network Firewall/WAF**|node|||
|**Servidor BDD App**|node|||
|**Servidor BDD Config**|node|||
|**Servidor Lappiz **|node|||
|**Servidor Web App**|node|||
|**Servidor Web Canales**|node|Nombre físico<br>IP LAN<br>IP Pública<br>||
|**Sistema de Seguridad (LDAP) 1**|node|Sistema de Seguridad (LDAP) 1. Control de acceso internet<br>||
|**Sistema de Seguridad (LDAP) 2**|node|Sistema de Seguridad (LDAP) 2. Control de acceso a datos||
|**Analizador de acceso a la red. SIEM- EDR**|resource|||
|**www pgn com**|technology-interface|||
|**Asignación de Tokens**|value-stream|||
|**HTTPS, TLS, SSL**|value-stream|||
|**Requiere 2 MFA**|value-stream|||
|**Uso de claves criptograficas.**|value-stream|||
|**Uso de claves criptograficas. (copy)**|value-stream|||


``Generated on: Wed Sep 13 2023 17:07:58 GMT-0500 (COT)``

---
title: Documento de Arquitectura Migración Funcional PGN SIU
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SIU
geometry:
  - top=1in
  - bottom=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
...

<div style="page-break-before: always;"></div>
\newpage

<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.9a07ee5 de 05 Oct 2023

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 05 Oct 2023


<div style="page-break-before: always;"></div>
\newpage

# Documento de Descripción de Entidades de Datos. Migración SUI PGN

## Objetivo del Documento
Descripción de los productos de trabajo de la arquitectura de datos del proyecto Migración SUI, Fase 2, de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las componentes de datos relevantes a la arquitectura del sistema SUI Migración. Por tanto, el documento contiene información estratégica para la toma de decisiones en cuanto al transporte, organización y mantenimiento de los entidades de datos de negocio, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SIU      |
|----------------|----------------------------|
| Palabras clave | SIU, Softgic, PGN, Análisis de brecha, GAP, Entidades, Datos  |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.9a07ee5 del 05 Oct 2023 |
| Vínculos       | [N003a Vista Segmento PGN SIU](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage




# Documento de Arquitectura Datos SUI
* [Descripción de Entidades de Datos Migración SUI PGN](#descripción-de-entidades-de-datos-migración-sui-pgn)
	* [Migracion.2. datos](#migracion.2.-datos)
	* [Migracion.2a. datos Hominis](#migracion.2a.-datos-hominis)
	* [Migracion.2c. datos Control interno](#migracion.2c.-datos-control-interno)
	* [Migracion.2d. datos SIRI](#migracion.2d.-datos-siri)
	* [Migracion.2b. datos SIM](#migracion.2b.-datos-sim)

<div style="page-break-before: always;"></div>
\newpage

# Descripción de Entidades de Datos Migración SUI PGN
## Migracion.2. datos
![Diagram: Migracion.2. datos](images/Migracion.2.datos.png){#fig:Migracion.2.datos width=5.32in}

Modelo de acceso y procesamiento a datos de negocio del SUI. Presentamos la organización de los ítems de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlos de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (por principio de extensión y mantenibilidad). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: el bus de datos del SUI.

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (misional)**|application-collaboration|||
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP2.SIRI**|application-component|||
|**APP3.Control interno**|application-component|||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP5.SIM**|application-component|||
|**APP6.Estratego**|application-component|||
|**Interfaz de Acceso Proveedores**|application-interface|Interfaz de acceso a los tipos de datos externos al SUI.<br>||
|**Interfaz de Almacenaniento**|application-interface|Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del SUI.<br>||
|**Procesamiento batch PGN**|application-process|Los procesos de lotes, que requieren volumenes de datos altos, deben hacer parte de la arquitectura de datos del SUI.<br>||
|**Bus de datos**|application-service|El patrón de bus de datos tiene el rol de unir y referir a los datos externos al SUI de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Datos externos**|data-object|||
|**Datos históricos**|data-object|||
|**Datos transaccionales**|data-object|||

## Migracion.2a. datos Hominis
![Diagram: Migracion.2a. datos Hominis](images/Migracion.2a.datosHominis.png){#fig:Migracion.2a.datosHominis width=5.32in}

Identificación de entidades de datos de negocio relacionadas al módulo de gestión de capital del SUI, Hominis.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**DAT.Cargo**|business-object|||
|**DAT.Código Actuación**|business-object|||
|**DAT.Código Jurisdicción**|business-object|||
|**DAT.Código Regional**|business-object|||
|**DAT.Código SNIES**|business-object|||
|**DAT.Código dependencia superior**|business-object|||
|**DAT.Código regional**|business-object|||
|**DAT.Decreto de la creación**|business-object|||
|**DAT.Diciplina Area**|business-object|||
|**DAT.Encargo del cargo**|business-object|||
|**DAT.Ley vigente**|business-object|||
|**DAT.Materia**|business-object|||
|**DAT.Nivel**|business-object|||
|**DAT.Nombre Actuación**|business-object|||
|**DAT.Nombre Jurisdicción**|business-object|||
|**DAT.Nombre Regional**|business-object|||
|**DAT.Nombre dependencia superior**|business-object|||
|**DAT.Tipo de inscripcion**|business-object|||
|**DAT.Vinculación**|business-object|||

## Migracion.2c. datos Control interno
![Diagram: Migracion.2c. datos Control interno](images/Migracion.2c.datosControlinterno.png){#fig:Migracion.2c.datosControlinterno width=}

Identificación de entidades de datos de negocio relacionadas al módulo de seguimiento del desempeño de la PGN del SUI, Control Interno.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP3.Control interno**|application-component|||
|**DAT.Dependencia**|business-object|||
|**DAT.Funcionario**|business-object|||
|**DAT.Proceso**|business-object|||
|**DAT.Tipo de proceso**|business-object|||

## Migracion.2d. datos SIRI
![Diagram: Migracion.2d. datos SIRI](images/Migracion.2d.datosSIRI.png){#fig:Migracion.2d.datosSIRI width=}

Identificación de entidades de datos de negocio relacionadas al módulo del SUI, SIRI.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP2.SIRI**|application-component|||
|**DAT.Entidad**|business-object|||

## Migracion.2b. datos SIM
![Diagram: Migracion.2b. datos SIM](images/Migracion.2b.datosSIM.png){#fig:Migracion.2b.datosSIM width=}

Identificación de entidades de datos de negocio relacionadas al módulo de SUI, SIM.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP5.SIM**|application-component|||
|**DAT.Corregimiento**|business-object|||
|**DAT.Departamento**|business-object|||
|**DAT.Municipio**|business-object|||
|**DAT.País**|business-object|||


``Generated on: Wed Sep 13 2023 12:45:59 GMT-0500 (COT)``

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



