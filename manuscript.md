---
keywords:
- SOA
- madurez
- gobierno
- Coomeva
lang: en-US
date-meta: '2023-11-23'
author-meta:
- Equipo arquitectura STEF-COOMV.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-11-23" />
  <meta name="citation_publication_date" content="2023-11-23" />
  <meta property="article:published_time" content="2023-11-23" />
  <meta name="dc.modified" content="2023-11-23T02:39:08+00:00" />
  <meta property="article:modified_time" content="2023-11-23T02:39:08+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Equipo arquitectura STEF-COOMV." />
  <meta name="citation_author_institution" content="Arquitecto, Stefanini" />
  <link rel="canonical" href="https://hwong23.github.io/stef-arqcomv/" />
  <meta property="og:url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta property="twitter:url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta name="citation_fulltext_html_url" content="https://hwong23.github.io/stef-arqcomv/" />
  <meta name="citation_pdf_url" content="https://hwong23.github.io/stef-arqcomv/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://hwong23.github.io/stef-arqcomv/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/stef-arqcomv/v/cae7d1c0b1419d80418ae69799b5d1876d4891aa/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/cae7d1c0b1419d80418ae69799b5d1876d4891aa/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/cae7d1c0b1419d80418ae69799b5d1876d4891aa/manuscript.pdf" />
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
title: Documento de Arquitectura Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva, STEF - Coomeva
subtitle: Mi Mutual Coomeva - Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva
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

