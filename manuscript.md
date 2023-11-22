---
keywords:
- SOA
- madurez
- gobierno
- Coomeva
lang: en-US
date-meta: '2023-11-22'
author-meta:
- Equipo arquitectura STEF-COOMV.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-11-22" />
  <meta name="citation_publication_date" content="2023-11-22" />
  <meta property="article:published_time" content="2023-11-22" />
  <meta name="dc.modified" content="2023-11-22T11:45:59+00:00" />
  <meta property="article:modified_time" content="2023-11-22T11:45:59+00:00" />
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
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/stef-arqcomv/v/ff9e7427908315c28e8ea7e5315f5f40736cec4e/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/ff9e7427908315c28e8ea7e5315f5f40736cec4e/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/ff9e7427908315c28e8ea7e5315f5f40736cec4e/manuscript.pdf" />
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

| **Versión** del producto 1.ff9e742 de 22 Nov 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 22 Nov 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, MiMutual - Modificación Core Unidad de Solidaridad y Seguros, Contrato XXX-2023, 
([Web](https://hwong23.github.io/stef-arqcomv/v/ff9e7427908315c28e8ea7e5315f5f40736cec4e/))
están basados en el resultado del proyecto Coomeva Mi Mutual en curso.
[Sharepoint STEF@ff9e742](http://stefanini.sharepoint.com)
del November 22, 2023.
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
| 1.ff9e742 | 2023-11-22. abstrc |
| 1.07c4190 | 2023-11-21. abstrc |
| 1.e0bde5c | 2023-11-07. purg |
| 1.48030a3 | 2023-11-07. variables |
| 1.8470759 | 2023-11-07. modneg |
| 1.00ee68d | 2023-11-07. upd |
| 1.d404615 | 2023-11-03. cotizdoc |
| 1.e6db45d | 2023-11-03. cotizdoc |
| 1.198efe2 | 2023-10-27. upd |
| 1.7ee3b70 | 2023-10-26. arqdes |
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


<!--
Single-page HTML Export

Created with Archi (https://www.archimatetool.com) and the following jArchi script:
https://github.com/archi-contribs/jarchi-single-page-html-export

Copyright (c) 2020 Phillip Beauvoir & Jean-Baptiste Sarrodie - MIT License
-->
STEF-CMMV

## Arq MiMutual. 1. Contexto

Mi Mutual. Coomeva, 2023.

Contexto Mi Mutual: Áreas negocio, componente central Mi Mutual, servicios y funciones.

versión 0.2.1


## Contexto Mi Mutual Central
El sistema principal de fondo Mi Mutual Central es la composición de las funciones de negocio de la Unidad de Solidaridad de Coomeva. Las funciones de negocio referidas, como Gestión Beneficiarios, Certificados, Gestión Beneficiarios, aparecen dentro del componente principal en la imagen.

Este entregable documenta los diferentes módulos y componentes que hacen parte de la estructura de una aplicación en Angular 12 y como es su interacción para conformar una arquitectura robusta y escalable para aplicaciones de gran tamaño.

Las librerías Spring Boot Security y Spring Boot Oauth2 proveen características de seguridad entre Vista (Angular 2) y Controlador. Estas son responsables de que únicamente permita el acceso si se está autenticado. Además, para realizar el proceso de autenticación se delega a la aplicación SISPRO (Coomeva) que funciona como un servidor de autenticación.

![Arq MiMutual. 1. Contexto](images/ArqMiMutual.1.Contexto.png){#fig:id-id-919c1deee57b4c78a03abff98e0db161 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 2. Contenedores

Mi Mutual. Coomeva, 2023.

Organización de componentes principales, Mi Mutual Central. Roles de componentes, separación responsabilidades.

versión 0.4.1


La organización de componentes utilizada Mi Mutual, impulsada por Spring Web, antepone como interfaz de uso un API REST. La interfaz se articula con tres componentes utilitarios: Controller, Service y Repository, los cuales están mediados por el componente misional, Mi Mutual, en la imagen. 

Esta decisión de organización de los componentes de Mi Mutual, incluyendo al misional del mismo nomnbre, permite estructurar la aplicación de una manera ordenada y, en línea con las restricciones de arquitectura exigidas al sistema, facilita la efectividad de las extensiones y el mantenimiento.

![Arq MiMutual. 2. Contenedores](images/ArqMiMutual.2.Contenedores.png){#fig:id-id-5fe59b86833c4bf8a7be4069e0b798a8 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API Mi Mutual | Application Interface |  |  |
| Controlador Mi Mutual | Application Component | Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos. |  |
| Registro Servicios: eureka | Application Component | Eureka: Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.<br> |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| Ruteador (proxy): gateway | Application Component | Gateway: Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.<br> |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.2.Contenedores-id}

<br>



## Arq MiMutual. 3. Dominios

Mi Mutual. Coomeva, 2023.

Servicios trasversales Mi Mutual. Estado Actual.

versión 0.1


La división por dominios busca facilitar la administración los servicios de la plataforma Mi Mutual que son comunes entre aplicaciones de Mi Mutual, tales como Asociados, Reclamaciones, Protecciones y otros servicios trasversales como Utilidades, Reglas de negocio, Procesos de negocio (BPM), Auditoria, Flujos de trabajo:flowable.

![Arq MiMutual. 3. Dominios](images/ArqMiMutual.3.Dominios.png){#fig:id-id-dec3e8d41fed4da6b7bc317e01485518 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 4. Aplicación

Mi Mutual. Coomeva, 2023.

Organización de componentes de aplicación Mi Mutual. Estado Actual. Segmentos (1) frontal, (2) servicios, (3) central/negocio Mi Mutual, (4) infraestructura.

versión 0.4.1




![Arq MiMutual. 4. Aplicación](images/ArqMiMutual.4.Aplicación.png){#fig:id-id-27bcd4f7a1c2454295b001008ee42aaa width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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
| Interfaz transporte | Application Interface | Feign Client.<br><br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados. |  |
| Mi Mutual Presentación | Application Component |  |  |
| Profundización | Business Role | Ejecutivos de Profundización |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| SS02.acumulados - portafolio | Application Service |  |  |
| SS02.aportes - estatutarios | Application Service |  |  |
| SS02.distribuciones | Application Service |  |  |
| SS02.notas - aclaratorias | Application Service |  |  |
| SS02.porcentaje - cuota | Application Service |  |  |
| SS02.protecciones - mim - actuaria | Application Service |  |  |
| SS02.protecciones- desmemebracion - accidente | Application Service |  |  |
| SS02.proveedor | Application Service |  |  |
| SS02.proyeccion | Application Service |  |  |
| SS02.proyecto - vida | Application Service |  |  |
| SS02.relacion - planes | Application Service |  |  |
| SS02.reporte - cotizacion | Application Service |  |  |
| SS02.reporte - estado - cotizacion | Application Service |  |  |
| SS02.tipo - plan | Application Service |  |  |
| SS02.util - archivos | Application Service |  |  |
| SS02.util - municipios | Application Service |  |  |
| Servicio de Almacenamiento de Datos | Technology Service |  |  |
| Servicio de Red | Technology Service |  |  |
| Servicio de archivos | Technology Service |  |  |
| Simulador | Application Component |  |  |
| Simuladores | Application Service | Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado. |  |
| Unidad de Solidaridad y Seguros | Grouping | La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad) |  |
| Vinculación | Application Component |  |  |
| app: Cotización y Ventas | Application Component |  |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.4.Aplicación-id}

<br>



## Arq MiMutual. 4a1. Referencia

Mi Mutual. Coomeva, 2023.

Esquema de componentes Spring Boot

versión 0.1



![Arq MiMutual. 4a1. Referencia](images/ArqMiMutual.4a1.Referencia.png){#fig:id-id-ecda07ca4d5a48479f53c13bf96290c7 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 4a3. Dependencias

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Paquetes: dependencias, roles, implementación funciones de aplicación.

versión 0.1


### Paquetes y Dependencias Mi Mutual
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

### Entorno de Desarrollo
Para la etapa de desarrollo la aplicación estará configurada para levantar un servidor Tomcat embebido el cual se encuentra configurado el pom.xml y el cual permite trabajar de forma mucho más ágil.

Para el despliegue entre ambientes se manejará maven profiles con el fin de agregar las configuraciones de cada uno de estos.

El código fuente está alojado en un repositorio de Coomeva.

![Arq MiMutual. 4a3. Dependencias](images/ArqMiMutual.4a3.Dependencias.png){#fig:id-id-cd7711359fb64153aacc8f016b0e85e8 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 5. Físico (despliegue)

Mi Mutual. Coomeva, 2023.

Distribución física Mi Mutual. Estado actual, 2023.

versión 0.4.4


Especificaciones de despliegue Mi Mutual, 2023, componente central.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring boot
* Tecnologías para el frontend: Angular 12
* Librería de Estilos: Bootstrap 4
* Servidor web (HTTP 1.1): Apache 2.X


![Arq MiMutual. 5. Físico (despliegue)](images/ArqMiMutual.5.Físico(despliegue).png){#fig:id-id-f12ffd7585e24d0da3e26ab9b25d0b9c width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 6. Infraestructura

Mi Mutual. Coomeva, 2023.

Ambientes, Nodos (servidores), Elementos de red, Almacenamiento y equipos de hardware Mi Mutual. Estado Actual

versión 0.3



![Arq MiMutual. 6. Infraestructura](images/ArqMiMutual.6.Infraestructura.png){#fig:id-id-ee8757edbccd440eb43234279e7d1ff9 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| DB2 AS400: SIPASDB | System Software | Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * Sql Server (...), * Oracle (...) |  |
| Oracle DB: (...) | System Software | Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...) |  |
| SQL Server: (...) | System Software | Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...) |  |
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

<br>



## Arq MiMutual. 7. Datos. Negocio

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Entidades: Estructuras, objeto, relaciones con aplicación.

versión 0.1


### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario

![Arq MiMutual. 7. Datos. Negocio](images/ArqMiMutual.7.Datos.Negocio.png){#fig:id-id-e4ae408c4a5b41a09e47e227c33d467d width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 7a. Datos. Aplicación

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Físico. Entidades: Estructuras, objeto, relaciones con entidades.

versión 0.1


Estructuras de datos específicas a la plataforma. Modelo de negocio para las aplicaciones. 

Modelo físico facilitadas por Coomeva, corte del 2 de mayo de 2022. Contiene las estructuras de configuración de fondo, cliente, planes, cobertura y planes de coberturas.

![Arq MiMutual. 7a. Datos. Aplicación](images/ArqMiMutual.7a.Datos.Aplicación.png){#fig:id-id-c4ed2d8934fd40eea1d71556b08da65e width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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

<br>



## Arq MiMutual. 7b. Datos. Relaciones

Mi Mutual. Coomeva, 2023.

Mi Mutual Central. Entidades: Estructuras, objeto, relaciones con aplicación.

versión 0.2.3


### Entidades de Negocio Mi Mutual

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario

![Arq MiMutual. 7b. Datos. Relaciones](images/ArqMiMutual.7b.Datos.Relaciones.png){#fig:id-id-4c251568d38049f89d4963e7439861ac width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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
| DAT01.ADICIONAL PLAN COBERTURA | Data Object |  |  |
| DAT01.ASISTENCIA PLAN COBERTURA | Data Object |  |  |
| DAT01.ASISTENCIA PLAN COBERTURA DETALLE | Data Object |  |  |
| DAT01.CAMPANA RELACION PLAN COBERTURA | Data Object |  |  |
| DAT01.CANAL | Data Object |  |  |
| DAT01.CANAL EVENTO | Data Object |  |  |
| DAT01.CANAL VENTA EXCLUSION | Data Object |  |  |
| DAT01.CUMULOS PLAN COBERTURA | Data Object |  |  |
| DAT01.DEDUCIBLE | Data Object |  |  |
| DAT01.DESMEMBRACION ACCIDENTE | Data Object |  |  |
| DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA | Data Object |  |  |
| DAT01.DOCUMENTO REQUISITO | Data Object |  |  |
| DAT01.ENFERMEDAD GRAVE | Data Object |  |  |
| DAT01.ENFERMEDAD GRAVE PLAN COBERTURA | Data Object |  |  |
| DAT01.ESTADO ASOCIADO | Data Object |  |  |
| DAT01.PERSONA | Data Object |  |  |
| DAT01.SUBLIMITE COBERTURA | Data Object |  |  |
| DAT01.TIPO MOVIMIENTO | Data Object |  |  |
| DAT01.TIPO PROCESO CUMULO | Data Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqMiMutual.7b.Datos.Relaciones-id}

<br>



## ArqCotizador. 1. Contexto

Mi Mutual. Coomeva, 2023.

Cotizador Web Mi Mutual. Contexto Mi Mutual: Áreas negocio, componente central Mi Mutual, servicios y funciones.

versión 0.1


### Contexto Mi Mutual Web
La aplicación Cotizador Web hace parte de los módulos de interfaz web de Mi Mutual Central, representado por API Mi Mutual en el diagrama. Realizar cotizaciones de los planes de protección luego de la vinculación del asociado.

La estructura por módulos permite realizar aplicaciones escalables y robustas ya que permite organizar las partes de la aplicación, la organización en bloques, extender la aplicación con funcionalidades de libreras externas, proporcionar un entorno de resolución de plantillas y además permite especificar la forma de la carga de cada uno de los componentes y servicios que conforman un módulo.

### Módulos Externos
Los módulos externos son todas y cada uno de las herramientas que se utilizan para complementar con funcionalidades ya desarrolladas y tomadas desde un repositorio externo (NPM).

* TranslateModule: Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core
* NgxMaskModule: Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask
* JwtModule: Manejo de token. Documentación: https://github.com/auth0/angular2-jwt
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

### Servicios Transversales 

* AuthGuard: Validación de existencia de autenticación
* DeaciveGuard: Validación de salida de un componente
* ErrorInterceptor: Interceptor de Errores del back
* JwtInterceptor: Interceptor para inyectar el token
* AutenticationService: Métodos para completar la autenticación
* TypesService: Consumo de servicios de parametrización
* IdleTimeoutService: Verificación de timeout del token

&lt;br&gt;

![ArqCotizador. 1. Contexto](images/ArqCotizador.1.Contexto.png){#fig:id-id-6c23b3a1025841cc9dc9c8385dd94f67 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.1.Contexto-id}

<br>



## ArqCotizador. 2. Contenedores

Mi Mutual. Coomeva, 2023.

Estructura de componentes principales, Cotizador Web, Mi Mutual. Roles de componentes, separación responsabilidades.

versión 0.2



![ArqCotizador. 2. Contenedores](images/ArqCotizador.2.Contenedores.png){#fig:id-id-f2a4384798e643c1a7b24456c69f7a6d width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API Mi Mutual | Application Interface |  |  |
| Cliente HTTP / HTTPS | Application Interface |  |  |
| Control | Application Function |  |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| Ruteos | Application Function |  |  |
| Servicios | Application Function |  |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.2.Contenedores-id}

<br>



## ArqCotizador. 4. Aplicación

Mi Mutual. Coomeva, 2023.

Organización de aplicación Cotizador Web, Mi Mutual. Estado Actual. Segmentos (1) frontal, (2) servicios, (3) central/negocio Mi Mutual, (4) infraestructura.

versión 0.4.1



La organización de la aplicación Cotizador Web Mi Mutual, como capa de presentación y servicios, plantea una estructura basada en la referencia de aplicaciones Angular 12. Las características de esta estructura (referida por Angular) está orientada al crecimiento (tamaño) de la aplicación, la escalabilidad y al rendimiento. La aplicación web Cotizador está diseñada (modulos) para manejar la carga por demanda del contenido.

![ArqCotizador. 4. Aplicación](images/ArqCotizador.4.Aplicación.png){#fig:id-id-64b018b5f3ca41688deb2b02f70ded86 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Analistas | Business Role | Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes. |  |
| Application Service | Application Service | Otros servicios del contexto de Mi Mutual Central.<br> |  |
| Asesores | Business Role | Asesores integrales |  |
| Autorizaciones | Application Service | Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos. |  |
| Auxiliares servicio | Business Role | Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes. |  |
| Certificados | Application Service | Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario. |  |
| Configuración | Application Service | Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos. |  |
| Controlador Mi Mutual | Application Component | Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos. |  |
| Facturación y Recaudo | Application Service | Administración de la facturación y recaudo diario de los productos |  |
| Gestión de Beneficiarios | Application Service | Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación
<br> |  |
| Gestión de Productos | Application Service | Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado. |  |
| Gestión de Usuarios | Application Service | Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema. |  |
| Interfaz transporte | Application Interface | Feign Client.<br><br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados. |  |
| MOD0.JwtModule | Application Component |  Manejo de token. Documentación: https://github.com/auth0/angular2-jwt |  |
| MOD0.Ngprime | Application Component |  Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/ |  |
| MOD0.NgxMaskModule | Application Component |  Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask |  |
| MOD0.TranslateModule | Application Component |  Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core |  |
| MOD0.chart.js | Application Component |  Componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/ |  |
| MOD0.classlist.js | Application Component | Componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/ |  |
| MOD0.cronstrue | Application Component |  Componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue |  |
| MOD0.file-saver | Application Component |  Componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme |  |
| MOD0.ngx-tinymce | Application Component | Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/ |  |
| MOD0.ngx-ui-loader | Application Component | Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader |  |
| MOD0.quill | Application Component | Ccomponente para editor html Documentación: https://quilljs.com/ |  |
| MOD0.sweetalert2 | Application Component | Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/ |  |
| Módulos Externos | Grouping |  |  |
| Repositorio Mi Mutual | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br><br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br> |  |
| SS02.reporte - cotizacion | Application Service |  |  |
| SS02.reporte - estado - cotizacion | Application Service |  |  |
| Servicio de Almacenamiento de Datos | Technology Service |  |  |
| Servicio de Red | Technology Service |  |  |
| Servicio de archivos | Technology Service |  |  |
| Simuladores | Application Service | Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado. |  |
| Unidad de Solidaridad y Seguros | Grouping | La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad) |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |
| app: Implementación de Servicios | Application Component | Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br> |  |
| app: Mi Mutual Central | Application Component | Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa. |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.4.Aplicación-id}

<br>



## ArqCotizador. 4a. Aplicación. Servicios

Mi Mutual. Coomeva, 2023.

Especificaciones de Servicios. Aplicación Cotizador Web, Mi Mutual. Estado Actual. Estructura interna, comunicación e interfaces.

versión 0.1



Composición interna de los servivios de Mi Mutual Central, Mi Mutual Web, Cotizador Web. 

![ArqCotizador. 4a. Aplicación. Servicios](images/ArqCotizador.4a.Aplicación.Servicios.png){#fig:id-id-3a9f664ae1d44c2fa789e33d6a6cc4b1 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Application Service | Application Service | Otros servicios del contexto de Mi Mutual Central.<br> |  |
| Controlador | Application Component | Controlador interno del servicio. Punto de entrada a la lógica de expuesta. |  |
| Gestión de Productos | Application Service | Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado. |  |
| Integración | Application Service |  |  |
| Interfaz | Application Component | Interfaz de inversión de dependencia a las clases del servicio.<br> |  |
| Interfaz datos | Application Component | Acceso a datos del modelo del contexto de Mi Mutual Central.<br> |  |
| Interfaz transporte | Application Interface | Feign Client.<br><br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados. |  |
| Operación | Application Component |  |  |
| Servicio | Application Component | Exposición de componentes de negocio.<br> |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.4a.Aplicación.Servicios-id}

<br>



## ArqCotizador. 4a. Dependencias

Mi Mutual. Coomeva, 2023.

Mi Mutual Web. Paquetes: dependencias, roles, implementación funciones de aplicación.

versión 0.1


### Paquetes y Dependencias Cotizador Web
Módulos y componentes que hacen parte de la estructura de la aplicación Cotizador Web (basado en Angular 12 [^1]).

[^1]: Angular 2 tiene una arquitectura Modelo Vista Controlador (MVC) con el fin de hacer el desarrollo gestionado.

### Módulos Cotizador Web
La estructura por módulos actual apunta a la escalabilidad y mantenimiento del Cotizador en términos de: organizar las partes de la aplicación, organización los bloques, extender la aplicación con libreras externas, proporcionar un entorno de resolución de plantillas y además, distribuir las cargas de los componentes y servicios que usa la aplicación.

![ArqCotizador. 4a. Dependencias](images/ArqCotizador.4a.Dependencias.png){#fig:id-id-3bc899b013be4bb0818e8856b07c2b50 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

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
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |
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

<br>



## ArqCotizador. 5. Físico (despliegue)

Mi Mutual. Coomeva, 2023.

Distribución física Cotizador Web, Mi Mutual. Estado actual, 2023.

versión 0.1.1



### Especificaciones de Despliegue Cotizador Web
Detalles de configuración del proyecto Mi Mutual en el espacio de trabajo local (2022).

#### Recursos Requeridos
* Git. Se debe instalar git para poder realizar la clonación de cada uno de los proyectos mas adelante.
* Instalación SmartGit. Se debe instalar Smartgit para poder realizar la clonación de cada uno de los proyectos mas adelante, este es opcional ya que es una interfaz gráfica de git mas amigable para el usuario en caso que no desee trabajar con la consola.
* DBeaver. Se debe instalar DBeaver para poder acceder a la base de datos. 
* Instalación Maven. Se debe instalar maven para poder compilar los proyectos, nos debemos asegurar de instalar la versión 3.6.3, en caso que no se encuentra en la página oficial copiar la carpeta que esta en el repositorio a archivo de programas. 
* Java 8. Se debe instalar Java para poder desplegar los proyectos mas adelante, nos debemos asegurar de instalar la versión 8. 
* STS. Se debe instalar el IDE para realizar modificaciones a los proyectos back mas adelante en este caso Spring Tools 4 for Eclipse. La carpeta que genera el instalador la copiamos a archivos de programa. 
* Instalación Lombok. Se debe instalar el lombok seleccionando el IDE que acabamos de instarlar en este caso el STS.
* Postman. Se debe instalar el postman para poder consumir los servicios del backend mas adelante cuando ya se hayan desplegado.
* Node Js. Se debe instalar Node Js para configurar el proyecto front mas adelante, nos debemos asegurar de instalar la versión v14.2.0.
* Visual Studio Code. Se debe instalar el IDE para realizar modificaciones al proyecto front mas adelante en este caso Visual Studio code. 
k. Angular 9.1.12 o superior.

&lt;br&gt;

![ArqCotizador. 5. Físico (despliegue)](images/ArqCotizador.5.Físico(despliegue).png){#fig:id-id-bc7b34fbb33241e785ae91a9d3102378 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Conexión: jdbc | Artifact |  |  |
| Entorno Angular: ng12 | System Software |  |  |
| Entorno JS: node 14.2.0 | System Software |  |  |
| Repositorio: db2 iSerie | System Software |  |  |
| Servicios: tomcat | System Software |  |  |
| app: Asociados | Application Component | Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios. |  |
| app: Cotizador Web | Application Component | pkg: MiMutualWeb<br><br> |  |
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

<br>



## ArqCotizador. 7. Datos. Negocio

Mi Mutual. Coomeva, 2023.

Mi Mutual Web. Entidades: Estructuras, objeto, relaciones con aplicación.

versión 0.1


### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario

![ArqCotizador. 7. Datos. Negocio](images/ArqCotizador.7.Datos.Negocio.png){#fig:id-id-59beffe958dd4af68af3a4d2251241ec width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| DAT00.Asegurado | Business Object |  |  |
| DAT00.Asociado | Business Object |  |  |
| DAT00.Beneficiario | Business Object |  |  |
| DAT00.Canal (medios del tomador/asociado) | Business Object |  |  |
| DAT00.Configuración (caracterización) | Business Object | Caracterización de productos, planes, parámetros<br> |  |
| DAT00.Plan (producto pólizas seguros) | Business Object |  |  |
| DAT01.Cotización | Business Object |  |  |
| DAT01.PERSONA | Data Object |  |  |
| DAT01.Vinculación | Business Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-ArqCotizador.7.Datos.Negocio-id}

<br>



## Vistas de Arquitectura Mi Mutual

undefined



![Vistas de Arquitectura Mi Mutual](images/VistasdeArquitecturaMiMutual.png){#fig:id-id-7ce9f9bf90d343c48ed121b2fa175972 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Cotizador Web | Grouping |  |  |
| Mi Mutual Central | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-VistasdeArquitecturaMiMutual-id}

<br>






<!--
Single-page HTML Export

Created with Archi (https://www.archimatetool.com) and the following jArchi script:
https://github.com/archi-contribs/jarchi-single-page-html-export

Copyright (c) 2020 Phillip Beauvoir & Jean-Baptiste Sarrodie - MIT License
-->
PGN-078

## Doc.1.Datos SUI

undefined



![Doc.1.Datos SUI](images/Doc.1.DatosSUI.png){#fig:id-id-da6ff55a01c445e5b57abe5bba908702 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Descripción de Entidades de Datos Migración SUI PGN | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Doc.1.DatosSUI-id}

<br>



## Doc.2.Infraestructura SUI

undefined



![Doc.2.Infraestructura SUI](images/Doc.2.InfraestructuraSUI.png){#fig:id-id-d20f6681ac6249bf88591c49616de26a width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Descripción de Infraestructura Migración SUI PGN | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Doc.2.InfraestructuraSUI-id}

<br>



## Doc.3.Migración Funcional SUI

undefined



![Doc.3.Migración Funcional SUI](images/Doc.3.MigraciónFuncionalSUI.png){#fig:id-id-feee5640a7664190836510f20d08a457 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Análisis de Productos | Grouping |  |  |
| Arquitectura de Seguridad, SUI Migración | Grouping |  |  |
| Organización cambios arquitectura | Grouping |  |  |
| Patrón de Diseño Línea Base SUI PGN | Grouping |  |  |
| Patrón de Diseño Migración SUI PGN | Grouping |  |  |
| Riesgos Técnicos | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Doc.3.MigraciónFuncionalSUI-id}

<br>



## Doc.4.PGN Contractual

undefined



![Doc.4.PGN Contractual](images/Doc.4.PGNContractual.png){#fig:id-id-e7f7d2ccbf294528b5d78a0bd1efe1fe width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| CI | Grouping |  |  |
| Componentes | Grouping |  |  |
| Contexto | Grouping |  |  |
| Física | Grouping |  |  |
| Interoperabilidad | Grouping |  |  |
| Motivadores | Grouping |  |  |
| Seguridad | Grouping |  |  |
| Tecnología | Grouping |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Doc.4.PGNContractual-id}

<br>



## Lineabase.0.SIU applicación

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Línea base sistema único de información. PGN. Componentes originales Fase I. Organización de la Aplicación.

versión 0.11



Procuraduría General de la Nación, proyecto Migración SIU, 2023, Fase II. Línea base del sistema único de información (SUI en adelante) de la PGN. Presentación de componentes de software  originales implementados en la Fase I del presente proyecto.


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

&lt;br&gt;


![Lineabase.0.SIU applicación](images/Lineabase.0.SIUapplicación.png){#fig:id-id-d1c66332737c4f8294474c4bbd0ebd52 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Service (NLB) | Application Service |  |  |
| Config | Application Component |  |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Punto acceso público | Application Interface | URL tipo C<br>HTTP |  |

Table: Elementos de la vista. {#tbl:tblelement-Lineabase.0.SIUapplicación-id}

<br>



## Lineabase.0.SIU applicación. física

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Línea base sistema único de información. PGN. Componentes originales Fase I.

versión 0.11.1



Procuraduría General de la Nación (PGN), módulo SIU migrado, 2023. Elementos físicos que soportan a la aplicación Sistema de Información Único (SIU en adelante) de la PGN, actual Fase I y existente en Fase II. Presentación de componentes de software y tecnologeia física (hardware) implementados en la Fase I y requeridos por Fase II (presente proyecto).

## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

&lt;br&gt;

![Lineabase.0.SIU applicación. física](images/Lineabase.0.SIUapplicación.física.png){#fig:id-id-f3eee2e860604899903c6b48c2f76335 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Service (NLB) | Application Service |  |  |
| Balanceador | Node |  |  |
| Communication Network (DMZ) | Communication Network |  |  |
| Communication Network (LAN) | Communication Network |  |  |
| Communication Network (internet) | Communication Network |  |  |
| Config | Application Component |  |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Punto acceso público | Application Interface | URL tipo C<br>HTTP |  |
| Servidor BDD App | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br> |  |
| Servidor BDD Config | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br> |  |
| Servidor Web App | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Servidor Web Canales | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| www pgn com | Technology Interface |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Lineabase.0.SIUapplicación.física-id}

<br>



## Lineabase.1.SIU componente


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


![Lineabase.1.SIU componente](images/Lineabase.1.SIUcomponente.png){#fig:id-id-4f2604a6793e41ce9eb978dca0209b03 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Service (NLB) | Application Service |  |  |
| Archivos Compartidos | Application Service |  |  |
| CDN Contenidos | Application Service |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Identidades | Application Service |  |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| PGN SIU | Grouping | El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br><br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br><br> |  |
| Persistencia | Application Collaboration |  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| Seguridad | Application Component |  |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Lineabase.1.SIUcomponente-id}

<br>



## Lineabase.1a.SIU componentes. infraestrcutura


Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)


![Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:id-id-ae9dc2de036e435fbcba8497224653a7 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Service (NLB) | Application Service |  |  |
| Archivos Compartidos | Application Service |  |  |
| CDN Contenidos | Application Service |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Identidades | Application Service |  |  |
| Infraestructura SUI | Grouping | Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br> |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| PGN SIU | Grouping | El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br><br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br><br> |  |
| Persistencia | Application Collaboration |  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| Seguridad | Application Component |  |  |
| Servidor BDD App | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br> |  |
| Servidor BDD Config | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br> |  |
| Servidor Web App | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Servidor Web Canales | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Lineabase.1a.SIUcomponentes.infraestrcutura-id}

<br>



## Linebase.2.Portal


El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server

![Linebase.2.Portal](images/Linebase.2.Portal.png){#fig:id-id-64947c69f63c422e9f18c81763910332 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Application Collaboration Sharepoint | Application Collaboration |  |  |
| Application Interface | Application Interface |  |  |
| Servidor aplicaciones Sharepoint | Application Component |  |  |
| Servidor datos Sharepoint | Application Component |  |  |
| Servidor web Sharepoint | Application Component |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Linebase.2.Portal-id}

<br>



## Migracion.1a.a.SIU Contexto

PGN. Migración Sistemas Misionales. Fase 2.

Submódulos Sistema Único de Información. Requerimientos asociados a submódulos.

versión 0.4


La vista presenta en contexto a los módulos SUI migrados y el estilo de comunicación vía API sincreonica/asincrónica.

Cada módulo migrado atiende al funcionario que le corresponde, p. ejemplo, Relatoría atiende a la depedencia Jurídica de la PGN. Los módulos comparten su información mediante el API local presente dentro de cada uno. Esto es, la información se mantiene protegida en dominios pero coordinada (se comparte con otros dominios).

El arreglo de datos de registros operativos y transaccionales es como sigue: cada módulo individual mantiene su registro de datos, estado y transacciones minimizado y protegido (individual y aislado). Salvo excepciones no consentidas por el diseño original, un módulo puede compartir el mismo almacen de datos con otro.

![Migracion.1a.a.SIU Contexto](images/Migracion.1a.a.SIUContexto.png){#fig:id-id-e1668a92e195406086fc440010fe73a5 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API SUI | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| API SUI 2 | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| API SUI 3 | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| API SUI N | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| Cliente PGN | Business Actor |  |  |
| Funcionario PGN | Business Actor |  |  |
| cc:Administración | Application Collaboration |  |  |
| cc:Almacenamient 2 | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:Almacenamiento | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:Almacenamiento 3 | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:Almacenamiento N | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:PGN SUI (módulo central) 2 | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:PGN SUI (módulo central) 3 | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:PGN SUI (módulo central) N | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Portales y canales | Application Collaboration | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| cc:Presentación | Application Collaboration | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| cc:Servicios de aplicación | Application Collaboration | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br><br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.1a.a.SIUContexto-id}

<br>



## Migracion.1a.b.SIU Módulos

PGN. Migración Sistemas Misionales. Fase 2.

Submódulos Sistema Único de Información. Requerimientos asociados a submódulos.

versión 0.4


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

![Migracion.1a.b.SIU Módulos](images/Migracion.1a.b.SIUMódulos.png){#fig:id-id-f3f3865c516245bfb2d777de5b23efb6 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| ARQ01. Consistencia SUI | Constraint | Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |  |
| ARQ02. Mantenibilidad SUI | Constraint | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |  |
| ARQ03. Extensibilidad SUI | Constraint | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |  |
| Cliente PGN | Business Actor |  |  |
| Funcionario PGN | Business Actor |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Negocio | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| cc:Administración | Application Collaboration |  |  |
| cc:Almacenamiento | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Portales y canales | Application Collaboration | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| cc:Presentación | Application Collaboration | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| cc:Servicios de aplicación | Application Collaboration | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br><br> |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.1a.b.SIUMódulos-id}

<br>



## Migracion.1b.1. SIU Módulos Componentes

PGN. Migración Sistemas Misionales. Fase 2.

Componentes internos de los submódulos Sistema Único de Información. 

versión 0.45


Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización intena de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologeias. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.


![Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:id-id-6dcada718c1446f69884dc7418828c51 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| ARQ01. Consistencia SUI | Constraint | Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |  |
| ARQ02. Mantenibilidad SUI | Constraint | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |  |
| ARQ03. Extensibilidad SUI | Constraint | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |  |
| Administración | Grouping |  |  |
| Almacenamiento | Grouping |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Interface | Application Interface |  |  |
| Application Service (NLB) | Application Service |  |  |
| Application Service (n) | Application Service | Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad  |  |
| Application Service 1 | Application Service | Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br> |  |
| Archivos Compartidos | Application Service |  |  |
| CDN Contenidos | Application Service |  |  |
| CU ejecutable | Application Component |  |  |
| CU ejecutable (n) | Application Component |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Entidad negocio PGN | Business Object | Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br><br> |  |
| Función PGN | Application Component | La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br> |  |
| Identidades | Application Service |  |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| Office | Application Service |  |  |
| Portales | Grouping | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| Presentación | Grouping | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Negocio | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| Seguridad | Application Component |  |  |
| Servicios de aplicación | Grouping | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br> |  |
| Servidor aplicaciones Sharepoint | Application Component |  |  |
| Servidor datos Sharepoint | Application Component |  |  |
| Servidor web Sharepoint | Application Component |  |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Presentación | Application Collaboration | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.1b.1.SIUMódulosComponentes-id}

<br>



## Migracion.1b.2. SIU Módulos Componentes. Brecha

PGN. Migración Sistemas Misionales. Fase 2.

Componentes internos de los submódulos Sistema Único de Información. 

versión 0.45


Los elementos resaltados indican las extensiones a la arqutecutra por concepto de Fase II del proyecto de migración SUI. 

Los componentes internos incorporados en la arquitectura tienen el propósito de implementar los casos de uso (CU) de cada módulo construído con esta organización (vista anterior). En la imagen los CU son expuestos por los servicios de aplicación, y estos a su vez, usan funciones de negocio (impulsadas por la plataforma de Lappiz). 

Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

![Migracion.1b.2. SIU Módulos Componentes. Brecha](images/Migracion.1b.2.SIUMódulosComponentes.Brecha.png){#fig:id-id-a68add993bca48cc9cbc11fb76628836 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| ARQ01. Consistencia SUI | Constraint | Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |  |
| ARQ02. Mantenibilidad SUI | Constraint | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |  |
| ARQ03. Extensibilidad SUI | Constraint | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |  |
| Administración | Grouping |  |  |
| Almacenamiento | Grouping |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Interface | Application Interface |  |  |
| Application Service (NLB) | Application Service |  |  |
| Application Service (n) | Application Service | Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad  |  |
| Application Service 1 | Application Service | Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br> |  |
| Archivos Compartidos | Application Service |  |  |
| CDN Contenidos | Application Service |  |  |
| CU ejecutable | Application Component |  |  |
| CU ejecutable (n) | Application Component |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Entidad negocio PGN | Business Object | Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br><br> |  |
| Función PGN | Application Component | La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br> |  |
| Identidades | Application Service |  |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| Office | Application Service |  |  |
| PGN SIU | Grouping | El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br><br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br><br> |  |
| Portales | Grouping | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| Presentación | Grouping | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Negocio | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| Seguridad | Application Component |  |  |
| Servicios de aplicación | Grouping | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br> |  |
| Servidor aplicaciones Sharepoint | Application Component |  |  |
| Servidor datos Sharepoint | Application Component |  |  |
| Servidor web Sharepoint | Application Component |  |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.1b.2.SIUMódulosComponentes.Brecha-id}

<br>



## Migracion.1c.SIU Modulos Colaboración

PGN. Migración Sistemas Misionales. Fase 2.

Patrones de comunicación y colaboración. a) entre módulos central SUI de PGN. b) colaoración intraproceso. Puertos, adaptadores y API.

versión 0.4.1


Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante API de comunicación (o buses de datos empresarial que ya disponga la PGN), sin perjuicio del patrón de comunicación estadar descrito en el diagrama.

Los únicos elementos para la comunicación (e integración) son los indicados en la vista actual. En este diseño no considera tipos de comunición mediante  mesajería, datos, ni 
![Migracion.1c.SIU Modulos Colaboración](images/Migracion.1c.SIUModulosColaboración.png){#fig:id-id-e5d2b80501c743edb14cecf221be73a9 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API SUI | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| API SUI 2 | Application Interface | API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br> |  |
| App | Application Component |  |  |
| cc:Almacenamiento | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:PGN SUI (módulo central) 2 | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Portales y canales | Application Collaboration | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.1c.SIUModulosColaboración-id}

<br>



## Migracion.2. datos

PGN. Migración Sistemas Misionales. Fase 2.

Modelo de acceso y procesamiento de datos de negocio. Módulos Sistema Único de Información. 

versión 0.1



Modelo de acceso y procesamiento a datos de negocio del SUI. Presentamos la organización de los ítems de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlos de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (por principio de extensión y mantenibilidad). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: el bus de datos del SUI.

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.

![Migracion.2. datos](images/Migracion.2.datos.png){#fig:id-id-d83ebcb4235c40c4ac68b7f373d4161f width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| APP1.Relatoría | Application Component | Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br>  |  |
| APP2.SIRI | Application Component |  |  |
| APP3.Control interno | Application Component |  |  |
| APP4.Hominis | Application Component | Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br> |  |
| APP5.SIM | Application Component |  |  |
| APP6.Estratego | Application Component |  |  |
| Bus de datos | Application Service | El patrón de bus de datos tiene el rol de unir y referir a los datos externos al SUI de tal manera que hace transparente la localización y el formato de este tipo de datos.<br> |  |
| Datos externos | Data Object |  |  |
| Datos históricos | Data Object |  |  |
| Datos transaccionales | Data Object |  |  |
| Interfaz de Acceso Proveedores | Application Interface | Interfaz de acceso a los tipos de datos externos al SUI.<br> |  |
| Interfaz de Almacenaniento | Application Interface | Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del SUI.<br> |  |
| Procesamiento batch PGN | Application Process | Los procesos de lotes, que requieren volumenes de datos altos, deben hacer parte de la arquitectura de datos del SUI.<br> |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.2.datos-id}

<br>



## Migracion.2a. datos Hominis

PGN. Migración Sistemas Misionales. Fase 2.

Entidades de datos de negocio. Submódulos Sistema Único de Información. Hominis

versión 0.1



Identificación de entidades de datos de negocio relacionadas al módulo de gestión de capital del SUI, Hominis.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo.

![Migracion.2a. datos Hominis](images/Migracion.2a.datosHominis.png){#fig:id-id-a0d2da66c54a40329bb8fb268e625b5f width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| APP4.Hominis | Application Component | Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br> |  |
| DAT.Cargo | Business Object |  |  |
| DAT.Código Actuación | Business Object |  |  |
| DAT.Código Jurisdicción | Business Object |  |  |
| DAT.Código Regional | Business Object |  |  |
| DAT.Código SNIES | Business Object |  |  |
| DAT.Código dependencia superior | Business Object |  |  |
| DAT.Código regional | Business Object |  |  |
| DAT.Decreto de la creación | Business Object |  |  |
| DAT.Diciplina Area | Business Object |  |  |
| DAT.Encargo del cargo | Business Object |  |  |
| DAT.Ley vigente | Business Object |  |  |
| DAT.Materia | Business Object |  |  |
| DAT.Nivel | Business Object |  |  |
| DAT.Nombre Actuación | Business Object |  |  |
| DAT.Nombre Jurisdicción | Business Object |  |  |
| DAT.Nombre Regional | Business Object |  |  |
| DAT.Nombre dependencia superior | Business Object |  |  |
| DAT.Tipo de inscripcion | Business Object |  |  |
| DAT.Vinculación | Business Object |  |  |
| Hominis | Business Object | Entidades de datos de negocio de capital humano de la PGN. Sistema de información Homini.<br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.2a.datosHominis-id}

<br>



## Migracion.2d. datos Control Interno

PGN. Migración Sistemas Misionales. Fase 2.

Entidades de datos de negocio. Submódulos Sistema Único de Información. Control Interno

versión 0.1



Identificación de entidades de datos de negocio relacionadas al módulo de seguimiento del desempeño de la PGN del SUI, Control Interno.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 

![Migracion.2d. datos Control Interno](images/Migracion.2d.datosControlInterno.png){#fig:id-id-6dbb952c4479493fae6f0c7f80e180ed width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| APP3.Control interno | Application Component |  |  |
| DAT.Dependencia | Business Object |  |  |
| DAT.Funcionario | Business Object |  |  |
| DAT.Proceso | Business Object |  |  |
| DAT.Tipo de proceso | Business Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.2d.datosControlInterno-id}

<br>



## Migracion.2d. datos SIM

PGN. Migración Sistemas Misionales. Fase 2.

Entidades de datos de negocio. Submódulos Sistema Único de Información. SIM

versión 0.1



Identificación de entidades de datos de negocio relacionadas al módulo de SUI, SIM.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 

![Migracion.2d. datos SIM](images/Migracion.2d.datosSIM.png){#fig:id-id-5f6183bf4bd84a1da1c33f8273c4c47b width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| APP5.SIM | Application Component |  |  |
| DAT.Corregimiento | Business Object |  |  |
| DAT.Departamento | Business Object |  |  |
| DAT.Municipio | Business Object |  |  |
| DAT.País | Business Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.2d.datosSIM-id}

<br>



## Migracion.2d. datos SIRI

PGN. Migración Sistemas Misionales. Fase 2.

Entidades de datos de negocio. Submódulos Sistema Único de Información. SIRI

versión 0.1



Identificación de entidades de datos de negocio relacionadas al módulo del SUI, SIRI.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 

![Migracion.2d. datos SIRI](images/Migracion.2d.datosSIRI.png){#fig:id-id-1db65b37e4354099bfc2a83f74cbeb51 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| APP2.SIRI | Application Component |  |  |
| DAT.Entidad | Business Object |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.2d.datosSIRI-id}

<br>



## Migracion.3. Infraestructura

PGN. Migración Sistemas Misionales. Fase 2.

Diseño de infraestructura. Módulos Central Sistema Único de Información, SIU de PGN.

versión 0.1.1



Identificación de entidades de datos de negocio relacionadas al módulo del SUI, SIRI.

Estas entidades de datos de negocio son los que llamamos los tipos de datos internos del SUI y deben ser consideradas para la creación de las API de manejo del ciclo de vida de los datos de este módulo. 

![Migracion.3. Infraestructura](images/Migracion.3.Infraestructura.png){#fig:id-id-0e01371191034b69852a033633fb2c96 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|

Table: Elementos de la vista. {#tbl:tblelement-Migracion.3.Infraestructura-id}

<br>



## Migracion.4. CI

PGN. Migración Sistemas Misionales. Fase 2.

Patrón de integración/entrega continuo. Módulos Central Sistema Único de Información, SIU de PGN.

versión 0.1.1



Descripción de las cadenas de integración y despliegue continuo de a) submódulos (aplicaciones web, por ejemplo) del SIU Migrado, 2023; e integración y despliegue continuo de los meodulos central del SIU Migrado, 2023.

Las cadenas están separadas por tecnologeias y plataformas distintas; son independientes y no presentan interbloqueos en cuanto a su ejecución. Pero, requieren administración integral.

Los trabajo de despligue requieren las configuraciones de las cadenas y tareas de conexión tanto a los ambientes productivos y desarrollo.
 
![Migracion.4. CI](images/Migracion.4.CI.png){#fig:id-id-142f2fa094d542c08caf9dbffba6daa9 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Azure CSM: git | Application Service |  |  |
| Balanceador | Node |  |  |
| Communication Network (LAN) | Communication Network |  |  |
| Communication Network (internet) | Communication Network |  |  |
| Evento de cambio | Application Event |  |  |
| Evento de cambio | Application Event |  |  |
| Lappiz CSM: bin | Application Service |  |  |
| Servidor BDD App | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br> |  |
| Servidor BDD Config | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br> |  |
| Servidor Web App | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Servidor Web Canales | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Trabajo de despliegue lappiz.com | Technology Process |  |  |
| Trabajo de despliegue: yaml | Technology Process |  |  |
| Trabajo de integración lappiz.com | Technology Process |  |  |
| Trabajo de integración: yaml | Technology Process |  |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Presentación | Application Collaboration | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |

Table: Elementos de la vista. {#tbl:tblelement-Migracion.4.CI-id}

<br>



## Organización. 1n. Mapa producto



![Organización. 1n. Mapa producto](images/Organización.1n.Mapaproducto.png){#fig:id-id-26b58fc2a55d40b7a082500205f47e61 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Características | Goal |  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Iteración | Work Package |  |  |
| Tiempo | Gap |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.1n.Mapaproducto-id}

<br>



## Organización. 1n.1.. Mapa producto arquitectura PGN



![Organización. 1n.1.. Mapa producto arquitectura PGN](images/Organización.1n.1..MapaproductoarquitecturaPGN.png){#fig:id-id-4acba5538de34883abe9b4900042f7bd width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Application Component | Application Component |  |  |
| Características | Goal |  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Evolución arquitectura | Plateau |  |  |
| Gap | Gap |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta aquitectura | Grouping |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Iteración | Work Package |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.1n.1..MapaproductoarquitecturaPGN-id}

<br>



## Organización. 1n.1.a. Mapa producto PGN.1.Relatoría

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

SIREL (Relatoría). Organización de trabajo. 
Características funcionales, sistémicas, seguridad.

versión 0.12



Organización y distribución de las características técnicas y funcionales del módulo de Relatoría. 

Características principales:
* Utilización de metadatos
* Búsqueda de contenido (intradocumental y por metadatos)
* Procesos de recolección y sincronización de contenidos

De arriba a abajo: 
1. Fila 1, planificación de espacios de trabajo (iteraciones, para este caso) restringido al alcance del proyecto Migración PGN 2023.
1. Debajo, lo hitos importantes organizados en el tiempo.
1. Fila 3. Evolución de las características en los aspectos funcionales, técnico, hardware y software del módulo Relatoría de PGN. 
1. FInalmente, fila final del diagrama, la entrega en el tiempo de las capacidades del módulo de relatoría (épicas, para el caso de Scrum). La prioridad de liberación de estas la determina el equipo funcional de este módulo de la PGN.

&lt;br&gt;

![Organización. 1n.1.a. Mapa producto PGN.1.Relatoría](images/Organización.1n.1.a.MapaproductoPGN.1.Relatoría.png){#fig:id-id-d455b60f8f5448b581a3eddd7364c86f width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Accesibilidad mínimo en el nivel AA.  | Constraint | Caracteristicas: 
<br>- Inclusión para los contenidos audivisuales, subtitulos incorporados o textos escondidos, (Closed Caption).
<br>- Inclusion de lengua de señas Colombiana para interacciones con la ciudadanía. 
<br>
<br> |  |
| Administración de contenidos | Capability |  |  |
| Adopción, v1.2 | Value |  |  |
| Autenticación | Goal |  |  |
| Autorización | Goal |  |  |
| Ayudas: Lenguajes de señas | Constraint |  |  |
| Búsqueda | Goal |  |  |
| Búsqueda de contenidos. Relatoría v0.1 | Value |  |  |
| Características | Goal |  |  |
| Componente de  comunicación segura SIU | Capability |  |  |
| Componente de autenticación SIU | Capability |  |  |
| Componente de autorización SIU | Capability |  |  |
| Componentes de usabilidad, no. 1 | Capability |  |  |
| Componentes de usabilidad, no. 2 | Capability |  |  |
| Contenidos | Goal | Se tendran que adecuar los contenidos audivisuales de los sitios web, con subtitulos o CLosed Caption y la apropiacion de lenguajes de señas.  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Descripción (metatada) | Goal |  |  |
| Despliegue Relatoría v1.2 | Value |  |  |
| Ejemplo: Mapa del sitio | Constraint | Capa que permita reforzar las busquedas en los motores de Busquedas, y que ayude a facilitar la accesibilidad de los usuarios, de forma que pueda estar indexada de forma adecuada. 
<br>Caracteristicas:
<br>Mayor Navegacion del sitio. 
<br>Mejor referenciación de contenido. 
<br>Mayor facilidad de busqueda en los Mavegadores web. 
<br>
<br> |  |
| Enlaces adecuados | Constraint | Los enlaces deberan ser identificados de forma clara, y el indicativo del sitio o la ventana que se abrirá o la ruta al documento que llegará. 
<br> |  |
| Funcionalidades de búsqueda | Capability |  |  |
| Funcionalidades de descripción de contenidos | Capability |  |  |
| Gestión contenidos. Rltría v1.0 | Value |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Idiomas | Constraint | Tener en cuenta el idioma del sitio web, para que en el marco del contexto de ubicación pueda ser interpretado, de acuerdo con el país de ubicación. |  |
| Indexación | Goal |  |  |
| Integración API CMS | Capability |  |  |
| Integridad | Goal |  |  |
| Iteración | Work Package |  |  |
| Iteración 2 | Work Package |  |  |
| Iteración 3 | Work Package |  |  |
| Iteración 4 | Work Package |  |  |
| Iteración 5 | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Iteración 7 | Work Package |  |  |
| Motor de búsqueda | Capability |  |  |
| Organización contenidos. Rltría v0.5 | Value |  |  |
| Proceso de organización de contenidos | Capability |  |  |
| Proceso de recolección de contenidos | Capability |  |  |
| Proceso de sincronización automática de contenidos | Capability |  |  |
| Publicar contenidos | Capability |  |  |
| Recolección | Goal |  |  |
| Seguridad. Rltría v0.9 | Value |  |  |
| Sincronización (actualizcn) | Goal |  |  |
| Usabilidad web | Goal |  |  |
| rel.Iteración 1 | Work Package |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.1n.1.a.MapaproductoPGN.1.Relatoría-id}

<br>



## Organización. 1n.1.b. Mapa producto PGN. Relatoría

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Relatoría. Organización de trabajo. 
Características funcionales, sistémicas, seguridad.

versión 0.7




![Organización. 1n.1.b. Mapa producto PGN. Relatoría](images/Organización.1n.1.b.MapaproductoPGN.Relatoría.png){#fig:id-id-b7bbdb516c71447e866452edcce2c9e8 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Administración de contenidos | Capability |  |  |
| Adopción, v1.2 | Value |  |  |
| Autenticación | Goal |  |  |
| Autorización | Goal |  |  |
| Búsqueda | Goal |  |  |
| Búsqueda de contenidos. Relatoría v0.1 | Value |  |  |
| Características | Goal |  |  |
| Componente de  comunicación segura SIU | Capability |  |  |
| Componente de autenticación SIU | Capability |  |  |
| Componente de autorización SIU | Capability |  |  |
| Componentes de usabilidad, no. 1 | Capability |  |  |
| Componentes de usabilidad, no. 2 | Capability |  |  |
| Contenidos | Goal | Se tendran que adecuar los contenidos audivisuales de los sitios web, con subtitulos o CLosed Caption y la apropiacion de lenguajes de señas.  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Descripción (metatada) | Goal |  |  |
| Despliegue Relatoría v1.2 | Value |  |  |
| Funcionalidades de búsqueda | Capability |  |  |
| Funcionalidades de descripción de contenidos | Capability |  |  |
| Gestión contenidos. Rltría v1.0 | Value |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Indexación | Goal |  |  |
| Integración API CMS | Capability |  |  |
| Integridad | Goal |  |  |
| Iteración | Work Package |  |  |
| Iteración 2 | Work Package |  |  |
| Iteración 3 | Work Package |  |  |
| Iteración 4 | Work Package |  |  |
| Iteración 5 | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Iteración 7 | Work Package |  |  |
| Motor de búsqueda | Capability |  |  |
| Organización contenidos. Rltría v0.5 | Value |  |  |
| Proceso de organización de contenidos | Capability |  |  |
| Proceso de recolección de contenidos | Capability |  |  |
| Proceso de sincronización automática de contenidos | Capability |  |  |
| Recolección | Goal |  |  |
| Sincronización (actualizcn) | Goal |  |  |
| Usabilidad web | Goal |  |  |
| rel.Iteración 1 | Work Package |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.1n.1.b.MapaproductoPGN.Relatoría-id}

<br>



## Organización. 2n.1. Mapa producto PGN. Conciliacion

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Conciliación Administrativa (...).  Organización de trabajo. 
Características funcionales, sistémicas, seguridad.

versión 0.1




![Organización. 2n.1. Mapa producto PGN. Conciliacion](images/Organización.2n.1.MapaproductoPGN.Conciliacion.png){#fig:id-id-125d1b49b13f492ca225313c1b544613 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Adopción, v1.2 | Value |  |  |
| Autenticación | Goal |  |  |
| Autorización | Goal |  |  |
| Características | Goal |  |  |
| Componente de  comunicación segura SIU | Capability |  |  |
| Componente de autenticación SIU | Capability |  |  |
| Componente de autorización SIU | Capability |  |  |
| Conciliación administrativa | Goal |  |  |
| Conciliación civil | Goal |  |  |
| Conciliación disciplinar | Goal |  |  |
| Conciliación familia | Goal |  |  |
| Conciliación preventivo | Goal |  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Despliegue Conciliación v1.2 | Value |  |  |
| Diseño de flujos de Conciliación | Goal |  |  |
| Flujo de trabajo  Preventico | Capability |  |  |
| Flujo de trabajo Disciplinar | Capability |  |  |
| Flujo de trabajo Disciplinario. Conciliación v0.9 | Value |  |  |
| Flujo de trabajo Intervención | Capability |  |  |
| Flujo de trabajo Intervención. Conciliación v0.1 (copy) | Value |  |  |
| Flujo de trabajo Preventivo. Conciliación v0.7 | Value |  |  |
| Gestión de flujos. Conciliación 1.0 | Value |  |  |
| Gestión de instancias (flujos) | Goal |  |  |
| Gestión documental | Goal |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Informes de gestión flujos | Goal |  |  |
| Integración API Dokus | Capability |  |  |
| Integridad | Goal |  |  |
| Iteración | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 2 | Work Package |  |  |
| Iteración 3 | Work Package |  |  |
| Iteración 4 | Work Package |  |  |
| Iteración 5 | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Iteración 7 | Work Package |  |  |
| Motor de flujo de trabajo | Capability |  |  |
| Panel de control flujos | Capability |  |  |
| Reporte flujos de trabajo | Capability |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.2n.1.MapaproductoPGN.Conciliacion-id}

<br>



## Organización. 2n.1a. Mapa producto PGN. Conciliacion

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Conciliación. Intervención, Preventico y Disciplinario. Organización de trabajo. Características funcionales, sistémicas, seguridad.

versión 0.3




![Organización. 2n.1a. Mapa producto PGN. Conciliacion](images/Organización.2n.1a.MapaproductoPGN.Conciliacion.png){#fig:id-id-4523fca069074c39901d92e952d21734 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Adopción, v1.2 | Value |  |  |
| Autenticación | Goal |  |  |
| Autorización | Goal |  |  |
| Características | Goal |  |  |
| Componente de  comunicación segura SIU | Capability |  |  |
| Componente de autenticación SIU | Capability |  |  |
| Componente de autorización SIU | Capability |  |  |
| Conciliación administrativa | Goal |  |  |
| Conciliación civil | Goal |  |  |
| Conciliación disciplinar | Goal |  |  |
| Conciliación familia | Goal |  |  |
| Conciliación preventivo | Goal |  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Despliegue Conciliación v1.2 | Value |  |  |
| Diseño de flujos de Conciliación | Goal |  |  |
| Flujo de trabajo  Preventico | Capability |  |  |
| Flujo de trabajo Disciplinar | Capability |  |  |
| Flujo de trabajo Disciplinario. Conciliación v0.9 | Value |  |  |
| Flujo de trabajo Intervención | Capability |  |  |
| Flujo de trabajo Intervención. Conciliación v0.1 (copy) | Value |  |  |
| Flujo de trabajo Preventivo. Conciliación v0.7 | Value |  |  |
| Gestión de flujos. Conciliación 1.0 | Value |  |  |
| Gestión de instancias (flujos) | Goal |  |  |
| Gestión documental | Goal |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Informes de gestión flujos | Goal |  |  |
| Integración API Dokus | Capability |  |  |
| Integridad | Goal |  |  |
| Iteración | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 2 | Work Package |  |  |
| Iteración 3 | Work Package |  |  |
| Iteración 4 | Work Package |  |  |
| Iteración 5 | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Iteración 7 | Work Package |  |  |
| Motor de flujo de trabajo | Capability |  |  |
| Panel de control flujos | Capability |  |  |
| Reporte flujos de trabajo | Capability |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.2n.1a.MapaproductoPGN.Conciliacion-id}

<br>



## Organización. 3n.1. Mapa producto PGN. SIAF

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

SIAF. Inventario PGN. Organización de trabajo. Características funcionales, sistémicas, seguridad.

versión 0.2



![Organización. 3n.1. Mapa producto PGN. SIAF](images/Organización.3n.1.MapaproductoPGN.SIAF.png){#fig:id-id-212758d2fc8748b7bcc05868ff393b18 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Acciones de acuerdo al estado | Goal | Realización de acciones específicas según el estado de los movimientos devolutivos. |  |
| Almacén | Goal | Administración de almacenes. |  |
| Asientos | Goal | Registro de asientos. |  |
| CRUD Campos | Goal | Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos. |  |
| Características | Goal |  |  |
| Creación de movimiento | Goal | Generación de movimientos de acuerdo con los asientos abiertos. |  |
| Cuenta de funcionario | Goal | Gestión de cuentas de funcionarios. |  |
| Cuenta en Microsoft (Autenticación) | Goal | Autenticación mediante cuentas de Microsoft. |  |
| Cálculo de total | Goal | Cálculo automático del total basado en la información de elementos. |  |
| Código (autoincremental) | Goal | Generación automática de códigos que se reinician cada año. |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Dependiendo del tipo de movimiento | Goal | Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros). |  |
| Elementos | Goal | Registro de elementos relacionados con los movimientos. |  |
| Estado | Goal | Seguimiento del estado de los asientos. |  |
| Fecha automática | Goal | Asignación automática de la fecha en los asientos. |  |
| Filtrar por campos | Goal | Capacidad para filtrar los movimientos devolutivos según campos específicos. |  |
| Funcionario Posesionado | Goal | Registro de información sobre funcionarios en posesión. |  |
| Funcionarios (Nómina) vs Funcionarios (Siaf) | Goal | Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina. |  |
| Generar documento | Goal | Creación de documentos relacionados con los movimientos. |  |
| Generar reportes | Goal | Creación de informes y reportes para proporcionar la información solicitada. |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Iteración | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 9 | Work Package |  |  |
| Login (Doble factor) | Goal | Autenticación de usuario mediante doble factor de seguridad |  |
| Movimiento Consumible | Goal | Registro de movimientos relacionados con elementos consumibles. |  |
| Movimiento devolutivo | Goal | Registro de movimientos devolutivos. |  |
| Sincronización con Homminis | Goal | Sincronización de datos con el sistema Homminis. |  |
| Vista CRUD | Goal | Interfaz para crear, leer, actualizar y eliminar registros en el almacén. |  |
| Vista formulario personalizada | Goal | Personalización de formularios para la creación de asientos dependiendo del almacén. |  |
| Vista tipo formulario personalizada | Goal | Personalización de formularios para ingresar datos relacionados con los asientos. |  |
| Vista tipo lista personalizada | Goal | Visualización personalizada en forma de lista con filtros por campos específicos. |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas (copy) (copy) (copy) (copy) | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.3n.1.MapaproductoPGN.SIAF-id}

<br>



## Organización. 4n.1. Mapa producto PGN. Estratego

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Conciliación. Intervención, Preventico y Estratego. Reportes estratégicos PGN. Organización de trabajo. Características funcionales, sistémicas, seguridad.

versión 0.2




![Organización. 4n.1. Mapa producto PGN. Estratego](images/Organización.4n.1.MapaproductoPGN.Estratego.png){#fig:id-id-9636a665a6e945f0a5f43b53d1dd0f27 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Acciones correctivas | Goal | Administrar los riesgos asociados a cada uno de los indicadores o planes. |  |
| Auditoria de mediciones | Goal | Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc. |  |
| Auditorias | Goal | Gestionar el control de logs de las actividades realizadas por el usuario en sesión. |  |
| Características | Goal |  |  |
| Deliverable: (tiempo) | Deliverable |  |  |
| Dependencias | Goal | Reportar al sistema, actividades, proyectos, indicadores. |  |
| Grupos (Roles) | Goal | Administrar los roles y permisos dentro del sistema |  |
| Gráficos | Goal | Generar y presentar gráficos |  |
| Históricos | Goal | Almacenar y consultar históricos dentro del sistema |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hoja ruta del producto | Grouping |  |  |
| Informes | Goal | Generar documentos con los informes correspondientes. |  |
| Instrumento de cooperación | Goal | Administrar los proyectos de los cooperantes. |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Organizaciones | Goal | Estructura principal. |  |
| Planes administrar | Goal | Administrar el plan estratégico institucional. |  |
| Planes asociar | Goal | Asociar recursos, presupuesto. |  |
| Planes generar | Goal | Generar planes estratégicos institucionales y asociar los planes de acción preventivos. |  |
| Portafolio | Goal | Gestionar el portafolio de todos los proyectos de la entidad. |  |
| Reportes | Goal | Generar reportes y exportarlos en diferentes tipos de archivo. |  |
| Usuarios | Goal | Administrar los usuarios del sistema |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.4n.1.MapaproductoPGN.Estratego-id}

<br>



## Organización. 4n.1a. Mapa producto PGN. Comparativa

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Mapa de Producto SIAf, Estratego. Comparativa funcional, técnica y de impacto.

versión 0.2



Mapa de productos. Comparativa funcional y técnica de módulos PGN, SIAF (izq.) y Estratego (derecha).

### Volumen Funcional
El análisis funcional de ambos módulos realizado durante el levantamiento (iteración 0) del presente proyecto arroja que SIAF tiene un 40% más de volumen que Estratego. Esto es, 16 funcionalidades de Estratego, mientras que SIAF suma 26. Ver imagen comparativa.

### Viabilidad de Alcance
Tomando en cuenta el criterio de calidad de la migración, objeto del presente contrato, 078-2023, de migrar módulos completos dentro de lo posible, y contrastando este criterio con el plazo del proyecto actual, que es de 4 meses, de los cuales ya se han ejecuta aproximadamente el 20% del mismo, es más viable la estrategia de migración de estratego sobre la de SIAF de la PGN por requerir menos iteraciones de desarrollo: seis (6) iteraciones, versus, nueve (9) de SIAF.

### Impacto / Beneficio a PGN
Los hitos de mercado del presente análisis producto, imagen arriba, dan cuenta  del beneficio e impacto de ambos proyectos de migración. Haciendo la comparación de los hitos de mercado de estos productos resalta que Estratego prima sobre SIAF en tanto que el peso cualitativo de las funciones estratégicas del primero son de mayor relevancia que las funciones operativos de inventario de SIAF. Basado en esto, Estratego reporta mayor beneficio y menos impacto en esfuerzo (por la razón anterior) que SIAF.

En conclusion, por los criterios de viabilidad y tamaño funcional y por el impacto estratégico, Estratego resulta en la migración a seleccionar sobre la del modulo SIAF. Esta estrategia satisface además la restricción de migrar moóulos completos sobre migración parcial.

![Organización. 4n.1a. Mapa producto PGN. Comparativa](images/Organización.4n.1a.MapaproductoPGN.Comparativa.png){#fig:id-id-b5106e7c489b4c6f9cd32559208d8275 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Acciones correctivas | Goal | Administrar los riesgos asociados a cada uno de los indicadores o planes. |  |
| Acciones de acuerdo al estado (copy) | Goal | Realización de acciones específicas según el estado de los movimientos devolutivos. |  |
| Almacén (copy) | Goal | Administración de almacenes. |  |
| Asientos (copy) | Goal | Registro de asientos. |  |
| Auditoria de mediciones | Goal | Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc. |  |
| Auditorias | Goal | Gestionar el control de logs de las actividades realizadas por el usuario en sesión. |  |
| CRUD Campos (copy) | Goal | Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos. |  |
| Creación de movimiento (copy) | Goal | Generación de movimientos de acuerdo con los asientos abiertos. |  |
| Cuenta de funcionario (copy) | Goal | Gestión de cuentas de funcionarios. |  |
| Cuenta en Microsoft (Autenticación) (copy) | Goal | Autenticación mediante cuentas de Microsoft. |  |
| Cálculo de total (copy) | Goal | Cálculo automático del total basado en la información de elementos. |  |
| Código (autoincremental) (copy) | Goal | Generación automática de códigos que se reinician cada año. |  |
| Dependencias | Goal | Reportar al sistema, actividades, proyectos, indicadores. |  |
| Dependiendo del tipo de movimiento (copy) | Goal | Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros). |  |
| Elementos | Goal | Registro de elementos relacionados con los movimientos. |  |
| Estado (copy) | Goal | Seguimiento del estado de los asientos. |  |
| Fecha automática (copy) | Goal | Asignación automática de la fecha en los asientos. |  |
| Filtrar por campos (copy) | Goal | Capacidad para filtrar los movimientos devolutivos según campos específicos. |  |
| Funcionario Posesionado (copy) | Goal | Registro de información sobre funcionarios en posesión. |  |
| Funcionarios (Nómina) vs Funcionarios (Siaf) (copy) | Goal | Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina. |  |
| Generar documento (copy) | Goal | Creación de documentos relacionados con los movimientos. |  |
| Generar reportes (copy) | Goal | Creación de informes y reportes para proporcionar la información solicitada. |  |
| Grupos (Roles) | Goal | Administrar los roles y permisos dentro del sistema |  |
| Gráficos | Goal | Generar y presentar gráficos |  |
| Históricos | Goal | Almacenar y consultar históricos dentro del sistema |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Hitos mercado | Value |  |  |
| Informes | Goal | Generar documentos con los informes correspondientes. |  |
| Instrumento de cooperación | Goal | Administrar los proyectos de los cooperantes. |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración | Work Package |  |  |
| Iteración 1 | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 1 (copy) | Work Package |  |  |
| Iteración 6 | Work Package |  |  |
| Iteración 9 (copy) | Work Package |  |  |
| Login (Doble factor) (copy) | Goal | Autenticación de usuario mediante doble factor de seguridad |  |
| Movimiento Consumible (copy) | Goal | Registro de movimientos relacionados con elementos consumibles. |  |
| Movimiento devolutivo (copy) | Goal | Registro de movimientos devolutivos. |  |
| Organizaciones | Goal | Estructura principal. |  |
| Planes administrar | Goal | Administrar el plan estratégico institucional. |  |
| Planes asociar | Goal | Asociar recursos, presupuesto. |  |
| Planes generar | Goal | Generar planes estratégicos institucionales y asociar los planes de acción preventivos. |  |
| Portafolio | Goal | Gestionar el portafolio de todos los proyectos de la entidad. |  |
| Reportes | Goal | Generar reportes y exportarlos en diferentes tipos de archivo. |  |
| Sincronización con Homminis (copy) | Goal | Sincronización de datos con el sistema Homminis. |  |
| Usuarios | Goal | Administrar los usuarios del sistema |  |
| Vista CRUD (copy) | Goal | Interfaz para crear, leer, actualizar y eliminar registros en el almacén. |  |
| Vista formulario personalizada (copy) | Goal | Personalización de formularios para la creación de asientos dependiendo del almacén. |  |
| Vista tipo formulario personalizada (copy) | Goal | Personalización de formularios para ingresar datos relacionados con los asientos. |  |
| Vista tipo lista personalizada (copy) | Goal | Visualización personalizada en forma de lista con filtros por campos específicos. |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) | Capability |  |  |
| Épicas (copy) (copy) (copy) (copy) (copy) | Capability |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Organización.4n.1a.MapaproductoPGN.Comparativa-id}

<br>



## Riesgos.1. Migración funcional


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

![Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:id-id-d58fdcecc4f542a39dce288e81a395ae width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| RSG1. Estrategia CMS central | Constraint | Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br> |  |
| RSG10. Validación decisiones de arquitectura | Constraint | Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br> |  |
| RSG11. Estrategias de Migración de datos | Constraint | Discutir el alcance y los recursos para la correcta migración de datos incluídas en contrato 078, Migración Funcional SIU en atención al numeral 5.6 del anexo técnico del proyecto.<br><br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br> |  |
| RSG2. Motor de búsqueda compartido | Constraint | Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br><br> |  |
| RSG3. Estatego como BI | Constraint | Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br> |  |
| RSG4. Conciliación y gestión documental (Doku) | Constraint | Definir la ubicación de los componentes misionales de Conciliación Administrativa (SIU). Debe estar fuera de Doku.<br> |  |
| RSG5. Gestión de sesiones / caducidad | Constraint | Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br><br> |  |
| RSG6. Componentes de negocio | Constraint | Incluir el esfuerzo de creación de componentes estrcturales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br><br>Algunos componentes requeridos son:<br><br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br><br> |  |
| RSG7. Asignación de roles y permisos de Acceso  | Constraint | RSG7. Asignación de roles y permisos de Acceso
<br>Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. 
<br>Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.
<br> |  |
| RSG8. Intentos de accesos no autorizados | Constraint | RSG8. Intentos de accesos no autorizados
<br>Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.
<br> |  |
| RSG9. Alteración de datos negocio | Constraint | RSG9. Alteración de datos almacenados en Base de Datos.
<br>Se deberán asignar usuarios para la conexión de cada base de datos.<br>
<br>Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). <br>
<br>Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. 
<br>
<br> |  |
| Riesgos Técnicos Migración Funcional SUI (078) | Constraint | Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br><br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Riesgos.1.Migraciónfuncional-id}

<br>



## Riesgos.2. Modelo Riesgo RSG10

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Gestión de riesgos técnicos. RSG10. Validación decisiones de arquitectura. Agentes del riesgo, valoración, plan de acción.

versión 0.5



Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}

![Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:id-id-77e94c7adf4c47acac08d7fa168dccc3 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Agente de riesgo PGN | Business Actor | Arquitecto PGN |  |
| Agente de riesgo Softgic | Business Actor | Arquitecto Softgic |  |
| Definición tipos de datos módulos SUI | Requirement |  |  |
| Desconocimiento arq. de referencia SUI | Business Event |  |  |
| Evaluación  arquitectura de referencia SUI | Course Of-Action | La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br> |  |
| Impacto | Assessment |  |  |
| RSG10. Validación decisiones de arquitectura | Constraint | Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br> |  |
| Supervisor contrato 078-2023 | Stakeholder |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Riesgos.2.ModeloRiesgoRSG10-id}

<br>



## Riesgos.3. Modelo Riesgo RSG11

Procuraduría General de la Nación
Proyecto Migración SIU, 2023. Fase II

Gestión de riesgos técnicos. RSG11. Estrategias de migración de datos módulos migrados. Agentes del riesgo, valoración, plan de acción.

versión 0.5



Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}

![Riesgos.3. Modelo Riesgo RSG11](images/Riesgos.3.ModeloRiesgoRSG11.png){#fig:id-id-697162d0caf141e1b5ceccfc422d4bc8 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Agente de riesgo PGN | Business Actor | Arquitecto PGN |  |
| Agente de riesgo Softgic | Business Actor | Arquitecto Softgic |  |
| Definición mecanismo sincronización y extracción (lectura) | Requirement |  |  |
| Definición tipos de datos módulos SUI | Requirement |  |  |
| Evaluación tipos de datos, actividades y herramientas | Course Of-Action | La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br> |  |
| Gestión alcance tipos de datos y criterios aceptación migración datos | Business Event |  |  |
| Impacto | Assessment | Sobretrabajo del proyecto 078, esfuerzo y presupuesto. |  |
| Implementación de sincronización y lectura datos (migrados) | Course Of-Action | La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br> |  |
| RSG11. Estrategias de Migración de datos | Constraint | Discutir el alcance y los recursos para la correcta migración de datos incluídas en contrato 078, Migración Funcional SIU en atención al numeral 5.6 del anexo técnico del proyecto.<br><br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br> |  |
| Supervisor contrato 078-2023 | Stakeholder |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Riesgos.3.ModeloRiesgoRSG11-id}

<br>



## Seguridad Migracion.1a.SIU submódulos

PGN. Migración Sistemas Misionales. Fase 2.

Submódulos Sistema Único de Información. Requerimientos asociados a submódulos.

versión 0.3


Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

Los submódulos identificados tienen los siguientes roles para el SUI migrado:

1. cc:Presentación
1. cc:Servicios de aplicación
1. cc:Portales y canales
1. cc:Administración y configuración
1. cc:Almacenamiento

### Requerimientos Asociados a los Submódulos
La disposición de los módulos y submódulos presentada, denominada SUI Migración en adelante, facilita la focalización de los requerimientos encontrados en el levantamiento realizado por el actual proyecto. Así, por ejemplo, los requerimientos funcionales se encuentran concentrados en el submódulo de presentación (ver imagen).

![Seguridad Migracion.1a.SIU submódulos](images/SeguridadMigracion.1a.SIUsubmódulos.png){#fig:id-id-550a012b7cc7456ba096cdabbe1731fb width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Cliente PGN | Business Actor |  |  |
| Funcionario PGN | Business Actor |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Negocio | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| cc:Administración | Application Collaboration |  |  |
| cc:Almacenamiento | Application Collaboration | Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado. |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| cc:Portales y canales | Application Collaboration | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| cc:Presentación | Application Collaboration | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| cc:Servicios de aplicación | Application Collaboration | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br><br> |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |

Table: Elementos de la vista. {#tbl:tblelement-SeguridadMigracion.1a.SIUsubmódulos-id}

<br>



## Seguridad. Lineabase.1a.SIU componentes (corregida)

SSL


Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)


![Seguridad. Lineabase.1a.SIU componentes (corregida)](images/Seguridad.Lineabase.1a.SIUcomponentes(corregida).png){#fig:id-id-1cf93f4f9b4e49e3af39acf22f3c2445 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| Acceso Público | Device |  |  |
| Acceso Público | Device |  |  |
| Acceso Público | Device |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Service (NLB) | Application Service |  |  |
| Archivos Compartidos | Application Service |  |  |
| Autorizacion de usuario. | Resource | Los usuarios que tendrán accesos a los diferentes sistemas de información deben tener en cuenta que las credenciales de acceso son de uso personal e intransferible, por lo tanto, se deberá hacer buen uso de las contraseñas asignadas para los diferentes aplicativos de la procuraduría General de la Nación (PGN).
<br>
<br>Identificación de Mecanismos
<br>Identificación de roles, privilegios
<br>Aprovisionamiento de cuentas
<br>Establecimeinto de de Mecanismos de control de acceso
<br> |  |
| CDN Contenidos | Application Service |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Identidades | Application Service |  |  |
| Infraestructura SUI | Grouping | Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br> |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Key public | Resource |  |  |
| Key public | Resource |  |  |
| Key public | Resource |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| PGN SIU | Grouping | El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br><br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br><br> |  |
| Persistencia | Application Collaboration |  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| Scannig port | Resource | Se realiza verificación y comprobación de puertos y puertas traseras cerradas, por lo cual se ejecuta el protocolo telnet, que sirve verificar la entrada a los servidores por cualquier puerto que este abierto que no tenga las protecciones de seguridad adecuadas. |  |
| Seguridad | Application Component |  |  |
| Servidor BDD App | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br> |  |
| Servidor BDD Config | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br> |  |
| Servidor Web App | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Servidor Web Canales | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Sistema de Seguridad (LDAP) Control de acceso. | Node | Sistema de autenticación del directorio activo. |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| WAF Web Aplication firewall | Node |  |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.Lineabase.1a.SIUcomponentes(corregida)-id}

<br>



## Seguridad. Linebase.2.Portal

° P2: Servicio de adinistración de identidades y acceso basado en la nube de Microsoft.


El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la Procuraduría.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server

![Seguridad. Linebase.2.Portal](images/Seguridad.Linebase.2.Portal.png){#fig:id-id-5b47de95cd3f49d6b7dc05471bcc503a width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| Application Collaboration Sharepoint | Application Collaboration |  |  |
| Application Interface | Application Interface |  |  |
| Directivas de Aplicaciones. | Application Component | Requiere Microsoft 365 E3 con el complemento de identidades, La restricciones de acceso a las cargas de trabajo de productividad es un elemento clave, en la que los recursos locales y en la nube se autentican y se autorizan. 
<br>La autenticación por medio del AD con agentes que permiten ampliar su funcionalidad. |  |
| Directivas de acceso. | Application Component | El control de acceso se da a partir de la autenticacion del directorio activo, y la integración del Single Sign-On (SSO), con el inicio unico de sesión fluido en todas las aplicaciones. 
<br>Se tendrá en cuenta la implementación con multiples capas de autenticación, autenticacion multifactor MFA
<br> |  |
| Directivas de proteccion de aplicaciones. | Application Component |  |  |
| Directivas de riesgos de protección. * | Application Component |  |  |
| Requiere MFA * | Application Component | Se deberá incorporar el 2FA para los accesos a la informacion que reposa en el SharePoint, que permita a los usuarios iniciar sesión de forma segura a través del uso de sus dispositivos móviles.  |  |
| Requiere inicio de sesión. | Application Component | Presenta el formulario de inicio de sesión al usuario final que enviará la solicitud por medio del método POST, que envia datos de información al servidor. para que el servidor los agregue a su base de datos.  |  |
| Servidor aplicaciones Sharepoint | Application Component |  |  |
| Servidor datos Sharepoint | Application Component |  |  |
| Servidor web Sharepoint | Application Component |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.Linebase.2.Portal-id}

<br>



## Seguridad. Migracion.1.SIU modulos


Distribución de los servicios y paquetes que integran la aplicación de SUI. 

Cuantro paquetes con tecnologías respectivas
1. Angular 11 (Web)
1. API Transaccional (Node Js)
1. API Config (C#)
1. Persistencia (SQL)


![Seguridad. Migracion.1.SIU modulos](images/Seguridad.Migracion.1.SIUmodulos.png){#fig:id-id-2efb9df070e94a1b8eba05a57ed55eaf width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| API externas | Application Service |  |  |
| Administración | Grouping |  |  |
| Almacenamiento | Grouping |  |  |
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Interface | Application Interface |  |  |
| Application Service (NLB) | Application Service |  |  |
| Archivos Compartidos | Application Service |  |  |
| CDN Contenidos | Application Service |  |  |
| Config | Application Component |  |  |
| Controlador admin | Application Component |  |  |
| Controlador frontal mvl | Application Component |  |  |
| Controlador frontal web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br> |  |
| Controlador funcional | Application Component |  |  |
| Doku (gest. doc.) | Application Service |  |  |
| Identidades | Application Service |  |  |
| Interfaz de aplicación (runtime) | Application Interface | Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Interfaz de datos 3 | Application Service |  |  |
| Mensaje: JSON | Data Object |  |  |
| Modelo (neg) | Application Component |  |  |
| Office | Application Service |  |  |
| PGN SIU | Grouping | El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br><br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br><br> |  |
| Portales | Grouping | Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br> |  |
| Presentación | Grouping | Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN.  |  |
| Puerto datos 1 | Application Component |  |  |
| Puerto datos 2 | Application Component |  |  |
| RQR. Administrativos | Requirement |  |  |
| RQR. Funcionales | Requirement |  |  |
| RQR. Ingeniería | Requirement |  |  |
| RQR. Negocio | Requirement |  |  |
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| Seguridad | Application Component |  |  |
| Servicios de aplicación | Grouping | Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br> |  |
| Servidor aplicaciones Sharepoint | Application Component |  |  |
| Servidor datos Sharepoint | Application Component |  |  |
| Servidor web Sharepoint | Application Component |  |  |
| Transacciones | Application Component |  |  |
| Utilitario | Application Component |  |  |
| Vista móvil | Application Component |  |  |
| Vista web | Application Component | -	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 
<br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 
<br>4.	SERVICIOS IDENTIFICADOS:
<br>
<br>Servidor web:  Microsoft-IIS/10.0 
<br>Marco de Programación: ASP.NET
<br>Huellas digitales identificadas:  
<br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”
<br> |  |
| ccccc Proveedores contenidos | Application Service |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.Migracion.1.SIUmodulos-id}

<br>



## Seguridad.1. Requerimientos

PGN. Migración Sistemas Misionales. Fase 2.

Submódulos Sistema Único de Información. Requerimientos asociados a submódulos.

versión 0.1



![Seguridad.1. Requerimientos](images/Seguridad.1.Requerimientos.png){#fig:id-id-0c529bbdd5674f7b990738a9d12f0da2 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| RQR. Seguridad | Requirement | Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br> |  |
| RQRSEG1 | Requirement | 1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. 
<br>
<br> |  |
| RQRSEG10 | Requirement | 1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad. |  |
| RQRSEG12 | Requirement | 1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones.
<br>
<br> |  |
| RQRSEG13 | Requirement | 1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. |  |
| RQRSEG15 | Requirement | 1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet). |  |
| RQRSEG16 | Requirement | 1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad. |  |
| RQRSEG17 | Requirement | 1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad. |  |
| RQRSEG18 | Requirement |  "1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. " |  |
| RQRSEG18 | Requirement | 1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información.,id-d1a6b80e7a6c4538b922f333f4d7ec7a,requirement
<br>RQRSEG11,"1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). |  |
| RQRSEG19 | Requirement | 1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados. |  |
| RQRSEG2 | Requirement | 1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución. |  |
| RQRSEG21 | Requirement | 1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. """ |  |
| RQRSEG22 | Requirement | 1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta. |  |
| RQRSEG24 | Requirement | 1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet |  |
| RQRSEG25 | Requirement |  "1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad." |  |
| RQRSEG26 | Requirement |  "1. Para los casos que aplique se debe permitir el manejo de certificados o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. " |  |
| RQRSEG27 | Requirement |  "1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. " |  |
| RQRSEG28 | Requirement |  "1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). " |  |
| RQRSEG29 | Requirement |  "1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. " |  |
| RQRSEG3 | Requirement | 1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas. |  |
| RQRSEG4 | Requirement | 1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse. |  |
| RQRSEG5 | Requirement | 1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. |  |
| RQRSEG6 | Requirement | 1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación). |  |
| RQRSEG7 | Requirement | 1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos). |  |
| RQRSEG8 | Requirement | 1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella. |  |
| RQRSEG9 | Requirement | 1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad. |  |
| cc:Administración | Application Collaboration |  |  |
| cc:PGN SUI (módulo central) | Application Collaboration | Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br> |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |
| interfaz | Application Interface |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.1.Requerimientos-id}

<br>



## Seguridad.2. Lineabase.0.SIU Applicación

2MFA


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración



![Seguridad.2. Lineabase.0.SIU Applicación](images/Seguridad.2.Lineabase.0.SIUApplicación.png){#fig:id-id-280f63efee9b49e892eb38e7104d2d85 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
| App | Application Component |  |  |
| App PGN Móvil | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. 
<br>
<br>Protección de datos personales, 
<br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. 
<br>
<br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. 
<br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013
<br>
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br> |  |
| App PGN Web | Application Component | A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
<br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.
<br>La metodologia empleada tendrá las siguientes fases: 
<br>
<br>•	FASE DE RECONOCIMIENTO: 
<br>Se recolectará toda la información posible, usando diferentes técnicas como:
<br>o	Recopilación de dominios/IPs/puertos/servicios
<br>o	Recopilación de metadatos
<br>o	Uso de Google Dorks.
<br>
<br>•	ANÁLSIS DE VULNERABILIDADES: 
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 
<br>
<br>•	EXPLOTACIÓN: 
<br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
<br>o	Inyección de código
<br>o	Inclusión de ficheros locales o remotos
<br>o	Evasión de autenticación
<br>o	Carencia de controles de autorización
<br>o	Ejecución de comandos en el lado del servidor
<br>o	Ataques tipo Cross Site Request Forgery
<br>o	Control de errores
<br>o	Gestión de sesiones
<br>o	Fugas de información
<br>o	Secuestros de sesión
<br>o	Comprobación de las condiciones para realizar una denegación de servicio.
<br>	
<br>•	POST EXPLOTACIÓN:
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.
<br>
<br>No	URL	IP
<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
<br>135.181.185.207
<br>
<br>
<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Collaboration | Application Collaboration |  |  |
| Application Service (NLB) | Application Service |  |  |
| Autenticación | Business Object | Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones:  
<br>
<br>Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso.  
<br>
<br>Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  
<br>
<br>Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  
<br>
<br>Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación. 
<br>
<br>Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales.  
<br>
<br>Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismo de seguridad para evitar amenazas de ataques.   |  |
| Autorización | Business Object | Metodología 
<br>
<br>Los mecanismos de autorización para el acceso a los sistemas de información de la procuraduría general de la nación describen la forma de cómo se restringe el acceso a los diferentes módulos (Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros.), y que se considera un mecanismo de protección, que ayuda a reaccionar ante cualquier operación no autorizada. El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  
<br>Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros 
<br>Colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  
<br>
<br>EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. 
<br>
<br>Gestión de identidades y Control de acceso:  
<br>
<br>Gestor de identidades: En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  
<br>
<br>Gestor de roles: La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. 
<br>
<br>Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología. 
<br>
<br>REGLAS PARA LA CREACIÓN DE USUARIOS. 
<br>Identificación de Mecanismos: 
<br>
<br> 
<br>
<br>En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 
<br>
<br>Identificación de Roles y Privilegios 
<br>
<br>Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 
<br>
<br>Aprovisionamiento de cuentas 
<br>
<br>Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. 
<br>
<br>Establecimiento de mecanismos de control de acceso:  
<br>
<br>Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 
<br>
<br>Definición de Privilegios y accesos.  
<br>Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  
<br>
<br>Configuración de permisos 
<br>La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  
<br>
<br>Identificación de Mecanismos: 
<br>En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 
<br>
<br>Identificación de Roles y Privilegios 
<br>Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 
<br>
<br>Aprovisionamiento de cuentas 
<br>
<br>Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. 
<br>
<br>Establecimiento de mecanismos de control de acceso:  
<br>Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 
<br>
<br>Definición de Privilegios y accesos.  
<br>Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  
<br>
<br>Configuración de permisos 
<br>La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.   |  |
| Balanceador | Node |  |  |
| Cifrado de Datos en tránsito | Business Object | Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. 
<br>
<br>Como mecanismos se propone implementar estos  mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.
<br>
<br>Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y asi evitar manipulacion de información confidencial. La Seguridad  que brinda SSL, da garantía para acceder a los aplicativos de PNG. 
<br>
<br>Como implementar certificados SSL?
<br>Podran ser adquiridos a través del proveedor de dominios.
<br>
<br>TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envio de la información, proporcionando una autenticación solida, restringiendo la manipulación, interceptación y alteración de mensajes.
<br>La ultima versión del TLS es la 1.3
<br>
<br> |  |
| Cifrado de datos en tránsito | Business Object | Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. Como mecanismos se propone implementar estos  mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.
<br>
<br>Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y asi evitar manipulacion de información confidencial. La Seguridad  que brinda SSL, da garantía para acceder a los aplicativos de PNG. 
<br>
<br>Como implementar certificados SSL?
<br>Podran ser adquiridos a través del proveedor de dominios.
<br>
<br>TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envio de la información, proporcionando una autenticación solida, restringiendo la manipulación, interceptación y alteración de mensajes.
<br>La ultima versión del TLS es la 1.3 |  |
| Communication Network (DMZ) | Communication Network |  |  |
| Communication Network (LAN) | Communication Network |  |  |
| Communication Network (internet) | Communication Network |  |  |
| Config | Application Component |  |  |
| Firewall BDD | Node |  |  |
| Interfaz de datos 1 | Application Service |  |  |
| Interfaz de datos 2 | Application Service |  |  |
| Network Firewall/WAF | Node |  |  |
| Pruebas | Application Component | FASE DE RECONOCIMIENTO:  
<br>Se recolectará toda la información posible, usando diferentes técnicas como: 
<br>Recopilación de dominios/IPs/puertos/servicios 
<br>Recopilación de metadatos 
<br>Uso de Google Dorks. 
<br>
<br>ANÁLSIS DE VULNERABILIDADES:  
<br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades.  
<br>
<br>EXPLOTACIÓN:  
<br>Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo:  
<br>
<br>Inyección de código 
<br>Inclusión de ficheros locales o remotos 
<br>Evasión de autenticación 
<br>Carencia de controles de autorización 
<br>Ejecución de comandos en el lado del servidor 
<br>Ataques tipo Cross Site Request Forgery 
<br>Control de errores 
<br>Gestión de sesiones 
<br>Fugas de información 
<br>Secuestros de sesión 
<br>Comprobación de las condiciones para realizar una denegación de servicio. 
<br>
<br>POST EXPLOTACIÓN: 
<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.  |  |
| Punto acceso público | Application Interface | URL tipo C<br>HTTP |  |
| Servidor BDD App | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br> |  |
| Servidor BDD Config | Node | Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br> |  |
| Servidor Web App | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Servidor Web Canales | Node | Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br> |  |
| Sistema de Seguridad (LDAP) 1 | Node | Sistema de Seguridad (LDAP) 1. Control de acceso internet, 
<br>La autenticación podrá estar integrada con el directorio activo, a partir de la generación de codigo para ek ingreso con 2FA, que podrá generar un código la plataforma de correo corporativo, el cual solicitará el codigo de autenticacion y una vez ingreado podrá redirigir al sitio.<br> |  |
| Sistema de Seguridad (LDAP) 2 | Node | Sistema de Seguridad (LDAP) 2. Control de acceso internet, 
<br>La solución se podra integrar con el directorio activo, a partir de la generación del 2FA, que podrá generar un  codigo por desde la plataforma de office 365, el cual solicitará el codigo de autenticacion y una vez ingreado podrá acceder al sitio. 
<br> |  |
| www pgn com | Technology Interface |  |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.2.Lineabase.0.SIUApplicación-id}

<br>



## Seguridad.3. Datos SUI

undefined



![Seguridad.3. Datos SUI](images/Seguridad.3.DatosSUI.png){#fig:id-id-873b4fcee97c46fba4132d60a65a40b1 width=}

_Fuente: Repositorio arquitectura Mi Mutual (2023)_

<br>


### Catálogo de Elementos

| Nombre           | Tipo | Documentación | Propiedad |
|----------------|------|------|------|
|  | Meaning |  |  |
| API (administración de claves) | Business Object | Administración de claves. 
<br>Las contraseñas deberán cumplir con los requisitos de complejidad y completitud, teniendo en cuenta la longitud, caracteres numéricos, alfabéticos y especiales y que puedan ser cambiadas en un periodo de tiempo establecido, de acuerdo con los parámetros definidos en las políticas de acceso.    |  |
| Autenticación | Business Object | Los tipos de autenticacion realizadas a partir de las identidades adminsitradas de los recursos de Azure, entidades de Servicio y Certificado y entidad de servicio secreto, podran ser integrado con los dominios del DA locales.   
<br>
<br>Por lo que respecta a la autenticación, será generado con la ( Validación de nombre de usuario y contraseñas proporcionadas por el funcionario), a partir de la integracion del directorio activo LDAP. Con la aceptacion del usuario y contraseñas, se podrán ingresar a los diferentes sistemas de información de la PGN. 
<br>
<br>Se definirá politica dentro del directorio activo DA para que los usuarios que ingresen su contraseña de forma erronea, se bloquee automaticamente, asi mismo la politica para el bloqueo de los usuarios desatendidos despues de dos (2) Minutos de inactividad.  |  |
| BD PRD | Application Component | Gestor de Base de datos SQL Server. 
<br>Pemitirá enmascarar los datos a nivel de columna, teniendo en cuenta el enmascaramiento dinamico de datos (DDM).
<br>Se podrá utilizar el mecanismo de cifrado a nivel de columna para almacernar los datos confidenciales en formato de cifrado.
<br>Para el cifrado de los datos en columna se podrá temer en cuenta las funciones de cifrado (ENCRYPT_AES() y ENCRYPT_TDES(), parametros que se incorporar para cifrar los datos que contengan datos de tipo Varchar, Caracter entre otros. 
<br>para la proteccion de datos en filas de bases de datos, se tendra en cuenta mediante la instrucción transact-SQL CREATE SECURITY POLICY.  |  |
| Backup | Application Component | Para el respaldo de las bases de datos en los ecosistemas de Dev, Test, Prod se cuenta con las siguientes políticas de retención de copias de seguridad y frecuencia de copias de seguridad. 
<br>Para la base de datos de seguridad y configuración de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de 12 semanas para las copias de seguridad semanales, 12 semanas de conservación para la primera copia de seguridad de cada mes, y una conservación de 12 semanas de una copia de seguridad anual. 
<br>Para la base de datos de datos y trazabilidad de transacciones de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de 52 semanas para copias de seguridad semanales, 52 semanas de conservación para la primer copia de seguridad de cada mes, y una conservación de 52 semanas de una copia de seguridad anual. Esto con la finalidad de que al ser una base de datos transaccional precisa de una conservación completa de los años transaccionales.  |  |
| Cifrado de Datos en tránsito | Business Object | Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. 
<br>
<br>Como mecanismos se propone implementar estos  mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.
<br>
<br>Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y asi evitar manipulacion de información confidencial. La Seguridad  que brinda SSL, da garantía para acceder a los aplicativos de PNG. 
<br>
<br>Como implementar certificados SSL?
<br>Podran ser adquiridos a través del proveedor de dominios.
<br>
<br>TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envio de la información, proporcionando una autenticación solida, restringiendo la manipulación, interceptación y alteración de mensajes.
<br>La ultima versión del TLS es la 1.3
<br>
<br> |  |
| Cifrado de datos | Business Object | Establecer mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB. |  |
| Descripción de Entidades de Datos Migración SUI PGN | Grouping |  |  |
| Gestión de funcionarios PGN | Business Actor | La autenticacion de usuarios estará enmarcada en en tres factores de autenticación a partir del controlador de Dominio, y el acceso por VPN. |  |
| Hominis | Data Object |  |  |
| Ofuscar datos | Business Object | Pemitirá enmascarar los datos a nivel de columna, teniendo en cuenta el enmascaramiento dinamico de datos (DDM).
<br>Se podrá utilizar el mecanismo de cifrado a nivel de columna para almacernar los datos confidenciales en formato de cifrado.
<br>Para el cifrado de los datos en columna se podrá temer en cuenta las funciones de cifrado (ENCRYPT_AES() y ENCRYPT_TDES(), parametros que se incorporar para cifrar los datos que contengan datos de tipo Varchar, Caracter entre otros. 
<br>para la proteccion de datos en filas de bases de datos, se tendra en cuenta mediante la instrucción transact-SQL CREATE SECURITY POLICY.  |  |
| Roles de Key Vault | Business Object | Control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso. 
<br>La información que sea considerada como Información publica reservada de acuerdo con los criterios definidos en la ley 1712 de 2014 “Por medio del cual se crea la ley de transparencia y del derecho de acceso a la información pública nacional.”,, podrá ser consultada solo por el personal autorizado definido de acuerdo con el control de acceso basado en roles.  Los perfiles o roles definiran el acceso a la información. 
<br>
<br>Para los documentos restringidos  que requieran firma por parte del lider del proceso o propietario, se propone revisar la implementacion de un dispositivo criptográfico con uso de (CERTIFICADOS y FIRMA DIGITAL) con token integrado que podra ser conectado en el puerto USB de la maquina del usuario.
<br>La aprobacion de los documentos por intermedio de esta firma permitirá la aprobación, integridad de los documentos , seguridad y validez juridica. Se propone la gestión con un  proveedor de certificado del ambito nacional.
<br>
<br>EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones.  |  |
| Security Administrator | Business Actor | La autenticacion de usuarios estará enmarcada en en tres factores de autenticación:
<br>control de acceso basado en roles (RBAC), mecanismo de control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso.
<br>Conexión de accecso por DA de Azure: Servicio de administración de acceso e identidades basado en la nube.
<br>Red Privada Virtual de Azure:  bloque de compilación fundamental para las redes privadas en Azure |  |
| WAF | Node | El WAF es la medida de implementacion del muro de protección (firewall) de Aplicaciones WEB del SUI necesario para el control de las peticiones realizadas desde fuera del perímetro de red y hacia los sistemas de Informacion de la PGN. <br> |  |

Table: Elementos de la vista. {#tbl:tblelement-Seguridad.3.DatosSUI-id}

<br>






# Vistas de Arquitectura Mi Mutual
* [Mi Mutual Central](#mi-mutual-central)
	* [MiMutual. 1. Contexto](#mimutual.-1.-contexto)
	* [MiMutual. 2. Contenedores](#mimutual.-2.-contenedores)
	* [MiMutual. 3. Dominios](#mimutual.-3.-dominios)
	* [MiMutual. 4. Aplicación](#mimutual.-4.-aplicación)
	* [MiMutual. 4a3. Dependencias](#mimutual.-4a3.-dependencias)
	* [MiMutual. 5. Físico (despliegue)](#mimutual.-5.-físico-despliegue)
	* [MiMutual. 6. Infraestructura](#mimutual.-6.-infraestructura)
	* [MiMutual. 7. Datos. Negocio](#mimutual.-7.-datos.-negocio)
	* [MiMutual. 7a. Datos. Aplicación](#mimutual.-7a.-datos.-aplicación)
	* [MiMutual. 7b. Datos. Relaciones](#mimutual.-7b.-datos.-relaciones)
* [Cotizador Web](#cotizador-web)
	* [Cotizador. 1. Contexto](#cotizador.-1.-contexto)
	* [Cotizador. 2. Contenedores](#cotizador.-2.-contenedores)
	* [Cotizador. 4. Aplicación](#cotizador.-4.-aplicación)
	* [Cotizador. 4a. Aplicación. Servicios](#cotizador.-4a.-aplicación.-servicios)
	* [Cotizador. 4a. Dependencias](#cotizador.-4a.-dependencias)
	* [upd](#upd)
	* [Cotizador. 7. Datos. Negocio](#cotizador.-7.-datos.-negocio)


<div style="page-break-before: always;"></div>
\newpage

# Mi Mutual Central
## MiMutual. 1. Contexto
![Diagram: MiMutual. 1. Contexto](images/MiMutual.1.Contexto.png){#fig:MiMutual.1.Contexto width=}

## Contexto Mi Mutual Central
El sistema principal de fondo Mi Mutual Central es la composición de las funciones de negocio de la Unidad de Solidaridad de Coomeva. Las funciones de negocio referidas, como Gestión Beneficiarios, Certificados, Gestión Beneficiarios, aparecen dentro del componente principal en la imagen.

Este entregable documenta los diferentes módulos y componentes que hacen parte de la estructura de una aplicación en Angular 12 y como es su interacción para conformar una arquitectura robusta y escalable para aplicaciones de gran tamaño.

Las librerías Spring Boot Security y Spring Boot Oauth2 proveen características de seguridad entre Vista (Angular 2) y Controlador. Estas son responsables de que únicamente permita el acceso si se está autenticado. Además, para realizar el proceso de autenticación se delega a la aplicación SISPRO (Coomeva) que funciona como un servidor de autenticación.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Administración facturación y recaudo**|application-function|Administración de la facturación y recaudo diario de los productos<br>||
|**Autorizaciones**|application-function|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones mediante el servicio del flujo de procesos||
|**Certificados**|application-function|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.<br>||
|**Configuración factores cálculos, contribuciones**|application-function|1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||
|**Gestión Beneficiarios**|application-function|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>||
|**Gestión Reclamaciones**|application-function|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br>||
|**Gestión Usuarios**|application-function|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>||
|**Gestión fondo mutual y auxilio funerario**|application-function|Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br>||
|**Interoperabilidad entre sistemas Coomeva**|application-function|Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br>||
|**Seguridad**|application-function|||
|**Simuladores**|application-function|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br>||
|**Autorizaciones**|application-service|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos.<br>||
|**Certificados**|application-service|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.<br>||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||
|**Facturación y Recaudo**|application-service|Administración de la facturación y recaudo diario de los productos.<br>||
|**Gestión de Beneficiarios**|application-service|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.<br>||
|**Gestión de Reclamos**|application-service|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br>||
|**Unidad de Solidaridad y Seguros**|business-function|Unidad de Solidaridad y Seguros de la Cooperativa||
|**Restricciones de Arquitectura**|constraint|## Restricciones de Arquitectura (Atributos)<br>1. Disponibilidad. Se requiere que el sistema esté disponible 7 X 24, el servicio prestado al cliente no se limita a horarios de oficina pues las compras pueden darse en cualquier momento<br>1. Escalabilidad. Se requiere que el sistema pueda llegar a atender hasta 1.000 clientes, para esto se requiere que el sistema se pueda extender horizontalmente de tal manera que pueda tener instalado en varios servidores para atender esta cantidad de usuarios. Todas las aplicaciones desarrolladas podrán ser escaladas horizontalmente para atender la demanda relacionada con el crecimiento de la empresa.<br>1. Reutilización. Se requiere que el sistema permita reutilizar sus componentes para prestar el mismo servicio a otras aplicaciones de la compañía. Para esto se va a desarrollar la aplicación utilizando servicios, separados y con asignación de responsabilidades, propias, de tal manera de que, si se requiere exponer servicios web sobre estas funcionalidades, no requiere cambios en la aplicación.<br>1. Autenticación. Autenticación es el proceso para determinar que alguien o un sistema es quien dice ser. Uso de estándar Oauth2 y JSON Web Token – JWT, para gestión de autenticación de servicios de la aplicación.<br>1. Autorización. Autorización se refiere a la validación que realiza un sistema para determinar si un usuario puede usar cierta funcionalidad. Uso de API de seguridad de Spring (spring-security) + Oauth2<br>1. Interoperabilidad – Movilidad. Interoperabilidad se refiere a la habilidad de un sistema de interactuar y comunicarse con sistemas heterogéneos a través de interfaces completamente definidas. Uso de estándar de web services REST + JSON.<br>1. Facilidad de Uso. Se refiere a la facilidad con que las personas pueden utilizar el sistema porque facilitan la lectura de los textos, descargan rápidamente la información y presentan funciones y menús sencillos, por lo que el usuario encuentra satisfechas sus consultas y cómodo su uso.<br>1. Verificación (QA). Es la capacidad del producto software que hace posible que el software modificado sea probado.<br>||
|**Características Funcionales**|requirement|## Características Funcionales Mi Mutual<br>1. Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br>1. Administración de la facturación y recaudo diario de los productos<br>1. Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br>1. Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>1. Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>1. Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br>1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||

<br>

## MiMutual. 2. Contenedores
![Diagram: MiMutual. 2. Contenedores](images/MiMutual.2.Contenedores.png){#fig:MiMutual.2.Contenedores width=}

La organización de componentes utilizada Mi Mutual, impulsada por Spring Web, antepone como interfaz de uso un API REST. La interfaz se articula con tres componentes utilitarios: Controller, Service y Repository, los cuales están mediados por el componente misional, Mi Mutual, en la imagen. 

Esta decisión de organización de los componentes de Mi Mutual, incluyendo al misional del mismo nomnbre, permite estructurar la aplicación de una manera ordenada y, en línea con las restricciones de arquitectura exigidas al sistema, facilita la efectividad de las extensiones y el mantenimiento.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**Registro Servicios: eureka**|application-component|Eureka: Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.<br>|*modulo:* mimutual<br>|
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**Ruteador (proxy): gateway**|application-component|Gateway: Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|

<br>

## MiMutual. 3. Dominios
![Diagram: MiMutual. 3. Dominios](images/MiMutual.3.Dominios.png){#fig:MiMutual.3.Dominios width=}

La división por dominios busca facilitar la administración los servicios de la plataforma Mi Mutual que son comunes entre aplicaciones de Mi Mutual, tales como Asociados, Reclamaciones, Protecciones y otros servicios trasversales como Utilidades, Reglas de negocio, Procesos de negocio (BPM), Auditoria, Flujos de trabajo:flowable.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Flujo Trabajo: flowable**|application-component|Contiene todas las funcionalidades relacionadas con el motor de BPM Flowable, como gestión de tareas, instancias de nuevas procesos y asignación de tareas.|*modulo:* mimutual<br>|
|**Integración**|application-component|Contiene todas las funcionalidades relacionadas con integraciones a otros servicios y otras bases de datos.|*modulo:* mimutual<br>|
|**Procesos negocio**|application-component|Contiene todas las funcionalidades relacionadas con los flujos de JBPM, actualmente se hace solo para acceso a datos de la base de datos de JBPM.|*modulo:* mimutual<br>|
|**Reglas negocio**|application-component|Contiene todas las funcionalidades relacionadas con la validación de reglas usadas en otros microservicios.|*modulo:* mimutual<br>|
|**SISPRO**|application-component|Contiene todas las funcionalidades relacionadas con la autenticación y autorización al sistema Mi mutual (Este componente se adopta a la arquitectura de microservicios de MiMutual)|*modulo:* mimutual<br>|
|**Utilidades**|application-component|Contiene todas las funcionalidades útiles y trasversales a los microservicios, como envió de correos, generación de archivos Excel, PDF desde Jasper y consulta de parámetros.|*modulo:* mimutual<br>|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Auditoria**|application-component|Contiene todas las funcionalidades relacionadas con el almacenamiento de la auditoria de las peticiones de la aplicación.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>|

<br>

## MiMutual. 4. Aplicación
![Diagram: MiMutual. 4. Aplicación](images/MiMutual.4.Aplicación.png){#fig:MiMutual.4.Aplicación width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**Mi Mutual Presentación**|application-component|||
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**Simulador**|application-component|||
|**Vinculación**|application-component|||
|**app: Cotización y Ventas**|application-component|||
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Autorizaciones**|application-service|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos.<br>||
|**Certificados**|application-service|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.<br>||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||
|**Facturación y Recaudo**|application-service|Administración de la facturación y recaudo diario de los productos.<br>||
|**Gestión de Beneficiarios**|application-service|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.<br>||
|**Gestión de Reclamos**|application-service|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>||
|**SS02.acumulados - portafolio**|application-service|||
|**SS02.aportes - estatutarios**|application-service|||
|**SS02.distribuciones**|application-service|||
|**SS02.notas - aclaratorias**|application-service|||
|**SS02.porcentaje - cuota**|application-service|||
|**SS02.protecciones - mim - actuaria**|application-service|Servicios de aplicación central que el Cotizador Web usa. Protección.||
|**SS02.protecciones- desmemebracion - accidente**|application-service|Servicios de aplicación central que el Cotizador Web usa. Protección.||
|**SS02.proveedor**|application-service|||
|**SS02.proyeccion**|application-service|||
|**SS02.proyeccion**|application-service|||
|**SS02.proyecto - vida**|application-service|||
|**SS02.proyecto - vida**|application-service|||
|**SS02.relacion - planes**|application-service|||
|**SS02.relacion - planes**|application-service|||
|**SS02.reporte - cotizacion**|application-service|Servicios de aplicación central que el Cotizador Web usa. Reportes.||
|**SS02.reporte - estado - cotizacion**|application-service|Servicios de aplicación central que el Cotizador Web usa. Cotización.<br>||
|**SS02.tipo - plan**|application-service|||
|**SS02.util - archivos**|application-service|||
|**SS02.util - municipios**|application-service|||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br>||
|**Analistas**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Asesores**|business-role|Asesores integrales||
|**Auxiliares servicio**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Fidelización**|business-role|Ejecutivos de Fidelización||
|**Profundización**|business-role|Ejecutivos de Profundización||
|**Unidad de Solidaridad y Seguros**|grouping|La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

<br>

## MiMutual. 4a3. Dependencias
![Diagram: MiMutual. 4a3. Dependencias](images/MiMutual.4a3.Dependencias.png){#fig:MiMutual.4a3.Dependencias width=}

### Paquetes y Dependencias Mi Mutual
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
* Mi<utualFLowable
* MiMutualSpringCloud

<br>

### Entorno de Desarrollo
Para la etapa de desarrollo la aplicación estará configurada para levantar un servidor Tomcat embebido el cual se encuentra configurado el pom.xml y el cual permite trabajar de forma mucho más ágil.

Para el despliegue entre ambientes se manejará maven profiles con el fin de agregar las configuraciones de cada uno de estos.

El código fuente está alojado en un repositorio de Coomeva.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**pkg: Config**|application-component|config: Almacenan todas las clases para la configuración del proyecto Spring.||
|**pkg: Controller**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.||
|**pkg: DTO**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Model**|application-component|model: Almacenan todas las clases (entities) que constituyen el modelo de datos.<br>||
|**pkg: Reglas**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Repository**|application-component|repository: Almacenan todas las interfaces y clases que constituyen el acceso a<br>datos.<br>||
|**pkg: Security**|application-component|security: Almacenan todas las clases que permiten la configuración de seguridad de la aplicación.<br>||
|**pkg: Service**|application-component|service: Almacenan todas las interfaces que constituyen la lógica de negocio.||
|**pkg: Service Impl**|application-component|service.impl: Almacenan todas las clases que implementan la funcionalidad de las interfaces de service que constituyen la lógica de negocio.||
|**pkg: Spring Cloud**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Util**|application-component|util: Almacenan todas las clases de utilería para la aplicación.||
|**pkg: Web**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||

<br>

## MiMutual. 5. Físico (despliegue)
![Diagram: MiMutual. 5. Físico (despliegue)](images/MiMutual.5.Físico(despliegue).png){#fig:MiMutual.5.Físico(despliegue) width=}

Especificaciones de despliegue Mi Mutual, 2023, componente central.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring boot
* Tecnologías para el frontend: Angular 12
* Librería de Estilos: Bootstrap 4
* Servidor web (HTTP 1.1): Apache 2.X



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>|
|**Directorio: eureka: tomcat**|system-software|||
|**Entorno Java: JRE 1.8**|system-software|||
|**Gateway: tomcat**|system-software|||
|**Identidad: spring cloud security**|system-software|||
|**Secuencias: zipking: tomcat**|system-software|||
|**Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

<br>

## MiMutual. 6. Infraestructura
![Diagram: MiMutual. 6. Infraestructura](images/MiMutual.6.Infraestructura.png){#fig:MiMutual.6.Infraestructura width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Spring cloud security**|node|Se implementará Spring Boot Security y Spring Boot Oauth2 las cuales proveen una capa básica de seguridad entre Vista (Angular 2) y Controlador, obligando a que únicamente permita el acceso si se está autenticado si lo requiere, además para realizar el proceso de autenticación se utilizara la aplicación SISPRO (Coomeva) la cual funciona como un servidor de autenticación.<br>La validación de roles se realizará a nivel de peticiones en el api rest según corresponda, siempre y cuando sea necesario, también se tendrán en cuenta otras validaciones como:<br>• Las credenciales que proporcionó no son válidas.<br>• El usuario esta deshabilitado.<br>• Las credenciales de usuario han caducado.<br>• La cuenta de usuario ha caducado.<br>• La cuenta de usuario está bloqueada.||
|**DB2 AS400: SIPASDB**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * Sql Server (...), * Oracle (...)||
|**Oracle DB: (...)**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...)||
|**SQL Server: (...)**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

<br>

## MiMutual. 7. Datos. Negocio
![Diagram: MiMutual. 7. Datos. Negocio](images/MiMutual.7.Datos.Negocio.png){#fig:MiMutual.7.Datos.Negocio width=}

### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00. Reclamación**|business-object|Reclamacion es cuando el asociado desea que le paguen una cobertura, Ejemplo cumplio perseverancia ya tiene 60 años y cobra.<br>||
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Cotización**|business-object|||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Operaciones**|business-object|||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Plan configuración**|business-object|Plan de configuración: producto pólizas seguros.<br>||
|**DAT00.Portafolios de asociados**|business-object|||
|**DAT00.Venta**|business-object|||
|**DAT00.Vinculación**|business-object|||

<br>

## MiMutual. 7a. Datos. Aplicación
![Diagram: MiMutual. 7a. Datos. Aplicación](images/MiMutual.7a.Datos.Aplicación.png){#fig:MiMutual.7a.Datos.Aplicación width=}

Estructuras de datos específicas a la plataforma. Modelo de negocio para las aplicaciones. 

Modelo físico facilitadas por Coomeva, corte del 2 de mayo de 2022. Contiene las estructuras de configuración de fondo, cliente, planes, cobertura y planes de coberturas.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT01.ADICIONAL PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.BENEFICIARIO ASISTENCIA**|data-object|||
|**DAT01.BENEFICIO PREEXISTENCIA**|data-object|||
|**DAT01.CAMPANA RELACION PLAN COBERTURA**|data-object|||
|**DAT01.CANAL**|data-object|||
|**DAT01.CANAL EVENTO**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION COBERTURA**|data-object|||
|**DAT01.CICLO FACTURACION CONFIG MOV**|data-object|||
|**DAT01.CLIENTE**|data-object|||
|**DAT01.COBERTURA**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO COBERTURA**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO PAGO**|data-object|||
|**DAT01.CONDICION PAGO ANTIGUEDAD**|data-object|||
|**DAT01.CONDICION PAGO EVENTO**|data-object|||
|**DAT01.CONDICION PLAN**|data-object|||
|**DAT01.CONDICION VENTA**|data-object|||
|**DAT01.CONDICIONES**|data-object|||
|**DAT01.CONFIGURACION DIAGNOSTICOS**|data-object|||
|**DAT01.CONFIGURACION MOV DETALLE**|data-object|||
|**DAT01.CONFIGURACION MOVIMIENTO**|data-object|||
|**DAT01.CONTROL ARE TECNICA**|data-object|||
|**DAT01.CONTROL CUMULO**|data-object|||
|**DAT01.CUMULO**|data-object|||
|**DAT01.CUMULOS COBERTURA**|data-object|||
|**DAT01.CUMULOS PLAN COBERTURA**|data-object|||
|**DAT01.DEDUCIBLE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA**|data-object|||
|**DAT01.DOCUMENTO REQUISITO**|data-object|||
|**DAT01.DOCUMENTOS SOLICITUD EVENTO**|data-object|||
|**DAT01.ENFERMEDAD GRAVE**|data-object|||
|**DAT01.ENFERMEDAD GRAVE PLAN COBERTURA**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.EVENTO COBERTURA**|data-object|||
|**DAT01.EXCLUSION**|data-object|||
|**DAT01.EXCLUSION COBERTURA**|data-object|||
|**DAT01.EXCLUSION PLAN COBERTURA**|data-object|||
|**DAT01.EXCLUSION PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.FAC CONCEPTO PLAN**|data-object|||
|**DAT01.FONDO**|data-object|||
|**DAT01.FORMULA PLAN**|data-object|||
|**DAT01.GENERO REQUISITO**|data-object|||
|**DAT01.LIQUIDACION**|data-object|||
|**DAT01.LIQUIDACION DETALLE**|data-object|||
|**DAT01.NIVEL RIESGO COBERTURA**|data-object|||
|**DAT01.NIVEL RIESGO CONFIG MOV**|data-object|||
|**DAT01.NIVELES NOTAS PLAN COBERTURA**|data-object|||
|**DAT01.NOTA ACLARATORIA PLAN**|data-object|||
|**DAT01.NOTIFICACION EVENTO**|data-object|||
|**DAT01.ORIGEN COBERTURA COBERTURA**|data-object|||
|**DAT01.PERIODO CARENCIA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PLAN**|data-object|||
|**DAT01.PLAN CANAL VENTA**|data-object|||
|**DAT01.PLAN COBERTURA**|data-object|||
|**DAT01.PLAN COBERTURA DEPENDIENTE**|data-object|||
|**DAT01.PLAN COBERTURA EDAD**|data-object|||
|**DAT01.PLAN COBERTURA REQUISITO**|data-object|||
|**DAT01.PLAN FRECUENCIA FACTURACION**|data-object|||
|**DAT01.PLAN MEDIO FACTURACION**|data-object|||
|**DAT01.PLAN NIVEL RIESGO**|data-object|||
|**DAT01.PLAN OBLIGATORIO**|data-object|||
|**DAT01.PLAN PARENTESCO**|data-object|||
|**DAT01.PLAN PERSEVERANTE**|data-object|||
|**DAT01.PORCENTAJE CUOTA**|data-object|||
|**DAT01.PRODUCTO COBERTURA**|data-object|||
|**DAT01.PRODUCTO EXCLUYENTE**|data-object|||
|**DAT01.PROMOCION CANAL**|data-object|||
|**DAT01.PROMOCION CONDICION**|data-object|||
|**DAT01.PROMOCION PLAN COBERTURA**|data-object|||
|**DAT01.PROMOTOR CANAL**|data-object|||
|**DAT01.RECONOCIMIENTO POR PERMANENCIA**|data-object|||
|**DAT01.REGLAS EXCEPCIONES**|data-object|||
|**DAT01.REQUISITO CONTROL MEDICO**|data-object|||
|**DAT01.RESPONSABLE PERSONA**|data-object|||
|**DAT01.SOLICITUD EVENT**|data-object|||
|**DAT01.SOLICITUD EVENTO DETALLE**|data-object|||
|**DAT01.SUBLIMITE COBERTURA**|data-object|||
|**DAT01.SUBSISTENTE PLAN COBERTURA**|data-object|||
|**DAT01.SUBSISTENTE PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.TIPO MOVIMIENTO**|data-object|||
|**DAT01.TIPO PROCESO CUMULO**|data-object|||
|**DAT01.TRANSACCION EXCLUSION**|data-object|||
|**DAT01.TRANSACCION EXCLUSION COBERTURA**|data-object|||
|**DAT01.TRANSACCION REQUISITO **|data-object|||
|**DAT01.VALOR ASEGURADO**|data-object|||
|**DAT01.VALOR ASEGURADO PLAN COBERTURA**|data-object|||
|**DAT01.VALOR ASEGURADO TOPE**|data-object|||
|**DAT01.VALOR CUOTA PLAN COBERTURA**|data-object|||
|**DAT01.VALOR RESCATE**|data-object|||

<br>

## MiMutual. 7b. Datos. Relaciones
![Diagram: MiMutual. 7b. Datos. Relaciones](images/MiMutual.7b.Datos.Relaciones.png){#fig:MiMutual.7b.Datos.Relaciones width=}

### Entidades de Negocio Mi Mutual

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Plan configuración**|business-object|Plan de configuración: producto pólizas seguros.<br>||
|**DAT00.Portafolios de asociados**|business-object|||
|**DAT01.ADICIONAL PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.CAMPANA RELACION PLAN COBERTURA**|data-object|||
|**DAT01.CANAL**|data-object|||
|**DAT01.CANAL EVENTO**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION**|data-object|||
|**DAT01.CUMULOS PLAN COBERTURA**|data-object|||
|**DAT01.DEDUCIBLE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA**|data-object|||
|**DAT01.DOCUMENTO REQUISITO**|data-object|||
|**DAT01.ENFERMEDAD GRAVE**|data-object|||
|**DAT01.ENFERMEDAD GRAVE PLAN COBERTURA**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.SUBLIMITE COBERTURA**|data-object|||
|**DAT01.TIPO MOVIMIENTO**|data-object|||
|**DAT01.TIPO PROCESO CUMULO**|data-object|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Cotizador Web
## Cotizador. 1. Contexto
![Diagram: Cotizador. 1. Contexto](images/Cotizador.1.Contexto.png){#fig:Cotizador.1.Contexto width=}

### Contexto Mi Mutual Web
La aplicación Cotizador Web hace parte de los módulos de interfaz web de Mi Mutual Central, representado por API Mi Mutual en el diagrama. Realizar cotizaciones de los planes de protección luego de la vinculación del asociado.

La estructura por módulos permite realizar aplicaciones escalables y robustas ya que permite organizar las partes de la aplicación, la organización en bloques, extender la aplicación con funcionalidades de libreras externas, proporcionar un entorno de resolución de plantillas y además permite especificar la forma de la carga de cada uno de los componentes y servicios que conforman un módulo.

### Módulos Externos
Los módulos externos son todas y cada una de las herramientas que se utilizan para complementar con funcionalidades ya desarrolladas y tomadas desde un repositorio externo (NPM).

* TranslateModule: Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core
* NgxMaskModule: Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask
* JwtModule: Manejo de token. Documentación: https://github.com/auth0/angular2-jwt
* sweetalert2: Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/
* ngx-ui-loader: Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader
* Ngprime: Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/
* chart.js: componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/
* classlist.js: componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/
* cronstrue: componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue
* file-saver: componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme
* ngx-tinymce: Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/
* quill: componente para editor html Documentación: https://quilljs.com/

<br>

### Servicios Transversales 

* AuthGuard: Validación de existencia de autenticación
* DeaciveGuard: Validación de salida de un componente
* ErrorInterceptor: Interceptor de Errores del back
* JwtInterceptor: Interceptor para inyectar el token
* AutenticationService: Métodos para completar la autenticación
* TypesService: Consumo de servicios de parametrización
* IdleTimeoutService: Verificación de timeout del token

<br>


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**(web) Cotizador**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**(web) Proveedores**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**(web) Reportes**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**(web) admin Páginas**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**Aplicativo**|application-function|Grupo de funcionalidades y entidades (datos) específicas del Cotizador Web.<br>|*modulo:* cotizador<br>|
|**Asociados**|application-function|Grupo de funcionalidad (servicios) de Asociados del Cotizador Web.<br>|*modulo:* cotizador<br>|
|**Cliente**|application-function|Grupo de funcionalidad (servicios) de Asociados del Cotizador Web.|*modulo:* cotizador<br>|
|**Configuracn.**|application-function|Grupo de funcionalidad (servicios) de Planes de Configuración del Cotizador Web.|*modulo:* cotizador<br>|
|**Cotizaciones**|application-function|Grupo de funcionalidad (servicios) de Cotización de la aplicación.|*modulo:* cotizador<br>|
|**Interfaz gráfica**|application-function|Módulo interno (carpeta de proyecto) contenedor de las plantiilas de páginas web del Cotizador.<br>|*modulo:* cotizador<br>|
|**Módulos Compartidos**|application-function|Librerías de software base que el Cotizador Web requiere. Dependencias a paquetes de software de base, distintas a los módulos de negocio, necesarios para la ejecución de tareas utilitarias del Cotizador, tales como comunicación, políticas de seguridad, especificación de objetos globales de interfaz, transporte, transformación, entre otras.<br>|*modulo:* cotizador<br>|
|**Util**|application-function|En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br>|*modulo:* cotizador<br>|
|**admin Servicios**|application-function||*modulo:* cotizador<br>|
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|
|**Autenticación: authgard**|application-service|||
|**Interceptor: errorinterceptor**|application-service|||
|**Parametrización: typeservice**|application-service|||
|**Sesión admin: idletimeout**|application-service|||

<br>

## Cotizador. 2. Contenedores
![Diagram: Cotizador. 2. Contenedores](images/Cotizador.2.Contenedores.png){#fig:Cotizador.2.Contenedores width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**Control**|application-function|||
|**Ruteos**|application-function|||
|**Servicios**|application-function|||
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|
|**Cliente HTTP / HTTPS**|application-interface|||

<br>

## Cotizador. 4. Aplicación
![Diagram: Cotizador. 4. Aplicación](images/Cotizador.4.Aplicación.png){#fig:Cotizador.4.Aplicación width=}

La organización de la aplicación Cotizador Web Mi Mutual, como capa de presentación y servicios, plantea una estructura basada en la referencia de aplicaciones Angular 12. Las características de esta estructura (referida por Angular) está orientada al crecimiento (tamaño) de la aplicación, la escalabilidad y al rendimiento. La aplicación web Cotizador está diseñada (modulos) para manejar la carga por demanda del contenido.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**MOD0.JwtModule**|application-component| Manejo de token. Documentación: https://github.com/auth0/angular2-jwt||
|**MOD0.Ngprime**|application-component| Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/||
|**MOD0.NgxMaskModule**|application-component| Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask||
|**MOD0.TranslateModule**|application-component| Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core||
|**MOD0.chart.js**|application-component| Componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/||
|**MOD0.classlist.js**|application-component|Componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/||
|**MOD0.cronstrue**|application-component| Componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue||
|**MOD0.file-saver**|application-component| Componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme||
|**MOD0.ngx-tinymce**|application-component|Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/||
|**MOD0.ngx-ui-loader**|application-component|Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader||
|**MOD0.quill**|application-component|Ccomponente para editor html Documentación: https://quilljs.com/||
|**MOD0.sweetalert2**|application-component|Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/||
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Administración**|application-service|Servicios de aplicación central que el Cotizador Web usa. Administración.<br>||
|**Application Service**|application-service|Otros servicios del contexto de Mi Mutual Central.<br>||
|**Cliente**|application-service|Servicios de aplicación central que el Cotizador Web usa. Operaciones sobre Clientes.<br>||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.<br>||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>||
|**Multiactiva**|application-service|Servicios de aplicación central que el Cotizador Web usa. Multiactiva.<br>||
|**SS02.protecciones - mim - actuaria**|application-service|Servicios de aplicación central que el Cotizador Web usa. Protección.||
|**SS02.protecciones- desmemebracion - accidente**|application-service|Servicios de aplicación central que el Cotizador Web usa. Protección.||
|**SS02.reporte - cotizacion**|application-service|Servicios de aplicación central que el Cotizador Web usa. Reportes.||
|**SS02.reporte - estado - cotizacion**|application-service|Servicios de aplicación central que el Cotizador Web usa. Cotización.<br>||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br>||
|**Analistas**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Asesores**|business-role|Asesores integrales||
|**Auxiliares servicio**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Módulos Externos**|grouping|||
|**Unidad de Solidaridad y Seguros**|grouping|La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

<br>

## Cotizador. 4a. Aplicación. Servicios
![Diagram: Cotizador. 4a. Aplicación. Servicios](images/Cotizador.4a.Aplicación.Servicios.png){#fig:Cotizador.4a.Aplicación.Servicios width=}

Composición interna de los servivios de Mi Mutual Central, Mi Mutual Web, Cotizador Web. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador**|application-component|Controlador interno del servicio. Punto de entrada a la lógica de expuesta.||
|**Interfaz**|application-component|Interfaz de inversión de dependencia a las clases del servicio.<br>||
|**Interfaz datos**|application-component|Acceso a datos del modelo del contexto de Mi Mutual Central.<br>||
|**Operación**|application-component|||
|**Servicio**|application-component|Exposición de componentes de negocio.<br>||
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Application Service**|application-service|Otros servicios del contexto de Mi Mutual Central.<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.<br>||
|**Integración**|application-service|||

<br>

## Cotizador. 4a. Dependencias
![Diagram: Cotizador. 4a. Dependencias](images/Cotizador.4a.Dependencias.png){#fig:Cotizador.4a.Dependencias width=}

### Paquetes y Dependencias Cotizador Web
Módulos y componentes que hacen parte de la estructura de la aplicación Cotizador Web (basado en Angular 12 [^1]).

[^1]: Angular 2 tiene una arquitectura Modelo Vista Controlador (MVC) con el fin de facilitar el desarrollo gestionado.

### Módulos Cotizador Web
La estructura por módulos actual apunta a la escalabilidad y mantenimiento del Cotizador en términos de: organizar las partes de la aplicación, organización los bloques, extender la aplicación con libreras externas, proporcionar un entorno de resolución de plantillas y además, distribuir las cargas de los componentes y servicios que usa la aplicación.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**pkg: admin**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: administración**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: asociados**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: auth**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cliente**|application-component|controladores web de cliente. Reúne las clases que constituyen el modelo de entrada/salida de la interfaz gráfica de Clientes. Distinto al paquete admin controlador Clientes (pkg: web.clientes).<br>|*modulo:* cotizador<br>|
|**pkg: clientes**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación. Disitnto al paquete web de Cliente (pkg: admin.cliente).|*modulo:* cotizador<br>|
|**pkg: componentes**|application-component|controller: contiene las clases que constituyen los llamados a librerías compartidas de la aplicación.|*modulo:* cotizador<br>|
|**pkg: config**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotizaciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotización**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: directivas**|application-component|controller: contiene las clases que constituyen los llamados a librerías compartidas de la aplicación.|*modulo:* cotizador<br>|
|**pkg: home**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: interfaces**|application-component|controller: contiene las clases que constituyen los llamados a librerías compartidas de la aplicación.|*modulo:* cotizador<br>|
|**pkg: modelos**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: multiactiva**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: protecciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: proveedores**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reporte**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reportes**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: transporte**|application-component|controller: contiene las clases que constituyen los llamados a librerías compartidas de la aplicación.|*modulo:* cotizador<br>|
|**pkg: util**|application-component|controller: contiene las clases que constituyen los llamados a librerías compartidas de la aplicación.|*modulo:* cotizador<br>|
|**pkg: utilidades**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**(web) Cotizador**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**(web) admin Páginas**|application-function|Grupo de páginas web del cotizador.<br>|*modulo:* cotizador<br>|
|**Aplicativo**|application-function|Grupo de funcionalidades y entidades (datos) específicas del Cotizador Web.<br>|*modulo:* cotizador<br>|
|**Interfaz gráfica**|application-function|Módulo interno (carpeta de proyecto) contenedor de las plantiilas de páginas web del Cotizador.<br>|*modulo:* cotizador<br>|
|**Módulos Compartidos**|application-function|Librerías de software base que el Cotizador Web requiere. Dependencias a paquetes de software de base, distintas a los módulos de negocio, necesarios para la ejecución de tareas utilitarias del Cotizador, tales como comunicación, políticas de seguridad, especificación de objetos globales de interfaz, transporte, transformación, entre otras.<br>|*modulo:* cotizador<br>|
|**Util**|application-function|En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br>|*modulo:* cotizador<br>|
|**admin Servicios**|application-function||*modulo:* cotizador<br>|

<br>

## upd
![Diagram: upd](images/upd.png){#fig:upd width=}

### Especificaciones de Despliegue Cotizador Web
Detalles de configuración del proyecto Mi Mutual en el espacio de trabajo local (2022).

#### Recursos Requeridos
* Git. Se debe instalar git para poder realizar la clonación de cada uno de los proyectos mas adelante.
* Instalación SmartGit. Se debe instalar Smartgit para poder realizar la clonación de cada uno de los proyectos mas adelante, este es opcional ya que es una interfaz gráfica de git mas amigable para el usuario en caso que no desee trabajar con la consola.
* DBeaver. Se debe instalar DBeaver para poder acceder a la base de datos. 
* Instalación Maven. Se debe instalar maven para poder compilar los proyectos, nos debemos asegurar de instalar la versión 3.6.3, en caso que no se encuentra en la página oficial copiar la carpeta que esta en el repositorio a archivo de programas. 
* Java 8. Se debe instalar Java para poder desplegar los proyectos mas adelante, nos debemos asegurar de instalar la versión 8. 
* STS. Se debe instalar el IDE para realizar modificaciones a los proyectos back mas adelante en este caso Spring Tools 4 for Eclipse. La carpeta que genera el instalador la copiamos a archivos de programa. 
* Instalación Lombok. Se debe instalar el lombok seleccionando el IDE que acabamos de instarlar en este caso el STS.
* Postman. Se debe instalar el postman para poder consumir los servicios del backend mas adelante cuando ya se hayan desplegado.
* Node Js. Se debe instalar Node Js para configurar el proyecto front mas adelante, nos debemos asegurar de instalar la versión v14.2.0.
* Visual Studio Code. Se debe instalar el IDE para realizar modificaciones al proyecto front mas adelante en este caso Visual Studio code. 
* Angular 14.

<br>

| Nota: los paquetes con el mismo nombre, como pkg: cliente, y pkg: clientes que aparecen arriba en el diagrama corresponden a espacio de nombres distintos. Por ejemplo, para el caso de estos dos paquetes, pkg: cliente pertenece el espacio de nombre (web) Cotizador; en cambio, pkg: clientes pertenece al espacio de nombres (web) admin Páginas.

<br>


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**pkg: admin**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: administración**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: asociados**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: auth**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cliente**|application-component|controladores web de cliente. Reúne las clases que constituyen el modelo de entrada/salida de la interfaz gráfica de Clientes. Distinto al paquete admin controlador Clientes (pkg: web.clientes).<br>|*modulo:* cotizador<br>|
|**pkg: clientes**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación. Disitnto al paquete web de Cliente (pkg: admin.cliente).|*modulo:* cotizador<br>|
|**pkg: config**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotizaciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotización**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: home**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: modelos**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: multiactiva**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: protecciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: proveedores**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reporte**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reportes**|application-component|admin controller: Almacenan todas las clases que constituyen los servicios REST de la administrción de la aplicación.|*modulo:* cotizador<br>|
|**pkg: utilidades**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**Conexión: jdbc**|artifact||*modulo:* cotizador<br>|
|**Entorno Angular: ng 14.0.0**|system-software||*modulo:* cotizador<br>|
|**Entorno JS: node 14.2.0**|system-software||*modulo:* cotizador<br>|
|**Repositorio: db2 iSerie**|system-software||*modulo:* cotizador<br>|
|**Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

<br>

## Cotizador. 7. Datos. Negocio
![Diagram: Cotizador. 7. Datos. Negocio](images/Cotizador.7.Datos.Negocio.png){#fig:Cotizador.7.Datos.Negocio width=}

### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00. Cobertura**|business-object|||
|**DAT00.Asegurado**|business-object|||
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Cotización**|business-object|||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Plan - Cobertura**|business-object|||
|**DAT00.Plan configuración**|business-object|Plan de configuración: producto pólizas seguros.<br>||
|**DAT00.Plan de Pagos**|business-object|||
|**DAT00.Planes**|business-object|||
|**DAT00.Producto**|business-object|||
|**DAT00.Venta**|business-object|||
|**DAT00.Vinculación**|business-object|||
|**DAT01.CANAL_CONFIG_MOV**|data-object|||
|**DAT01.CANAL_EVENTO**|data-object|||
|**DAT01.CANAL_VENTA_EXCLUSION**|data-object|||
|**DAT01.CANAL_VENTA_EXCLUSION_COBERTURA**|data-object|||
|**DAT01.CICLO_FACTURACION**|data-object|||
|**DAT01.COBERTURA**|data-object|||
|**DAT01.COTIZACION_APORTE_ESTATUTARIO_ASEGURADO**|data-object|||
|**DAT01.COTIZACION_ASEGURADO_TEMP**|data-object|||
|**DAT01.COTIZACION_ASEGURADO_TEMP**|data-object|||
|**DAT01.COTIZACION_DETALLE_TEMP**|data-object|||
|**DAT01.COTIZACION_DETALLE_TEMP**|data-object|||
|**DAT01.COTIZACION_PLAN_TEMP**|data-object|||
|**DAT01.COTIZACION_PLAN_TEMP**|data-object|||
|**DAT01.COTIZACION_TEMP**|data-object|||
|**DAT01.COTIZACION_TEMP**|data-object|||
|**DAT01.ESTADO_COTIZACION**|data-object|||
|**DAT01.ESTADO_VENTA**|data-object|||
|**DAT01.FRECUENCIA_FACTURACION**|data-object|||
|**DAT01.FRECUENCIA_FACTURACION**|data-object|||
|**DAT01.MEDIO_FACTURACION**|data-object|||
|**DAT01.MEDIO_FACTURACION**|data-object|||
|**DAT01.MIM_COTIZACION_APORTE_ESTATUTARIO_ASEGURADO**|data-object|||
|**DAT01.MOVIMIENTO_PLAN_CANAL**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PLAN**|data-object|||
|**DAT01.PLAN_CANAL_VENTA**|data-object|||
|**DAT01.PLAN_CANAL_VENTA**|data-object|||
|**DAT01.PLAN_COBERTURA**|data-object|||
|**DAT01.PLAN_COBERTURA_DEPENDIENTE**|data-object|||
|**DAT01.PLAN_COBERTURA_EDAD**|data-object|||
|**DAT01.PLAN_COBERTURA_TIPO_COBERTURA**|data-object|||
|**DAT01.PLAN_FRECUENCIA_FACTURACION**|data-object|||
|**DAT01.PLAN_FRECUENCIA_FACTURACION**|data-object|||
|**DAT01.PLAN_MEDIO_FACTURACION**|data-object|||
|**DAT01.PLAN_MEDIO_FACTURACION**|data-object|||
|**DAT01.PLAN_NIVEL_RIESGO**|data-object|||
|**DAT01.PLAN_OBLIGATORIO**|data-object|||
|**DAT01.PLAN_PARENTESCO**|data-object|||
|**DAT01.PLAN_PERSEVERANTE**|data-object|||
|**DAT01.PRE_VENTA**|data-object|||
|**DAT01.PRODUCTO_COBERTURA**|data-object|||
|**DAT01.PROMOTOR_CANAL**|data-object|||
|**DAT01.PROSPECTO_ASOCIADO_COTIZACION**|data-object|||
|**DAT01.RESPONSABLE_PERSONA**|data-object|||
|**DAT01.RESPONSABLE_PERSONA**|data-object|||
|**DAT01.SIP_PRODUCTOS**|data-object|||
|**DAT01.SIP_PRODUCTOS_TIPO**|data-object|||
|**DAT01.TIPO_COTIZACION**|data-object|||
|**DAT01.TIPO_VENTA**|data-object|||
|**DAT01.VENTA**|data-object|||
|**DAT01.VENTAS_PREGUNTAS**|data-object|||
|**DAT01.VENTA_ASEGURADO**|data-object|||
|**DAT01.VENTA_DETALLE**|data-object|||
|**DAT01.VENTA_PLAN**|data-object|||
|**DAT10.COBERTURA_BENEFICIARIO**|data-object|||

<br>


``Generated on: Tue Nov 07 2023 10:24:20 GMT-0500 (COT)``

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



