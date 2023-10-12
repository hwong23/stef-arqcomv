---
keywords:
- SOA
- madurez
- gobierno
- Coomeva
lang: en-US
date-meta: '2023-10-12'
author-meta:
- Equipo arquitectura STEF-COOMV.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-10-12" />
  <meta name="citation_publication_date" content="2023-10-12" />
  <meta property="article:published_time" content="2023-10-12" />
  <meta name="dc.modified" content="2023-10-12T16:12:10+00:00" />
  <meta property="article:modified_time" content="2023-10-12T16:12:10+00:00" />
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
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/stef-arqcomv/v/435c20edf97cc78e4ddcae62d29f2d90fbc173f8/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/435c20edf97cc78e4ddcae62d29f2d90fbc173f8/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/435c20edf97cc78e4ddcae62d29f2d90fbc173f8/manuscript.pdf" />
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

| **Versión** del producto 1.435c20e de 12 Oct 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 12 Oct 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, MiMutual - Modificación Core Unidad de Solidaridad y Seguros, Contrato XXX-2023, 
([Web](https://hwong23.github.io/stef-arqcomv/v/435c20edf97cc78e4ddcae62d29f2d90fbc173f8/))
están basados en el resultado del proyecto Coomeva Mi Mutual en curso.
[Sharepoint STEF@435c20e](http://stefanini.sharepoint.com)
del October 12, 2023.
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
Descripción de los productos del trabajo de arquitectura del proyecto MI MUTUAL de la Coomeva, Contrato XXX-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, siendo en algunos casos el diseño detallado. Puntualmente, el documento refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

##  Control de Cambios {.page_break_before}
| Tema           | Mi Mutual Coomeva Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva      |
|----------------|----------------------------|
| Palabras clave | SIU, Stefanini, Coomeva, Análisis de brecha, GAP, Comparativa              |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.435c20e del 12 Oct 2023 |
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

La definición arquitectónica de este proyecto será un proceso evolutivo como tal. Este documento puede ser susceptible a cambios a medida que se vayan agregando nuevas funcionalidades o requisitos al sistema.

Uno de los principales propósitos de este documento es hacer una representación de las decisiones de disposición lógica y física de las partes del sistema; por tanto, es un diseño estratégico, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

 <div style="page-break-before: always;"></div>
\newpage



# Restricciones Principales de Arquitectura
Informamos de las restricciones que hacen parte de Mi Mutual, y por tanto, a considerar en el ejercicio de arquitectura del presente proyecto.

Lista de restricciones de Mi Mutual, 2023.

1. Disponibilidad. Se requiere que el sistema esté disponible 7 X 24, el servicio prestado al cliente no se limita a horarios de oficina pues las compras pueden darse en cualquier momento
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
Entendemos como requisitos de arquitectura aquellos requerimientos no visibles pero estructurales, medibles, y que impactan al funcionamiento, desarrollo y mantenimiento de la solución migración Mi Mutual, objeto de este proyecto, Mi Mutual Coomeva.
 
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
| Descripción | Unifica las entidades de negocio Coomeva, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del Mi Mutual, estarán concentradas en un único artefacto correspondiente. |
| Calidad sistémica | La consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del Mi Mutual migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |

Table: Requisito no. 1, Migración Mi Mutual, Consistencia. {#tbl:requisito1-id}

### Mantenibilidad Mi Mutual

| Requisito      | Mantenibilidad Mi Mutual |
|----------------|--------------------|
| Descripción | Evitar las dependencia transitivas de los módulos misionales del Mi Mutual a componentes y sistemas de terceros o submódulos no misionales.  |
| Calidad sistémica | La mantenibilidad por control de dependencias que optimiza el diseño Migración Mi Mutual está dada por el control de cambios no programados sobre los componentes misionales del Mi Mutual (corrupción de componentes). Ver Patrón de Diseño Migración Mi Mutual, más adelante en el documento. |

Table: Requisito no. 2, Mantenibilidad Mi Mutual. {#tbl:requisito2-id}

### Extensibilidad Mi Mutual

| Requisito      | Extensibilidad Mi Mutual |
|----------------|--------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del Mi Mutual protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración Mi Mutual, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración Mi Mutual está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Requisito no. 3, Migración Mi Mutual, Flexibilidad. {#tbl:requisito3-id}

<div style="page-break-before: always;"></div>
\newpage




<!--
Single-page HTML Export

Created with Archi (https://www.archimatetool.com) and the following jArchi script:
https://github.com/archi-contribs/jarchi-single-page-html-export

Copyright (c) 2020 Phillip Beauvoir & Jean-Baptiste Sarrodie - MIT License
-->
STEF-CMMV

## Arq Mi Mutual. 1. Contexto

Mi Mutual. Coomeva, 2023.

Contexto Mi Mutual: Áreas negocio, componente central Mi Mutual, servicios y funciones.

versión 0.1


Spring Boot Security y Spring Boot Oauth2 proveen características de seguridad entre Vista (Angular 2) y Controlador. Estas son responsables de que únicamente permita el acceso si se está autenticado. Además, para realizar el proceso de autenticación se delega a la aplicación SISPRO (Coomeva) que funciona como un servidor de autenticación.
![Arq Mi Mutual. 1. Contexto](images/ArqMiMutual.1.Contexto.png){#fig:id-id-919c1deee57b4c78a03abff98e0db161 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Administración facturación y recaudo | Application Function | Administración de la facturación y recaudo diario de los productos<br> |  |
| Autorizaciones | Application Function | Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones mediante el servicio del flujo de procesos |  |
| Autorizaciones | Application Service | Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos. |  |
| Características Funcionales | Requirement | ## Características Funcionales Mi Mutual<br><br>1. Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br>1. Administración de la facturación y recaudo diario de los productos<br>1. Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br>1. Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>1. Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>1. Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br>1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br> |  |
| Certificados | Application Function | Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.<br> |  |
| Certificados | Application Service | Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario. |  |
| Configuración | Application Service | Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos. |  |
| Configuración factores cálculos, contribuciones | Application Function | 1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br> |  |
| Facturación y Recaudo | Application Service | Administración de la facturación y recaudo diario de los productos |  |
| Gestión Beneficiarios | Application Function | Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br> |  |
| Gestión Reclamaciones | Application Function | Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br> |  |
| Gestión Usuarios | Application Function | Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br> |  |
| Gestión de Beneficiarios | Application Service | Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación
<br> |  |
| Gestión de Productos | Application Service | Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado. |  |
| Gestión de Reclamos | Application Service | Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado |  |
| Gestión de Usuarios | Application Service | Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema. |  |
| Gestión fondo mutual y auxilio funerario | Application Function | Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br> |  |
| Interoperabilidad entre sistemas Coomeva | Application Function | Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br> |  |
| Restricciones de Arquitectura | Constraint | ## Restricciones de Arquitectura (Atributos)<br><br>1. Disponibilidad. Se requiere que el sistema esté disponible 7 X 24, el servicio prestado al cliente no se limita a horarios de oficina pues las compras pueden darse en cualquier momento<br>1. Escalabilidad. Se requiere que el sistema pueda llegar a atender hasta 1.000 clientes, para esto se requiere que el sistema se pueda extender horizontalmente de tal manera que pueda tener instalado en varios servidores para atender esta cantidad de usuarios. Todas las aplicaciones desarrolladas podrán ser escaladas horizontalmente para atender la demanda relacionada con el crecimiento de la empresa.<br>1. Reutilización. Se requiere que el sistema permita reutilizar sus componentes para prestar el mismo servicio a otras aplicaciones de la compañía. Para esto se va a desarrollar la aplicación utilizando servicios, separados y con asignación de responsabilidades, propias, de tal manera de que, si se requiere exponer servicios web sobre estas funcionalidades, no requiere cambios en la aplicación.<br>1. Autenticación. Autenticación es el proceso para determinar que alguien o un sistema es quien dice ser. Uso de estándar Oauth2 y JSON Web Token – JWT, para gestión de autenticación de servicios de la aplicación.<br>1. Autorización. Autorización se refiere a la validación que realiza un sistema para determinar si un usuario puede usar cierta funcionalidad. Uso de API de seguridad de Spring (spring-security) + Oauth2<br>1. Interoperabilidad – Movilidad. Interoperabilidad se refiere a la habilidad de un sistema de interactuar y comunicarse con sistemas heterogéneos a través de interfaces completamente definidas. Uso de estándar de web services REST + JSON.<br>1. Facilidad de Uso. Se refiere a la facilidad con que las personas pueden utilizar el sistema porque facilitan la lectura de los textos, descargan rápidamente la información y presentan funciones y menús sencillos, por lo que el usuario encuentra satisfechas sus consultas y cómodo su uso.<br>1. Verificación (QA). Es la capacidad del producto software que hace posible que el software modificado sea probado.<br> |  |
| Seguridad | Application Function |  |  |
| Simuladores | Application Function | Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br> |  |
| Simuladores | Application Service | Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado. |  |
| Unidad de Solidaridad y Seguros | Business Function | Unidad de Solidaridad y Seguros de la Cooperativa |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.1.Contexto-id}


## Arq Mi Mutual. 2. Contenedores

Mi Mutual. Coomeva, 2023.

Estructura de componentes principales, Mi Mutual Central. Roles de componentes, separación responsabilidades.

versión 0.4.1


## Organización de Componentes Mi Mutual

La organización de componentes utilizada Mi Mutual, impulsada por Spring Web, antepone como interfaz de uso un API REST. La interfaz se articula con tres componentes utilitarios: Controller, Service y Repository, los cuales están mediados por el componente misional, Mi Mutual, en la imagen. 

Esta decisión de organización de los componentes de Mi Mutual, incluyendo al misional del mismo nomnbre, permite estructurar la aplicación de una manera ordenada y, en línea con las restricciones de arquitectura exigidas al sistema, facilita la efectividad de las extensiones y el mantenimiento.

![Arq Mi Mutual. 2. Contenedores](images/ArqMiMutual.2.Contenedores.png){#fig:id-id-5fe59b86833c4bf8a7be4069e0b798a8 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API Mi Mutual | Application Interface |  |  |
| Controlador Mi Mutual | Application Component | Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos. |  |
| Registro Servicios: eureka | Application Component | Eureka: Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.<br> |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| Ruteador (proxy): gateway | Application Component | Gateway: Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.<br> |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.2.Contenedores-id}


## Arq Mi Mutual. 3. Dominios

Mi Mutual. Coomeva, 2023.

Servicios trasversales Mi Mutual. Estado Actual.

versión 0.1


La división por dominios busca facilitar la administración los servicios de la plataforma Mi Mutual que son comunes entre aplicaciones de Mi Mutual, tales como Asociados, Reclamaciones, Protecciones y otros servicios trasversales como Utilidades, Reglas de negocio, Procesos de negocio (BPM), Auditoria, Flujos de trabajo:flowable.

![Arq Mi Mutual. 3. Dominios](images/ArqMiMutual.3.Dominios.png){#fig:id-id-dec3e8d41fed4da6b7bc317e01485518 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Flujo Trabajo: flowable | Application Component | Contiene todas las funcionalidades relacionadas con el motor de BPM Flowable, como gestión de tareas, instancias de nuevas procesos y asignación de tareas. |  |
| Integración | Application Component | Contiene todas las funcionalidades relacionadas con integraciones a otros servicios y otras bases de datos. |  |
| Procesos negocio | Application Component | Contiene todas las funcionalidades relacionadas con los flujos de JBPM, actualmente se hace solo para acceso a datos de la base de datos de JBPM. |  |
| Reglas negocio | Application Component | Contiene todas las funcionalidades relacionadas con la validación de reglas usadas en otros microservicios. |  |
| SISPRO | Application Component | Contiene todas las funcionalidades relacionadas con la autenticación y autorización al sistema Mi mutual (Este componente se adopta a la arquitectura de microservicios de MiMutual) |  |
| Utilidades | Application Component | Contiene todas las funcionalidades útiles y trasversales a los microservicios, como envió de correos, generación de archivos Excel, PDF desde Jasper y consulta de parámetros. |  |
| app: Asociados | Application Component | Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios. |  |
| app: Auditoria | Application Component | Contiene todas las funcionalidades relacionadas con el almacenamiento de la auditoria de las peticiones de la aplicación. |  |
| app: Eureka admin | Application Component | Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos. |  |
| app: Gateway | Application Component | Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios. |  |
| app: Identidades | Application Component | Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado). |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |
| app: Protecciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones. |  |
| app: Reclamaciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos. |  |
| app: Secuencias: zipkin | Application Component | Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.3.Dominios-id}


## Arq Mi Mutual. 4. Aplicación

Mi Mutual. Coomeva, 2023.

Organización de componentes de aplicación Mi Mutual. Estado Actual. Segmentos (1) frontal, (2) servicios, (3) central/negocio Mi Mutual, (4) infraestructura.

versión 0.3




![Arq Mi Mutual. 4. Aplicación](images/ArqMiMutual.4.Aplicación.png){#fig:id-id-27bcd4f7a1c2454295b001008ee42aaa width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Analistas | Business Role | Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes. |  |
| Asesores | Business Role | Asesores integrales |  |
| Autorizaciones | Application Service | Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos. |  |
| Auxiliares servicio | Business Role | Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes. |  |
| Certificados | Application Service | Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario. |  |
| Configuración | Application Service | Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos. |  |
| Controlador Mi Mutual | Application Component | Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos. |  |
| Facturación y Recaudo | Application Service | Administración de la facturación y recaudo diario de los productos |  |
| Fidelización | Business Role | Ejecutivos de Fidelización |  |
| Gestión de Beneficiarios | Application Service | Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación
<br> |  |
| Gestión de Productos | Application Service | Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado. |  |
| Gestión de Reclamos | Application Service | Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado |  |
| Gestión de Usuarios | Application Service | Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema. |  |
| Integración | Application Interface | Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados. |  |
| Mi Mutual Presentación | Application Component |  |  |
| Profundización | Business Role | Ejecutivos de Profundización |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| Servicio de Almacenamiento de Datos | Technology Service |  |  |
| Servicio de Red | Technology Service |  |  |
| Servicio de archivos | Technology Service |  |  |
| Simulador | Application Component |  |  |
| Simuladores | Application Service | Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado. |  |
| Unidad de Solidaridad y Seguros | Grouping | La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad) |  |
| Vinculación | Application Component |  |  |
| app: Cotización y Ventas | Application Component |  |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.4.Aplicación-id}


## Arq Mi Mutual. 4a1. Referencia

Mi Mutual. Coomeva, 2023.

Esquema de componentes Spring Boot

versión 0.1



![Arq Mi Mutual. 4a1. Referencia](images/ArqMiMutual.4a1.Referencia.png){#fig:id-id-ecda07ca4d5a48479f53c13bf96290c7 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Almacenamiento y Repositorio | Application Service |  |  |
| Api Rest | Application Function |  |  |
| Autenticación (filtro) | Application Function |  |  |
| BPMS | Application Service |  |  |
| BUC | Application Service |  |  |
| Cofiguración | Application Process |  |  |
| Componentes Spring Boot | Application Component |  |  |
| DDSEGUROS | Application Service |  |  |
| ESB/WS | Application Service |  |  |
| Nivel de Integración | Application Function |  |  |
| Nivel de Negocio | Application Service |  |  |
| Nivel de datos | Application Function |  |  |
| RULES | Application Service |  |  |
| Repositorio | Application Service |  |  |
| SIPASDB | Application Service |  |  |
| SISPRO | Application Service |  |  |
| Seguridad | Application Function |  |  |
| Service Agents | Application Function |  |  |
| Servicios | Application Process |  |  |
| Servicios Backend | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.4a1.Referencia-id}


## Arq Mi Mutual. 4a3. Dependencias

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Paquetes: dependencias, roles, implementación funciones de aplicación.

versión 0.1


## Paquetes y Dependencias Mi Mutual
La estructura está basada en spring boot y lenguaje de programación JAVA 8, conformada por componentes de aplicación y administración del ciclo de vida de los objetos.

Nombrado de paquetes para los servicios

* MiMutualWeb
* MiMutualProtecciones
* MiMutualReclamaciones 
* MiMutualAsociados
* MiMutualUtilidades
* MiMutualBPM
* MiMutualReglas
* MiMutualIntegraciones
* MiMutualAuditoria
* Mi&lt;utualFLowable
* MiMutualSpringCloud

&lt;br&gt;

## Entorno de Desarrollo
Para la etapa de desarrollo la aplicación estará configurada para levantar un servidor Tomcat embebido el cual se encuentra configurado el pom.xml y el cual permite trabajar de forma mucho más ágil.

Para el despliegue entre ambientes se manejará maven profiles con el fin de agregar las configuraciones de cada uno de estos.

El código fuente está alojado en un repositorio de Coomeva.

![Arq Mi Mutual. 4a3. Dependencias](images/ArqMiMutual.4a3.Dependencias.png){#fig:id-id-cd7711359fb64153aacc8f016b0e85e8 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |
| pkg: Config | Application Component | config: Almacenan todas las clases para la configuración del proyecto Spring. |  |
| pkg: Controller | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: DTO | Application Component | dto: Almacenan todas las clases (pojos) para manejo de datos. |  |
| pkg: Model | Application Component | model: Almacenan todas las clases (entities) que constituyen el modelo de datos.<br> |  |
| pkg: Reglas | Application Component | dto: Almacenan todas las clases (pojos) para manejo de datos. |  |
| pkg: Repository | Application Component | repository: Almacenan todas las interfaces y clases que constituyen el acceso a<br>datos.<br> |  |
| pkg: Security | Application Component | security: Almacenan todas las clases que permiten la configuración de seguridad de la aplicación.<br> |  |
| pkg: Service | Application Component | service: Almacenan todas las interfaces que constituyen la lógica de negocio. |  |
| pkg: Service Impl | Application Component | service.impl: Almacenan todas las clases que implementan la funcionalidad de las interfaces de service que constituyen la lógica de negocio. |  |
| pkg: Spring Cloud | Application Component | dto: Almacenan todas las clases (pojos) para manejo de datos. |  |
| pkg: Util | Application Component | util: Almacenan todas las clases de utilería para la aplicación. |  |
| pkg: Web | Application Component | dto: Almacenan todas las clases (pojos) para manejo de datos. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.4a3.Dependencias-id}


## Arq Mi Mutual. 5. Físico (despliegue)

Mi Mutual. Coomeva, 2023.

Distribución física Mi Mutual. Estado actual, 2023.

versión 0.4.4


Especificaciones de despliegue Mi Mutual, 2023, componente central.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring boot
* Tecnologías para el frontend: Angular 7
* Librería de Estilos: Bootstrap 4
* Servidor web (HTTP 1.1): Apache 2.X


![Arq Mi Mutual. 5. Físico (despliegue)](images/ArqMiMutual.5.Físico(despliegue).png){#fig:id-id-f12ffd7585e24d0da3e26ab9b25d0b9c width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Directorio: eureka: tomcat | System Software |  |  |
| Entorno Java: JRE 1.8 | System Software |  |  |
| Gateway: tomcat | System Software |  |  |
| Identidad: spring cloud security | System Software |  |  |
| Secuencias: zipking: tomcat | System Software |  |  |
| Servicios: tomcat | System Software |  |  |
| app: Asociados | Application Component | Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios. |  |
| app: Eureka admin | Application Component | Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos. |  |
| app: Gateway | Application Component | Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios. |  |
| app: Identidades | Application Component | Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado). |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |
| app: Protecciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones. |  |
| app: Reclamaciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos. |  |
| app: Secuencias: zipkin | Application Component | Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.5.Físico(despliegue)-id}


## Arq Mi Mutual. 6. Infraestructura

Mi Mutual. Coomeva, 2023.

Ambientes, Nodos (servidores), Elementos de red, Almacenamiento y equipos de hardware Mi Mutual. Estado Actual

versión 0.3



![Arq Mi Mutual. 6. Infraestructura](images/ArqMiMutual.6.Infraestructura.png){#fig:id-id-ee8757edbccd440eb43234279e7d1ff9 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| DB2 AS400: SIPASDB | System Software | Las bases de datos a utilizar son: <br>
<br>* DB2 AS400: SIPASDB
<br>* Sql Server (...)
<br>* Oracle (...)
<br><br> |  |
| Oracle DB: (...) | System Software | Las bases de datos a utilizar son: <br>
<br>* DB2 AS400: SIPASDB
<br>* Sql Server (...)
<br>* Oracle (...)
<br><br> |  |
| SQL Server: (...) | System Software | Las bases de datos a utilizar son: <br>
<br>* DB2 AS400: SIPASDB
<br>* SQL Server (...)
<br>* Oracle (...)
<br><br> |  |
| Servicio de Almacenamiento de Datos | Technology Service |  |  |
| Servicio de Red | Technology Service |  |  |
| Servicio de archivos | Technology Service |  |  |
| Spring cloud security | Node | Se implementará Spring Boot Security y Spring Boot Oauth2 las cuales proveen una capa básica de seguridad entre Vista (Angular 2) y Controlador, obligando a que únicamente permita el acceso si se está autenticado si lo requiere, además para realizar el proceso de autenticación se utilizara la aplicación SISPRO (Coomeva) la cual funciona como un servidor de autenticación.
<br>La validación de roles se realizará a nivel de peticiones en el api rest según corresponda, siempre y cuando sea necesario, también se tendrán en cuenta otras validaciones como:
<br>• Las credenciales que proporcionó no son válidas.
<br>• El usuario esta deshabilitado.
<br>• Las credenciales de usuario han caducado.
<br>• La cuenta de usuario ha caducado.
<br>• La cuenta de usuario está bloqueada. |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.6.Infraestructura-id}


## Arq Mi Mutual. 7. Datos. Negocio

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Entidades: Estructuras, objeto, relaciones con aplicación.

versión 0.1


## Entidades de Negocio Mi Mutual

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario

![Arq Mi Mutual. 7. Datos. Negocio](images/ArqMiMutual.7.Datos.Negocio.png){#fig:id-id-e4ae408c4a5b41a09e47e227c33d467d width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| DAT00.Asociado | Business Object |  |  |
| DAT00.Beneficiario | Business Object |  |  |
| DAT00.Canal (medios del tomador/asociado) | Business Object |  |  |
| DAT00.Configuración (caracterización) | Business Object | Caracterización de productos, planes, parámetros<br> |  |
| DAT00.Facturación | Business Object |  |  |
| DAT00.Parametros globales (catálogos) | Business Object |  |  |
| DAT00.Plan (producto pólizas seguros) | Business Object |  |  |
| DAT00.Portafolios de asociados | Business Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.7.Datos.Negocio-id}


## Arq Mi Mutual. 7a. Datos. Aplicación

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Físico. Entidades: Estructuras, objeto, relaciones con entidades.

versión 0.1


Modelo físico facilitadas por Coomeva, corte del 2 de mayo de 2022. Contiene las estructuras de configuración de fondo, cliente, planes, cobertura y planes de coberturas.



![Arq Mi Mutual. 7a. Datos. Aplicación](images/ArqMiMutual.7a.Datos.Aplicación.png){#fig:id-id-c4ed2d8934fd40eea1d71556b08da65e width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| DAT01.ADICIONAL PLAN COBERTURA | Data Object |  |  |
| DAT01.ASISTENCIA PLAN COBERTURA | Data Object |  |  |
| DAT01.ASISTENCIA PLAN COBERTURA DETALLE | Data Object |  |  |
| DAT01.BENEFICIARIO ASISTENCIA | Data Object |  |  |
| DAT01.BENEFICIO PREEXISTENCIA | Data Object |  |  |
| DAT01.CAMPANA RELACION PLAN COBERTURA | Data Object |  |  |
| DAT01.CANAL | Data Object |  |  |
| DAT01.CANAL EVENTO | Data Object |  |  |
| DAT01.CANAL VENTA EXCLUSION | Data Object |  |  |
| DAT01.CANAL VENTA EXCLUSION COBERTURA | Data Object |  |  |
| DAT01.CICLO FACTURACION CONFIG MOV | Data Object |  |  |
| DAT01.CLIENTE | Data Object |  |  |
| DAT01.COBERTURA | Data Object |  |  |
| DAT01.COBERTURA BENEFICIARIO COBERTURA | Data Object |  |  |
| DAT01.COBERTURA BENEFICIARIO PAGO | Data Object |  |  |
| DAT01.CONDICION PAGO ANTIGUEDAD | Data Object |  |  |
| DAT01.CONDICION PAGO EVENTO | Data Object |  |  |
| DAT01.CONDICION PLAN | Data Object |  |  |
| DAT01.CONDICION VENTA | Data Object |  |  |
| DAT01.CONDICIONES | Data Object |  |  |
| DAT01.CONFIGURACION DIAGNOSTICOS | Data Object |  |  |
| DAT01.CONFIGURACION MOV DETALLE | Data Object |  |  |
| DAT01.CONFIGURACION MOVIMIENTO | Data Object |  |  |
| DAT01.CONTROL ARE TECNICA | Data Object |  |  |
| DAT01.CONTROL CUMULO | Data Object |  |  |
| DAT01.CUMULO | Data Object |  |  |
| DAT01.CUMULOS COBERTURA | Data Object |  |  |
| DAT01.CUMULOS PLAN COBERTURA | Data Object |  |  |
| DAT01.DEDUCIBLE | Data Object |  |  |
| DAT01.DESMEMBRACION ACCIDENTE | Data Object |  |  |
| DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA | Data Object |  |  |
| DAT01.DOCUMENTO REQUISITO | Data Object |  |  |
| DAT01.DOCUMENTOS SOLICITUD EVENTO | Data Object |  |  |
| DAT01.ENFERMEDAD GRAVE | Data Object |  |  |
| DAT01.ENFERMEDAD GRAVE PLAN COBERTURA | Data Object |  |  |
| DAT01.ESTADO ASOCIADO | Data Object |  |  |
| DAT01.EVENTO COBERTURA | Data Object |  |  |
| DAT01.EXCLUSION | Data Object |  |  |
| DAT01.EXCLUSION COBERTURA | Data Object |  |  |
| DAT01.EXCLUSION PLAN COBERTURA | Data Object |  |  |
| DAT01.EXCLUSION PLAN COBERTURA DETALLE | Data Object |  |  |
| DAT01.FAC CONCEPTO PLAN | Data Object |  |  |
| DAT01.FONDO | Data Object |  |  |
| DAT01.FORMULA PLAN | Data Object |  |  |
| DAT01.GENERO REQUISITO | Data Object |  |  |
| DAT01.LIQUIDACION | Data Object |  |  |
| DAT01.LIQUIDACION DETALLE | Data Object |  |  |
| DAT01.NIVEL RIESGO COBERTURA | Data Object |  |  |
| DAT01.NIVEL RIESGO CONFIG MOV | Data Object |  |  |
| DAT01.NIVELES NOTAS PLAN COBERTURA | Data Object |  |  |
| DAT01.NOTA ACLARATORIA PLAN | Data Object |  |  |
| DAT01.NOTIFICACION EVENTO | Data Object |  |  |
| DAT01.ORIGEN COBERTURA COBERTURA | Data Object |  |  |
| DAT01.PERIODO CARENCIA | Data Object |  |  |
| DAT01.PERSONA | Data Object |  |  |
| DAT01.PLAN | Data Object |  |  |
| DAT01.PLAN CANAL VENTA | Data Object |  |  |
| DAT01.PLAN COBERTURA | Data Object |  |  |
| DAT01.PLAN COBERTURA DEPENDIENTE | Data Object |  |  |
| DAT01.PLAN COBERTURA EDAD | Data Object |  |  |
| DAT01.PLAN COBERTURA REQUISITO | Data Object |  |  |
| DAT01.PLAN FRECUENCIA FACTURACION | Data Object |  |  |
| DAT01.PLAN MEDIO FACTURACION | Data Object |  |  |
| DAT01.PLAN NIVEL RIESGO | Data Object |  |  |
| DAT01.PLAN OBLIGATORIO | Data Object |  |  |
| DAT01.PLAN PARENTESCO | Data Object |  |  |
| DAT01.PLAN PERSEVERANTE | Data Object |  |  |
| DAT01.PORCENTAJE CUOTA | Data Object |  |  |
| DAT01.PRODUCTO COBERTURA | Data Object |  |  |
| DAT01.PRODUCTO EXCLUYENTE | Data Object |  |  |
| DAT01.PROMOCION CANAL | Data Object |  |  |
| DAT01.PROMOCION CONDICION | Data Object |  |  |
| DAT01.PROMOCION PLAN COBERTURA | Data Object |  |  |
| DAT01.PROMOTOR CANAL | Data Object |  |  |
| DAT01.RECONOCIMIENTO POR PERMANENCIA | Data Object |  |  |
| DAT01.REGLAS EXCEPCIONES | Data Object |  |  |
| DAT01.REQUISITO CONTROL MEDICO | Data Object |  |  |
| DAT01.RESPONSABLE PERSONA | Data Object |  |  |
| DAT01.SOLICITUD EVENT | Data Object |  |  |
| DAT01.SOLICITUD EVENTO DETALLE | Data Object |  |  |
| DAT01.SUBLIMITE COBERTURA | Data Object |  |  |
| DAT01.SUBSISTENTE PLAN COBERTURA | Data Object |  |  |
| DAT01.SUBSISTENTE PLAN COBERTURA DETALLE | Data Object |  |  |
| DAT01.TIPO MOVIMIENTO | Data Object |  |  |
| DAT01.TIPO PROCESO CUMULO | Data Object |  |  |
| DAT01.TRANSACCION EXCLUSION | Data Object |  |  |
| DAT01.TRANSACCION EXCLUSION COBERTURA | Data Object |  |  |
| DAT01.TRANSACCION REQUISITO  | Data Object |  |  |
| DAT01.VALOR ASEGURADO | Data Object |  |  |
| DAT01.VALOR ASEGURADO PLAN COBERTURA | Data Object |  |  |
| DAT01.VALOR ASEGURADO TOPE | Data Object |  |  |
| DAT01.VALOR CUOTA PLAN COBERTURA | Data Object |  |  |
| DAT01.VALOR RESCATE | Data Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.7a.Datos.Aplicación-id}


## ArqCotizador. 1. Contexto

Mi Mutual. Coomeva, 2023.

Cotizador Web Mi Mutual. Contexto Mi Mutual: Áreas negocio, componente central Mi Mutual, servicios y funciones.

versión 0.1


## Módulos Mi Mutual Web
La estructura por módulos permite realizar aplicaciones escalables y robustas ya que permite organizar las partes de la aplicación, la organización en bloques, extender la aplicación con funcionalidades de libreras externas, proporcionar un entorno de resolución de plantillas y además permite especificar la forma de la carga de cada uno de los componentes y servicios que conforman un módulo.

## 3.2 Módulos Externos
Los módulos externos son todas y cada uno de las herramientas que se utilizan para complementar con funcionalidades ya desarrolladas y tomadas desde un repositorio externo (NPM).

* TranslateModule: Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core
* NgxMaskModule: Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask
* JwtModule: Manejo de token.
Documentación: https://github.com/auth0/angular2-jwt
* sweetalert2: Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/
* ngx-ui-loader: Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader
* Ngprime: Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/
* chart.js: componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/
* classlist.js: componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/
* cronstrue: componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue
* file-saver: componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme
* ngx-tinymce: Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/
* quill: componente para editor html Documentación: https://quilljs.com/

&lt;br&gt;

## Servicios Transversales 

* AuthGuard: Validación de existencia de autenticación
* DeaciveGuard: Validación de salida de un componente
* ErrorInterceptor: Interceptor de Errores del back
* JwtInterceptor: Interceptor para inyectar el token
* AutenticationService: Métodos para completar la autenticación
* TypesService: Consumo de servicios de parametrización
* IdleTimeoutService: Verificación de timeout del token

&lt;br&gt;

![ArqCotizador. 1. Contexto](images/ArqCotizador.1.Contexto.png){#fig:id-id-6c23b3a1025841cc9dc9c8385dd94f67 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API Mi Mutual | Application Interface |  |  |
| Aplicativo | Application Function |  |  |
| Autenticación: authgard | Application Service |  |  |
| Compartido | Application Function |  |  |
| Controlador Mi Mutual | Application Component | Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos. |  |
| Cotizador | Application Function |  |  |
| Interceptor: errorinterceptor | Application Service |  |  |
| Interfaz gráfica | Application Function |  |  |
| Parametrización: typeservice | Application Service |  |  |
| Sesión admin: idletimeout | Application Service |  |  |
| Util | Application Function | En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br><br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br><br> |  |
| admin Páginas | Application Function |  |  |
| admin Servicios | Application Function |  |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.1.Contexto-id}


## ArqCotizador. 2. Contenedores

Mi Mutual. Coomeva, 2023.

Estructura de componentes principales, Cotizador Web, Mi Mutual. Roles de componentes, separación responsabilidades.

versión 0.2



![ArqCotizador. 2. Contenedores](images/ArqCotizador.2.Contenedores.png){#fig:id-id-f2a4384798e643c1a7b24456c69f7a6d width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API Mi Mutual | Application Interface |  |  |
| HTTP / HTTPS | Application Interface |  |  |
| Repositorio web | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.2.Contenedores-id}


## ArqCotizador. 4a. Dependencias

Mi Mutual. Coomeva, 2023.

Mi Mutual Web. Paquetes: dependencias, roles, implementación funciones de aplicación.

versión 0.1


## Paquetes y Dependencias Cotizador Web
Módulos y componentes que hacen parte de la estructura de la aplicación Cotizador Web (basado en Angular 7 [^1]).

[^1]: Angular 2 tiene una arquitectura Modelo Vista Controlador (MVC) con el fin de hacer el desarrollo gestionado.

## Módulos
La estructura por módulos actual apunta a la escalabilidad y mantenimiento del Cotizador en términos de: organizar las partes de la aplicación, organización los bloques, extender la aplicación con libreras externas, proporcionar un entorno de resolución de plantillas y además, distribuir las cargas de los componentes y servicios que usa la aplicación.

![ArqCotizador. 4a. Dependencias](images/ArqCotizador.4a.Dependencias.png){#fig:id-id-3bc899b013be4bb0818e8856b07c2b50 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Aplicativo | Application Function |  |  |
| Compartido | Application Function |  |  |
| Cotizador | Application Function |  |  |
| Interfaz gráfica | Application Function |  |  |
| Util | Application Function | En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br><br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br><br> |  |
| admin Páginas | Application Function |  |  |
| admin Servicios | Application Function |  |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |
| pkg: admin | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: administración | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: asociados | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: auth | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cliente | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: clientes | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: componentes | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: config | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cotizaciones | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cotización | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: directivas | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: home | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: interfaces | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: modelos | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: multiactiva | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: protecciones | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: proveedores | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: reporte | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: reportes | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: transporte | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: util | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: utilidades | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.4a.Dependencias-id}


## ArqCotizador. 5. Físico (despliegue)

Mi Mutual. Coomeva, 2023.

Distribución física Cotizador Web, Mi Mutual. Estado actual, 2023.

versión 0.1.1




![ArqCotizador. 5. Físico (despliegue)](images/ArqCotizador.5.Físico(despliegue).png){#fig:id-id-bc7b34fbb33241e785ae91a9d3102378 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Conexión: jdbc | Artifact |  |  |
| Entorno Angular: ng12 | System Software |  |  |
| Repositorio: db2 iSerie | System Software |  |  |
| Servicios: tomcat | System Software |  |  |
| app: Asociados | Application Component | Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios. |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Protecciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones. |  |
| app: Reclamaciones | Application Component | Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos. |  |
| pkg: admin | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: administración | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: asociados | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: auth | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cliente | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: clientes | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: config | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cotizaciones | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: cotización | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: home | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: modelos | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: multiactiva | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: protecciones | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: proveedores | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: reporte | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: reportes | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |
| pkg: utilidades | Application Component | controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.5.Físico(despliegue)-id}


## Vistas de Arquitectura Mi Mutual

undefined



![Vistas de Arquitectura Mi Mutual](images/VistasdeArquitecturaMiMutual.png){#fig:id-id-7ce9f9bf90d343c48ed121b2fa175972 width=}

_Fuente: ${4:Diagnóstico SOA. E-Service (2022).}_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Cotizador Web | Grouping |  |  |
| Mi Mutual Central | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-VistasdeArquitecturaMiMutual-id}





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

<div style="page-break-before: always;"></div>
\newpage

<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.435c20e de 12 Oct 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 12 Oct 2023


<div style="page-break-before: always;"></div>
\newpage

# Descripción de Mi Mutual de STEF - Coomeva

## Objetivo del Documento
Descripción de los productos del trabajo de infraestructura del proyecto Migración Mi Mutual, Fase 2, de Cooperativas STEF - Coomeva (STEF - Coomeva en adelante), Contrato XYZ-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición física de las ítems de hardware, redes y cómputo (procesamiento, comunicación y almacenamiento) del sistema Mi Mutual Migración. Por tanto, el documento contiene información estratégica para la toma de decisiones de plataforma y servicios de infraestructura, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

##  Control de Cambios {.page_break_before}
| Tema           | Mi Mutual Coomeva Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva      |
|----------------|----------------------------|
| Palabras clave | SIU, Stefanini, Coomeva, Análisis de brecha, GAP, Infraestrctura, PasS |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.435c20e del 12 Oct 2023 |
| Vínculos       | [N003a Vista Segmento Coomeva SIU](N03a%a20Vsta%20aSegenta%20SOA%20Coomeva.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage



# Documento de Arquitectura Infraestructura Mi Mutual Coomeva
* [Descripción de Infraestructura Migración Mi Mutual Coomeva](#descripción-de-infraestructura-migración-Mi Mutual-Coomeva)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Lineabase.0.SIU applicación. física](#lineabase.0.siu-applicación.-física)
	* [Seguridad. Lineabase.0.SIU applicación](#seguridad.-lineabase.0.siu-applicación)

<div style="page-break-before: always;"></div>
\newpage

# Descripción de Infraestructura Migración Mi Mutual Coomeva
## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de Mi Mutual, Migración. 

* Servidor de Canales (App Coomeva web y móvil)
* Servidor Web App (App Mi Mutual)
* Servidor Lappiz (Config Mi Mutual)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App Coomeva Móvil**|application-component|||
|**App Coomeva Web**|application-component||*plataforma:* angular 11<br>|
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
|**Infraestructura Mi Mutual**|grouping|Soporte de infraestructura a los componentes del Mi Mutual Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del Mi Mutual de Coomeva.<br>||
|**Coomeva SIU**|grouping|El objetivo principal de la arquitectura del Mi Mutual de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la Coomeva.<br>Los objetivos secundarios de esta arquitectura Mi Mutual de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**Servidor BDD App**|node|||
|**Servidor BDD Config**|node|||
|**Servidor Lappiz **|node|||
|**Servidor Web App**|node|||
|**Servidor Web Canales**|node|Nombre físico<br>IP LAN<br>IP Pública<br>||

## Lineabase.0.SIU applicación. física
![Diagram: Lineabase.0.SIU applicación. física](images/Lineabase.0.SIUapplicación.física.png){#fig:Lineabase.0.SIUapplicación.física width=}

## Representación Arquitectónica
Con una arquitectura orientada a servicios Mi Mutual recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración




### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App Coomeva Móvil**|application-component|||
|**App Coomeva Web**|application-component||*plataforma:* angular 11<br>|
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
|**www Coomeva com**|technology-interface|||

## Seguridad. Lineabase.0.SIU applicación
![Diagram: Seguridad. Lineabase.0.SIU applicación](images/Seguridad.Lineabase.0.SIUapplicación.png){#fig:Seguridad.Lineabase.0.SIUapplicación width=}

## Representación Arquitectónica
Con una arquitectura orientada a servicios Mi Mutual recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración




### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>|
|**App Coomeva Móvil**|application-component|||
|**App Coomeva Web**|application-component||*plataforma:* angular 11<br>|
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
|**www Coomeva com**|technology-interface|||
|**Asignación de Tokens**|value-stream|||
|**HTTPS, TLS, SSL**|value-stream|||
|**Requiere 2 MFA**|value-stream|||
|**Uso de claves criptograficas.**|value-stream|||
|**Uso de claves criptograficas. (copy)**|value-stream|||


``Generated on: Wed Sep 13 2023 17:07:58 GMT-0500 (COT)``

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

<div style="page-break-before: always;"></div>
\newpage

<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.435c20e de 12 Oct 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 12 Oct 2023


<div style="page-break-before: always;"></div>
\newpage

# Documento de Descripción de Entidades de Datos. Mi Mutual STEF - Coomeva

## Objetivo del Documento
Descripción de los productos de trabajo de la arquitectura de datos del proyecto Migración Mi Mutual, Fase 2, de la Procuraduría General de la Nación (Coomeva en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las componentes de datos relevantes a la arquitectura del sistema Mi Mutual Migración. Por tanto, el documento contiene información estratégica para la toma de decisiones en cuanto al transporte, organización y mantenimiento de los entidades de datos de negocio, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | Mi Mutual Coomeva Mi Mutual, Sistema de Previsión, Asistencia y Solidaridad, Coomeva      |
|----------------|----------------------------|
| Palabras clave | SIU, Stefanini, Coomeva, Análisis de brecha, GAP, Entidades, Datos  |
| Autor          |                            |
| Fuente         |                            |
| Versión        | 1.435c20e del 12 Oct 2023 |
| Vínculos       | [N003a Vista Segmento Coomeva SIU](N03a%a20Vsta%20aSegenta%20SOA%20Coomeva.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage




# Documento de Arquitectura Datos Mi Mutual
* [Descripción de Entidades de Datos Migración Mi Mutual Coomeva](#descripción-de-entidades-de-datos-migración-Mi Mutual-Coomeva)
	* [Migracion.2. datos](#migracion.2.-datos)
	* [Migracion.2a. datos Hominis](#migracion.2a.-datos-hominis)
	* [Migracion.2c. datos Control interno](#migracion.2c.-datos-control-interno)
	* [Migracion.2d. datos SIRI](#migracion.2d.-datos-siri)
	* [Migracion.2b. datos SIM](#migracion.2b.-datos-sim)

<div style="page-break-before: always;"></div>
\newpage

# Descripción de Entidades de Datos Migración Mi Mutual Coomeva
## Migracion.2. datos
![Diagram: Migracion.2. datos](images/Migracion.2.datos.png){#fig:Migracion.2.datos width=5.32in}

Modelo de acceso y procesamiento a datos de negocio del Mi Mutual. Presentamos la organización de los ítems de datos de negocio necesarios para que los módulos del Mi Mutual puedan recolectar, procesar, integrar y almacenarlos de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (por principio de extensión y mantenibilidad). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: el bus de datos del Mi Mutual.

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Coomeva Mi Mutual (misional)**|application-collaboration|||
|**APP1.Relatoría**|application-component|Módulo del Mi Mutual. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la Coomeva.<br> ||
|**APP2.SIRI**|application-component|||
|**APP3.Control interno**|application-component|||
|**APP4.Hominis**|application-component|Módulo del Mi Mutual. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la Coomeva.<br>||
|**APP5.SIM**|application-component|||
|**APP6.Estratego**|application-component|||
|**Interfaz de Acceso Proveedores**|application-interface|Interfaz de acceso a los tipos de datos externos al Mi Mutual.<br>||
|**Interfaz de Almacenaniento**|application-interface|Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del Mi Mutual.<br>||
|**Procesamiento batch Coomeva**|application-process|Los procesos de lotes, que requieren volumenes de datos altos, deben hacer parte de la arquitectura de datos del Mi Mutual.<br>||
|**Bus de datos**|application-service|El patrón de bus de datos tiene el rol de unir y referir a los datos externos al Mi Mutual de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Datos externos**|data-object|||
|**Datos históricos**|data-object|||
|**Datos transaccionales**|data-object|||

## Migracion.2a. datos Hominis
![Diagram: Migracion.2a. datos Hominis](images/Migracion.2a.datosHominis.png){#fig:Migracion.2a.datosHominis width=5.32in}

Identificación de entidades de datos de negocio relacionadas al módulo de gestión de capital del Mi Mutual, Hominis.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del Mi Mutual y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP4.Hominis**|application-component|Módulo del Mi Mutual. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la Coomeva.<br>||
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

Identificación de entidades de datos de negocio relacionadas al módulo de seguimiento del desempeño de la Coomeva del Mi Mutual, Control Interno.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del Mi Mutual y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


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

Identificación de entidades de datos de negocio relacionadas al módulo del Mi Mutual, SIRI.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del Mi Mutual y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP2.SIRI**|application-component|||
|**DAT.Entidad**|business-object|||

## Migracion.2b. datos SIM
![Diagram: Migracion.2b. datos SIM](images/Migracion.2b.datosSIM.png){#fig:Migracion.2b.datosSIM width=}

Identificación de entidades de datos de negocio relacionadas al módulo de Mi Mutual, SIM.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del Mi Mutual y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**APP5.SIM**|application-component|||
|**DAT.Corregimiento**|business-object|||
|**DAT.Departamento**|business-object|||
|**DAT.Municipio**|business-object|||
|**DAT.País**|business-object|||


``Generated on: Wed Sep 13 2023 12:45:59 GMT-0500 (COT)``

<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