| **Versión** del producto 1.cae7d1c de 23 Nov 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 23 Nov 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, MiMutual - Modificación Core Unidad de Solidaridad y Seguros, Contrato XXX-2023, 
([Web](https://hwong23.github.io/stef-arqcomv/v/cae7d1c0b1419d80418ae69799b5d1876d4891aa/))
están basados en el resultado del proyecto Coomeva Mi Mutual en curso.
[Sharepoint STEF@cae7d1c](http://stefanini.sharepoint.com)
del November 23, 2023.
</em></small>





<br>

## Autores



+ **Equipo arquitectura STEF-COOMV.**
  <br>
    · ![Usuario](images/github.svg){.inline_icon width=16 height=16}
    [e_hwong](https://github.com/e_hwong)
    <br>
  <small>
     Arquitecto, Stefanini
  </small>


::: {#correspondence}
✉ — Enviar mensajes a Equipo arquitectura STEF-COOMV. \<e_hwong@stefanini.com\>.


:::

<br>



## Objetivo del Documento
Descripción de los productos del trabajo de arquitectura del proyecto MI MUTUAL de Coomeva, Contrato XXX-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, siendo en algunos casos el diseño detallado. Puntualmente, el documento refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

##  Control de Cambios {.page_break_before}
| Tema           | Mi Mutual Coomeva Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva      |
|----------------|----------------------------|
| Palabras clave | Mi Mutual, Stefanini, Coomeva, Servicio, Componente, Brecha, GAP, Comparativa |
| Autor          |                            |
| Fuente         |                            |
| **Versión**    |                            |
| 1.cae7d1c | 2023-11-22. migracion |
| 1.9d25185 | 2023-11-22. migración4 |
| 1.85ecd04 | 2023-11-22. migración2 |
| 1.84a7d85 | 2023-11-22. migración |
| 1.f0a4f72 | 2023-11-22. modelo negocio |
| 1.efedd6a | 2023-11-22. modelo negocio |
| 1.ff9e742 | 2023-11-22. abstrc |
| 1.07c4190 | 2023-11-21. abstrc |
| 1.e0bde5c | 2023-11-07. purg |
| 1.48030a3 | 2023-11-07. variables |
| Vínculos       | [N003a Vista Segmento Coomeva SIU](N03a%a20Vsta%20aSegenta%20SOA%20Coomeva.md) |

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
Este documento tiene como propósito presentar la arquitectura del aplicativo Mi Mutual para STEF - Coomeva. según los requerimientos definidos durante la etapa de preventa y luego detallados en las historias de usuario.

La arquitectura será una guía para que el diseño y la implementación de los componentes que conforman la solución sean cobijados bajo lineamientos y premisas bien definidos, permitiendo a los elementos del sistema interactuar entre sí de forma coherente. La arquitectura será tomada como un diseño estratégico que establece restricciones globales para el diseño, define un marco inicial de trabajo para la implementación de los requerimientos funcionales y no funcionales.

La definición arquitectónica de este proyecto será un proceso evolutivo. Por tanto, la información de este documento es susceptible a cambios a medida que se vayan agregando nuevas funcionalidades o requisitos al sistema.

Uno de los principales propósitos de este documento es hacer una representación de las decisiones de disposición lógica y física de las partes del sistema; por tanto, es un diseño estratégico, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

 <div style="page-break-before: always;"></div>
\newpage



# Restricciones Principales de Arquitectura
Informamos de las restricciones que hacen parte de Mi Mutual, y por tanto, a considerar en el ejercicio de arquitectura del presente proyecto.

Lista de restricciones de Mi Mutual, 2023.

1. Disponibilidad. Se requiere que el sistema esté disponible 7x24, el servicio prestado al cliente no se limita a horarios de oficina pues las compras pueden darse en cualquier momento
1. Escalabilidad. Se requiere que el sistema pueda llegar a atender hasta 1.000 clientes, para esto se requiere que el sistema se pueda extender horizontalmente de tal manera que pueda tener instalado en varios servidores para atender esta cantidad de usuarios. Todas las aplicaciones desarrolladas podrán ser escaladas horizontalmente para atender la demanda relacionada con el crecimiento de la empresa.
1. Reutilización. Se requiere que el sistema permita reutilizar sus componentes para prestar el mismo servicio a otras aplicaciones de la compañía. Para esto se va a desarrollar la aplicación utilizando servicios, separados y con asignación de responsabilidades, propias, de tal manera de que, si se requiere exponer servicios web sobre estas funcionalidades, no requiere cambios en la aplicación.
1. Autenticación. Autenticación es el proceso para determinar que alguien o un sistema es quien dice ser. Uso de estándar Oauth2 y JSON Web Token – JWT, para gestión de autenticación de servicios de la aplicación.
1. Autorización. Autorización se refiere a la validación que realiza un sistema para determinar si un usuario puede usar cierta funcionalidad. Uso de API de seguridad de Spring (spring-security) + Oauth2
1. Interoperabilidad – Movilidad. Interoperabilidad se refiere a la habilidad de un sistema de interactuar y comunicarse con sistemas heterogéneos a través de interfaces completamente definidas. Uso de estándar de web services REST + JSON.
1. Facilidad de Uso. Se refiere a la facilidad con que las personas pueden utilizar el sistema porque facilitan la lectura de los textos, descargan rápidamente la información y presentan funciones y menús sencillos, por lo que el usuario encuentra satisfechas sus consultas y cómodo su uso.
1. Verificación (QA). Es la capacidad del producto software que hace posible que el software modificado sea probado.
1. Estándares. Los estándares seleccionados por la solución de este proyecto, (Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva, están determinados por el uso de las plataformas específicas determinadas por la implementación (desarrollo del software).

<br>

## Restricciones Secundarias
Otras restricciones a detallar.

1. Repositorio de datos.
1. Memoria, disco, CPU.
1. Requerimientos de rendimiento.

<br>


# Requisitos de Arquitectura (no funcional)
Entendemos como requisitos de arquitectura aquellos requerimientos no visibles pero estructurales, medibles, y que impactan al funcionamiento, desarrollo y mantenimiento de la solución Mi Mutual, objeto de este proyecto, Mi Mutual Coomeva.
 
Definiremos estos requisitos de la solución a tener en cuenta al momento del desarrollo.

## Requerimientos generales
1. **Parametrización**. Crear desarrollos parametrizables necesarios para permitir la administración de la información de uso general.
1. **Interoperabilidad**. Crear desarrollos de Mi Mutual interoperables con otros sistemas de información de la entidad según requerimientos de los procesos.
1. **Diseño**. Los desarrollos complementarios deben responder a los criterios de bajo acoplamiento y alta cohesión.
1. **Reglas de negocio**. Las soluciones deben disponer de todas las validaciones y controles que garanticen la calidad, seguridad y unicidad de la información.
1. Para los casos que aplique, la solución debe contar con una integración con el servicio de correo de la Entidad.
1. Todos los desarrollos complementarios serán en su totalidad propiedad de la entidad, para lo cual la entidad podrá modificar y/o actualizar a futuro los procesos modelados, acorde a las necesidades; por tanto, deberán entregarse los derechos intelectuales y patrimoniales como parte de la documentación y el código fuente que corresponda.

<div style="page-break-before: always;"></div>
\newpage


## Requisitos Particulares de Arquitectura (no funcional) 

### Consistencia Mi Mutual (lógica)

| Requisito      | Extensibilidad Mi Mutual |
|----------------|--------------------|
| Descripción | Unifica las entidades de negocio Coomeva, entre las que se incluyen a Cotización, Venta, Vinculación, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del Mi Mutual, estarán concentradas en un único artefacto correspondiente. |
| Calidad sistémica | La consistencia persigue que el resultado de la lógica de negocio de las entidades de Mi Mutual sea la misma entre los módulos del Mi Mutual. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |

Table: Requisito no. 1, Desarrollo Mi Mutual, Consistencia. {#tbl:requisito1-id}

<br>

### Mantenibilidad Mi Mutual

| Requisito      | Mantenibilidad Mi Mutual |
|----------------|--------------------|
| Descripción | Evitar las dependencias transitivas de los módulos misionales del Mi Mutual a componentes y sistemas de terceros o submódulos no misionales.  |
| Calidad sistémica | La mantenibilidad por control de dependencias que optimiza el diseño Desarrollo Mi Mutual está dada por el control de cambios no programados sobre los componentes misionales del Mi Mutual (corrupción de componentes). Ver Patrón de Diseño Desarrollo Mi Mutual, más adelante en el documento. |

Table: Requisito no. 2, Mantenibilidad Mi Mutual. {#tbl:requisito2-id}

<br>

### Extensibilidad Mi Mutual

| Requisito      | Extensibilidad Mi Mutual |
|----------------|--------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del Mi Mutual protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Desarrollo Mi Mutual, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Desarrollo Mi Mutual está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Requisito no. 3, Desarrollo Mi Mutual, Flexibilidad. {#tbl:requisito3-id}

<div style="page-break-before: always;"></div>
\newpage


# Doc. 4. Vistas de Arquitectura Cotizador. Manua
* [Análisis de Tecnologías Mi Mutual. Acciones de Migración](#análisis-de-tecnologías-mi-mutual.-acciones-de-migración)
	* [MiMutual. 5.a1. Físico. Tecnologías](#mimutual.-5.a1.-físico.-tecnologías)
	* [Arquitectura. 4. Tecnologías. Hoja Ruta](#arquitectura.-4.-tecnologías.-hoja-ruta)


<div style="page-break-before: always;"></div>
\newpage

# Análisis de Tecnologías Mi Mutual. Acciones de Migración
## MiMutual. 5.a1. Físico. Tecnologías
![Vista. MiMutual. 5.a1. Físico. Tecnologías](images/MiMutual.5.a1.Físico.Tecnologías.png){#fig:MiMutual.5.a1.Físico.Tecnologías width=}

Análisis de estado de tecnologías Mi Mutual, 2023. Listado de las tecnologías actuales de Mi Mutual. Coomeva, 2023. Especificaciones de tecnologías e ítems de arquitectura asociados al estado actual de la tecnología.

## Especificaciones de Despliegue Mi Mutual, 2023, Componente Central

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot 2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring Boot
* Tecnologías para el frontend Mi Mutual Central: Angular 9
* Tecnologías para el frontend Cotizador Web: Angular 14
* Entorno de ejecución Javascript: nodejs 10.x
* Entorno de ejecución Javascript: nodejs 14.2.0
* Motor de ejecución Javascript: TypeScript, versión 3.x
* Librería de Estilos Bootstrap 4.x
* Servidor web (HTTP 1.1): Apache 2.x
* Servidor BPM, Flowable, versión 6.5.0 con JRE 8
* Spring Cloud, versión Greenwich SR2
* Querydsl, version 4.2.1
* Bases de datos IBM DB2, AS400

<br>

## Resultados del Análisis

En el diagrama: color azul del diagrama las tecnologías en riesgo de soporte (LTS) fabricante; en color verde, las tecnologías que podrían sustituirse por economía de costos y modernización de entregas.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Flujo Trabajo: flowable**|application-component|Contiene todas las funcionalidades relacionadas con el motor de BPM Flowable, como gestión de tareas, instancias de nuevas procesos y asignación de tareas.<br>|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**Integración**|application-component|Contiene todas las funcionalidades relacionadas con integraciones a otros servicios y otras bases de datos.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**Spring Boot 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Data 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**TypeScript 3.x**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>*modulo:* mimutual<br>|
|**IBM DB2 iSerie**|node||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>*brecha:* 60<br>|
|**BPM: JRE**|system-software|Entorno de ejecución BPM. <br>* java.version: 1.8<br>* flowable.version: 6.5.0<br>* spring-cloud.version: Greenwich.SR2<br>* querydsl.version: 4.2.1<br><br><br>|*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>*brecha:* 30<br>|
|**DDSEGUROS**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Directorio: eureka: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**ESB/WS**|system-software|* java.version: 1.8<br>* spring-cloud.version: Greenwich.SR2<br><br><br>|*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Entorno Angular: ng 9.0.x**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**Entorno Java: JRE 1.8**|system-software||*brecha:* 30<br>*:* <br>|
|**Gateway: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Identidad: spring cloud security**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**MiMutual DB**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**SIPASDB**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Secuencias: zipking: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**mimutual Entorno JS: node 10.x**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**mimutual Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

<br>

## Arquitectura. 4. Tecnologías. Hoja Ruta
![Vista. Arquitectura. 4. Tecnologías. Hoja Ruta](images/Arquitectura.4.Tecnologías.HojaRuta.png){#fig:Arquitectura.4.Tecnologías.HojaRuta width=}

## Introducción 
Los ítems de arquitectura impactados por el análisis de estado de tecnologías Mi Mutual, 2023 deben ser migrados (actualizados) mediante trabajos de estabilización de arquitectura con el fin de evitar principalmente los riesgos de soporte y actualización del fabricante. 

En el siguiente tema presentamos una hoja de ruta propuesta y la estimación del plazo de ejecución de la migración del componente central Mi Mutual, Java 8. 

## Hoja de Ruta de Arquitectura Requerida por la Actualización 
La hoja de ruta resultante plantea dos espacios de trabajo, cada uno con su alcance específico, respecto de la actualización tecnológica de Mi Mutual basado en los términos de análisis de estado de tecnologías Mi Mutual presentado antes. Los espacios de trabajo requeridos, Migración Entorno Java: JDK/JRE 8 a 11 y Migración Entorno Angular compatible Java 11, como se muestran en la imagen impactan y generan a su vez versiones nuevas de la arquitectura Mi Mutual, versión 1.1 y 1.2, respectivamente. 

La versión 1.1 de la arquitectura, resultado del espacio de trabajo no. 1, Migración Entorno Java: JDK/JRE 8 a 11 toma (aprox.) 5 semanas de trabajo, en razón de los ítems de arquitectura acotados en su alcance denotado por el primer recuadro celeste en la imagen. 

La versión 1.2 de la arquitectura, resultado del trabajo no. 2, Migración Entorno Angular compatible Java 11, toma por su parte 4 semanas en razón de los ítems de arquitectura acotados en su alcance presentado en el segundo recuadro celeste. 


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**Spring Boot 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Boot compatible Java 11**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Data 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Data compatible Java 11**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**TypeScript 3.x**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>*modulo:* mimutual<br>|
|**TypeScript > 3**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>*modulo:* mimutual<br>|
|**Versión actual arquitectura Mi Mutual, 1.0**|grouping|||
|**Versión arquitectura Mi Mutual, 1.1**|grouping|||
|**Versión arquitectura Mi Mutual, 1.2**|grouping|||
|**Versión actual arquitectura Mi Mutual, 1.0**|plateau|||
|**Versión arquitectura Mi Mutual, 1.1**|plateau|||
|**Versión arquitectura Mi Mutual, 1.2**|plateau|||
|**Entorno Angular: ng 9.0.x**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**Entorno Angular: ng compatible Java 11**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**Entorno Java: JRE 1.8**|system-software||*brecha:* 30<br>*:* <br>|
|**Entorno Java: JRE 11**|system-software||*brecha:* 30<br>*:* <br>|
|**mimutual Entorno JS: node 10.x**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**mimutual Entorno JS: node compatible Java 11**|system-software||*modulo:* mimutual<br>*brecha:* 30<br>|
|**Migración Entorno Angular compatible Java 11**|work-package|### Actividades de la Migración a Angular 14<br>Nota Importante. La presente estimación es un concepto de alto nivel. La ejecución de los trabajos indicados por esta migración debe hacerse una fase de siete (7) días en las que concretará al detalle los cambios de la migración. <br>|                                                                                      | Estimación T. (hrs)  |<br>|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|<br>| Preparativos para la recompilación progresiva Angular 10...Angular 14                                                                                                                                   | 20                   |<br>| Diseño de pruebas de regresión                                                                                                                                                                          | 200                  |<br>| Creación de cadenas de integración, pruebas y despliegue                                                                                                                                                | 60                   |<br>| Plan de recompilación de la línea principal (main) de código fuente en Angular 14.x: módulos, paquetes, y clases base (dependencias)                                                                    | 200                  |<br>| Plan de recompilación de la línea principal (main) de código fuente en Angular 14.x: módulos, paquetes, y clases comunes (dependencias)                                                                 | 200                  |<br>| Plan de recompilación de la línea principal (main) de código fuente en Angular 14.x: módulos, paquetes, y clases de dominio (dependientes)                                                              | 480                  |<br>| Plan de actualización de librerías de desarrollo (Node 12, TypeScript 4.2), librerías de terceros, herramientas de desarrollo (IDE) y manejadores de proyecto Java (maven) y resolución de dependencias | 200                  |<br>| Plan de sustitución de librerías de desarrollo (opt-in, webpacks), librerías de terceros, herramientas de desarrollo (IDE) y manejadores de proyecto Java (maven) y resolución de dependencias          | 100                  |<br>| Elaboración de escenarios de certificación tecnológica/funcional                                                                                                                                        | 20                   |<br>### Plazo de Ejecución Estimado<br>La distribución del esfuerzo estimado arriba puede ejecutarse en un plazo de diez (10) meses con un equipo de tres recursos/desarrolladores, o de seis (6) meses con un equipo de seis recursos/desarrolladores. <br>La siguiente tabla resumen los plazos de ejecución según el tamaño de los equipos.<br>|                           | Equipo 1 (x3) | Equipo 2 (x4) | Equipo 3 (x6) |<br>|---------------------------|---------------|---------------|---------------|<br>| Estimación Total en meses | 10            | 9             | 6             |<br><br><br>**Nota Importante**. La presente estimación es un concepto de alto nivel. La ejecución de los trabajos indicados por esta migración debe hacerse una fase de siete (7) días en las que concretará al detalle los cambios de la migración.<br>||
|**Migración Entorno Java: JDK/JRE 8 a 11**|work-package|### Actividades de la Migración a JDK/JRE 11<br>Nota Importante. La presente estimación es un concepto de alto nivel. La ejecución de los trabajos indicados por esta migración debe hacerse una fase de siete (7) días en las que concretará al detalle los cambios de la migración. <br>|                                                                                                                                                               | Estimación T. (hrs) |<br>|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--|<br>| Preparativos para la recompilación OpenJDK 11.x: modularidad Java 11                                                                                                                       | 20   |<br>| Diseño de pruebas de regresión                                                                                                                                                             | 200  |<br>| Creación de cadenas de integración, pruebas y despliegue                                                                                                                                   | 60   |<br>| Plan de recompilación de la línea principal (main) de código fuente en OpenJDK 11.x: módulos, paquetes, y   clases base (dependencias)                                                     | 200  |<br>| Plan de recompilación de la línea principal (main) de código fuente en OpenJDK 11.x: módulos, paquetes, y   clases comunes (dependencias)                                                  | 200  |<br>| Plan de recompilación de la línea principal (main) de código fuente en OpenJDK 11.x: módulos, paquetes, y   clases de dominio (dependientes)                                               | 200  |<br>| Plan de actualización de librerías de desarrollo (Spring), librerías de terceros, herramientas de   desarrollo (IDE) y manejadores de proyecto Java (maven) y resolución de   dependencias | 200  |<br>| Plan de sustitución de librerías de desarrollo (JavaFX), librerías de terceros, herramientas de   desarrollo (IDE) y manejadores de proyecto Java (maven) y resolución de   dependencias   | 100  |<br>| Elaboración de escenarios de certificación tecnológica/funcional                                                                                                                           | 20   |<br>| Ejecución de planes de compilación / pruebas certificación                                                                                                                                 | 1440 |<br>| Evaluación de resultados / retroalimentación del plan/ nuevo plan de compilación                                                                                                           | 20   |<br>| Finalización de certificación migración tecnológica                                                                                                                                        | 20   |<br>| Integración líneas de código: Mi Mutual certificación y Mi Mutual desarrollo                                                                                                               | 720  |<br>### Plazo de Ejecución Estimado<br>La distribución del esfuerzo estimado arriba puede ejecutarse en un plazo de ocho (8) meses con un equipo de tres recursos/desarrolladores, o de cuatro (4) meses con un equipo de seis recursos/desarrolladores.<br>La siguiente tabla resumen los plazos de ejecución según el tamaño de los equipos.<br>|                           | Equipo 1 (x3) | Equipo 2 (x4) | Equipo 3 (x6) |<br>|---------------------------|---------------|---------------|---------------|<br>| Estimación Total en meses | 8             | 7             | 4             |<br><br><br>**Nota Importante**. La presente estimación es un concepto de alto nivel. La ejecución de los trabajos indicados por esta migración debe hacerse una fase de siete (7) días en las que concretará al detalle los cambios de la migración.<br>||

<br>


``Generated on: Wed Nov 22 2023 21:34:48 GMT-0500 (COT)``

# Requerimientos de Administración
1. Las soluciones deben permitir la administración de los Roles de Usuarios: esta funcionalidad debe permitir configurar los diferentes roles de los usuarios funcionales de los procesos. 
1. Administrar los Perfiles de acceso por rol: Esta funcionalidad permitirá configurar a que funcionalidades u opciones de la solución puede entrar un usuario con un rol específico. Administrar los Usuarios de la Solución: Esta funcionalidad debe permitir configurar, activar, desactivar usuarios de las soluciones desarrolladas.
1. Administrar los permisos de acceso: Esta funcionalidad permite definir específicamente a que servicios de la solución puede ingresar un usuario (CRUD). 
1. En los desarrollos se debe contar con un módulo de auditoría que permita generar consultas para conocer quién y cuándo se ha realizado una actuación determinada dentro de procesos críticos, almacenando el código del usuario la actuación, la acción, la fecha, la hora, y la dirección IP de la máquina. 
1. Las soluciones deben permitir la configuración de permisos de consulta con diferentes alcances para cada tipo de usuario. 
1. Desde la interfaz de usuario se debe poder crear, modificar o inactivar usuarios, perfiles o roles, permisos a las diferentes funcionalidades de la solución. 
1. Las soluciones deben permitir la definición de varios tipos de usuario. 
1. Las soluciones deben permitir la parametrización de los consecutivos que maneja la entidad para los diferentes documentos generados por las soluciones. 
1. Debe permitir parametrizar la vinculación del consecutivo a un documento en forma manual o automática. 
1. Las soluciones deben permitir que se configure la autenticación de forma interna integrándose con LDAP el acceso de los usuarios y actores de las diferentes dependencias de la entidad que interactúen con los demás sistemas. 

<br>


# Requerimientos de Seguridad
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


<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



