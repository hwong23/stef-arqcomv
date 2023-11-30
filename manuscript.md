---
keywords:
- SOA
- madurez
- gobierno
- Coomeva
lang: en-US
date-meta: '2023-11-30'
author-meta:
- Equipo arquitectura STEF-COOMV.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-11-30" />
  <meta name="citation_publication_date" content="2023-11-30" />
  <meta property="article:published_time" content="2023-11-30" />
  <meta name="dc.modified" content="2023-11-30T15:37:41+00:00" />
  <meta property="article:modified_time" content="2023-11-30T15:37:41+00:00" />
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
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/stef-arqcomv/v/9f2e0ffba18e3fcc853f6767b0587c2e240016f1/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/9f2e0ffba18e3fcc853f6767b0587c2e240016f1/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/stef-arqcomv/v/9f2e0ffba18e3fcc853f6767b0587c2e240016f1/manuscript.pdf" />
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

| **Versión** del producto 1.9f2e0ff de 30 Nov 2023

| **Presentado a**

| STEF - Coomeva

|

| **Fecha**

| 30 Nov 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, MiMutual - Modificación Core Unidad de Solidaridad y Seguros, Contrato XXX-2023, 
([Web](https://hwong23.github.io/stef-arqcomv/v/9f2e0ffba18e3fcc853f6767b0587c2e240016f1/))
están basados en el resultado del proyecto Coomeva Mi Mutual en curso.
[Sharepoint STEF@9f2e0ff](http://stefanini.sharepoint.com)
del November 30, 2023.
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
| 1.9f2e0ff | 2023-11-30. html |
| 1.49e3a54 | 2023-11-22. crrcn--entrega3 |
| 1.cae7d1c | 2023-11-22. migracion |
| 1.9d25185 | 2023-11-22. migración4 |
| 1.85ecd04 | 2023-11-22. migración2 |
| 1.84a7d85 | 2023-11-22. migración |
| 1.f0a4f72 | 2023-11-22. modelo negocio |
| 1.efedd6a | 2023-11-22. modelo negocio |
| 1.ff9e742 | 2023-11-22. abstrc |
| 1.07c4190 | 2023-11-21. abstrc |
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


# Doc. 1. Vistas de Arquitectura Mi Mutual
* [Mi Mutual Central](#mi-mutual-central)
	* [MiMutual. 1. Contexto](#mimutual.-1.-contexto)
	* [MiMutual. 2. Contenedores](#mimutual.-2.-contenedores)
	* [MiMutual. 3. Dominios](#mimutual.-3.-dominios)
	* [Arquitectura. 3. Modelo Negocio](#arquitectura.-3.-modelo-negocio)
	* [MiMutual. 4. Aplicación](#mimutual.-4.-aplicación)
	* [MiMutual. 4a3. Dependencias](#mimutual.-4a3.-dependencias)
	* [MiMutual. 5. Físico. Despliegue](#mimutual.-5.-físico.-despliegue)
	* [MiMutual. 6. Infraestructura](#mimutual.-6.-infraestructura)
	* [MiMutual. 7a. Datos. Aplicación](#mimutual.-7a.-datos.-aplicación)
	* [MiMutual. 7b. Datos. Negocio](#mimutual.-7b.-datos.-negocio)
* [Cotizador Web](#cotizador-web)
	* [Cotizador. 1. Contexto](#cotizador.-1.-contexto)
	* [Cotizador. 2. Contenedores](#cotizador.-2.-contenedores)
	* [Cotizador. 4. Aplicación](#cotizador.-4.-aplicación)
	* [Cotizador. 4a. Aplicación. Servicios](#cotizador.-4a.-aplicación.-servicios)
	* [Cotizador. 4a. Dependencias](#cotizador.-4a.-dependencias)
	* [Cotizador. 5. Físico. Despliegue](#cotizador.-5.-físico.-despliegue)
	* [Cotizador. 7a. Modelo Negocio](#cotizador.-7a.-modelo-negocio)
	* [Cotizador. 7. Datos. Negocio](#cotizador.-7.-datos.-negocio)


<div style="page-break-before: always;"></div>
\newpage

# Mi Mutual Central
## MiMutual. 1. Contexto
![Vista. MiMutual. 1. Contexto](images/MiMutual.1.Contexto.png){#fig:MiMutual.1.Contexto width=}

## Contexto Mi Mutual Central
El sistema principal de fondo Mi Mutual Central es la composición de las funciones de negocio de la Unidad de Solidaridad de Coomeva. Las funciones de negocio referidas, como Gestión Beneficiarios, Certificados, Gestión Beneficiarios, aparecen dentro del componente principal en la imagen.

Este entregable documenta los diferentes módulos y componentes que hacen parte de la estructura de una aplicación en Angular 12 y como es su interacción para conformar una arquitectura robusta y escalable para aplicaciones de gran tamaño.

Las librerías Spring Boot Security y Spring Boot Oauth2 proveen características de seguridad entre Vista (Angular 2) y Controlador. Estas son responsables de que únicamente permita el acceso si se está autenticado. Además, para realizar el proceso de autenticación se delega a la aplicación SISPRO (Coomeva) que funciona como un servidor de autenticación.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
|**Seguridad**|application-function|Software base. ||
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
![Vista. MiMutual. 2. Contenedores](images/MiMutual.2.Contenedores.png){#fig:MiMutual.2.Contenedores width=}

La organización de componentes utilizada Mi Mutual, impulsada por Spring Web, antepone como interfaz de uso un API REST. La interfaz se articula con tres componentes utilitarios: Controller, Service y Repository, los cuales están mediados por el componente misional, Mi Mutual, en la imagen. 

Esta decisión de organización de los componentes de Mi Mutual, incluyendo al misional del mismo nomnbre, permite estructurar la aplicación de una manera ordenada y, en línea con las restricciones de arquitectura exigidas al sistema, facilita la efectividad de las extensiones y el mantenimiento.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. MiMutual. 3. Dominios](images/MiMutual.3.Dominios.png){#fig:MiMutual.3.Dominios width=}

La división por dominios busca facilitar la administración los servicios de la plataforma Mi Mutual que son comunes entre aplicaciones de Mi Mutual, tales como Asociados, Reclamaciones, Protecciones y otros servicios trasversales como Utilidades, Reglas de negocio, Procesos de negocio (BPM), Auditoria, Flujos de trabajo:flowable.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Flujo Trabajo: flowable**|application-component|Contiene todas las funcionalidades relacionadas con el motor de BPM Flowable, como gestión de tareas, instancias de nuevas procesos y asignación de tareas.<br>|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**Integración**|application-component|Contiene todas las funcionalidades relacionadas con integraciones a otros servicios y otras bases de datos.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**Operación**|application-component|||
|**Procesos negocio**|application-component|Contiene todas las funcionalidades relacionadas con los flujos de JBPM, actualmente se hace solo para acceso a datos de la base de datos de JBPM.|*modulo:* mimutual<br>|
|**Reglas negocio**|application-component|Contiene todas las funcionalidades relacionadas con la validación de reglas usadas en otros microservicios.|*modulo:* mimutual<br>|
|**SISPRO**|application-component|Contiene todas las funcionalidades relacionadas con la autenticación y autorización al sistema Mi mutual (Este componente se adopta a la arquitectura de microservicios de MiMutual)|*modulo:* mimutual<br>|
|**Traductor**|application-component|||
|**Utilidades**|application-component|Contiene todas las funcionalidades útiles y trasversales a los microservicios, como envío de correos, generación de archivos XSLX, PDF (Jasper) y consulta de parámetros.|*modulo:* mimutual<br>|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Auditoria**|application-component|Contiene todas las funcionalidades relacionadas con el almacenamiento de la auditoria de las peticiones de la aplicación.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>*alcanseSOA:* Fase 1.1<br>|

<br>

## Arquitectura. 3. Modelo Negocio
![Vista. Arquitectura. 3. Modelo Negocio](images/Arquitectura.3.ModeloNegocio.png){#fig:Arquitectura.3.ModeloNegocio width=}

### Conceptos Principales

1. Configuración
1. Vinculación
1. Venta
1. Cotización
1. Factura
1. Cobertura
1. Configuración
1. Plan de producto


### Orden Operativo

1. Configuración
1. Vinculación
1. Venta o Cotización
1. Factura


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Auditoría Médica**|business-object|Cuando se glosa una solicitus es porque el auditor medico necesita mas informacion y la reasigna.<br>||
|**DAT00. Cobertura**|business-object|||
|**DAT00. Glosa**|business-object|Cuando se glosa una solicitus es porque el auditor medico necesita mas informacion y la reasigna.<br>||
|**DAT00. Reclamación**|business-object|Reclamacion es cuando el asociado desea que le paguen una cobertura, Ejemplo cumplio perseverancia ya tiene 60 años y cobra.<br>||
|**DAT00. Rescate**|business-object|Rescate es cuado el asociado se retira y viene a reclamar los valores ahorrados a los que tiene derecho.<br>||
|**DAT00.Asegurado**|business-object|||
|**DAT00.Asociado**|business-object|||
|**DAT00.Auxilio Funerario**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Cotización**|business-object|||
|**DAT00.Cúmulo**|business-object|||
|**DAT00.Declaración de Salud**|business-object|Rescate es cuado el asociado se retira y viene a reclamar los valores ahorrados a los que tiene derecho.<br>||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Mesa de Control**|business-object|Rescate es cuado el asociado se retira y viene a reclamar los valores ahorrados a los que tiene derecho.<br>||
|**DAT00.Operaciones**|business-object|||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Perseverancia**|business-object|Rescate es cuado el asociado se retira y viene a reclamar los valores ahorrados a los que tiene derecho.<br>||
|**DAT00.Plan - Cobertura**|business-object|||
|**DAT00.Plan configuración**|business-object|Plan de configuración: producto pólizas seguros.<br>||
|**DAT00.Plan de Pagos**|business-object|||
|**DAT00.Planes**|business-object|||
|**DAT00.Producto**|business-object|||
|**DAT00.Solicitud**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Venta**|business-object|||
|**DAT00.Vinculación**|business-object|||
|**Fondo Solidaridad**|business-object|||

<br>

## MiMutual. 4. Aplicación
![Vista. MiMutual. 4. Aplicación](images/MiMutual.4.Aplicación.png){#fig:MiMutual.4.Aplicación width=}

Componentes



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. MiMutual. 4a3. Dependencias](images/MiMutual.4a3.Dependencias.png){#fig:MiMutual.4a3.Dependencias width=}

### Paquetes y Dependencias Mi Mutual
La estructura está basada en Spring Boot y lenguaje de programación Java 8 (JSE, JDK 8), conformada por componentes de aplicación y administración del ciclo de vida de los objetos.

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
| Nombre| Tipo| Descripción| Prop.
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

## MiMutual. 5. Físico. Despliegue
![Vista. MiMutual. 5. Físico. Despliegue](images/MiMutual.5.Físico.Despliegue.png){#fig:MiMutual.5.Físico.Despliegue width=}

Especificaciones de despliegue Mi Mutual, 2023, componente central.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot 2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring Boot
* Tecnologías para el frontend Mi Mutual Central: Angular 9
* Tecnologías para el frontend Cotizador Web: Angular 14
* Entorno de ejecución Javascript: nodejs 14.2.0
* Librería de Estilos Bootstrap 4.x
* Servidor web (HTTP 1.1): Apache 2.x
* Servidor BPM, Flowable, versión 6.5.0 con JRE 8
* Spring Cloud, versión Greenwich SR2
* Querydsl, version 4.2.1
* Bases de datos IBM DB2, AS400

<br>


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
|**Conexión: jdbc**|artifact||*modulo:* cotizador<br>|
|**Spring Boot 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Data 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**IBM DB2 iSerie**|node||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>*brecha:* 60<br>|
|**BPM: JRE**|system-software|Entorno de ejecución BPM. <br>* java.version: 1.8<br>* flowable.version: 6.5.0<br>* spring-cloud.version: Greenwich.SR2<br>* querydsl.version: 4.2.1<br><br><br>|*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>*brecha:* 30<br>|
|**DDSEGUROS**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Directorio: eureka: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**ESB/WS**|system-software|* java.version: 1.8<br>* spring-cloud.version: Greenwich.SR2<br><br><br>|*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Entorno Java: JRE 1.8**|system-software||*brecha:* 30<br>*:* <br>|
|**Gateway: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Identidad: spring cloud security**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**MiMutual DB**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Repositorio: db2 iSerie**|system-software||*modulo:* cotizador<br>|
|**SIPASDB**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**Secuencias: zipking: tomcat**|system-software||*alcanseSOA:* Fase 1.1<br>*modulo:* mimutual<br>|
|**mimutual Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

<br>

## MiMutual. 6. Infraestructura
![Vista. MiMutual. 6. Infraestructura](images/MiMutual.6.Infraestructura.png){#fig:MiMutual.6.Infraestructura width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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

## MiMutual. 7a. Datos. Aplicación
![Vista. MiMutual. 7a. Datos. Aplicación](images/MiMutual.7a.Datos.Aplicación.png){#fig:MiMutual.7a.Datos.Aplicación width=}

Estructuras de datos específicas a la plataforma. Modelo de negocio para las aplicaciones. 

Modelo físico facilitadas por Coomeva, corte del 2 de mayo de 2022. Contiene las estructuras de configuración de fondo, cliente, planes, cobertura y planes de coberturas.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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

## MiMutual. 7b. Datos. Negocio
![Vista. MiMutual. 7b. Datos. Negocio](images/MiMutual.7b.Datos.Negocio.png){#fig:MiMutual.7b.Datos.Negocio width=}

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
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**DAT00. Reclamación**|business-object|Reclamacion es cuando el asociado desea que le paguen una cobertura, Ejemplo cumplio perseverancia ya tiene 60 años y cobra.<br>||
|**DAT00.Asegurado**|business-object|||
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Declaración de Salud**|business-object|Rescate es cuado el asociado se retira y viene a reclamar los valores ahorrados a los que tiene derecho.<br>||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Plan configuración**|business-object|Plan de configuración: producto pólizas seguros.<br>||
|**DAT00.Portafolios de asociados**|business-object|||
|**DAT00.Solicitud**|business-object|Caracterización de productos, planes, parámetros<br>||
|**Fondo Solidaridad**|business-object|||
|**DAT01.ADICIONAL PLAN COBERTURA**|data-object|||
|**DAT01.ADICIONAL_PLAN_COBERTURA**|data-object|||
|**DAT01.APORTE_ESTATUTARIO**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.CAMPANA RELACION PLAN COBERTURA**|data-object|||
|**DAT01.CAMPANA_RELACION**|data-object|||
|**DAT01.CAMPANA_RELACION_PLAN_COBERTURA**|data-object|||
|**DAT01.CAMPANA_RELACION_VALOR_FIJO_FONDO_GARANTIA**|data-object|||
|**DAT01.CANAL**|data-object|||
|**DAT01.CANAL EVENTO**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION**|data-object|||
|**DAT01.CARGUES**|data-object|||
|**DAT01.CLIENTE**|data-object|||
|**DAT01.CLIENTE**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO COBERTURA**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO PAGO**|data-object|||
|**DAT01.COBERTURA_BENEFICIARIO**|data-object|||
|**DAT01.CONTROL_ARE_TECNICA**|data-object|||
|**DAT01.CONTROL_CUMULO**|data-object|||
|**DAT01.COTIZACION_TEMP**|data-object|||
|**DAT01.CUESTIONARIO**|data-object|||
|**DAT01.CUMULO**|data-object|||
|**DAT01.CUMULOS PLAN COBERTURA**|data-object|||
|**DAT01.CUMULOS_COBERTURA**|data-object|||
|**DAT01.CUMULOS_PLAN_COBERTURA**|data-object|||
|**DAT01.DEDUCIBLE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA**|data-object|||
|**DAT01.DESMEMBRACION_ACCIDENTE**|data-object|||
|**DAT01.DOCUMENTO REQUISITO**|data-object|||
|**DAT01.DOCUMENTO_REQUISITO**|data-object|||
|**DAT01.ENFERMEDAD GRAVE**|data-object|||
|**DAT01.ENFERMEDAD GRAVE PLAN COBERTURA**|data-object|||
|**DAT01.ENFERMEDAD_GRAVE**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.ESTADO_PROTECCION_CUMULO**|data-object|||
|**DAT01.ESTADO_RECLAMACION**|data-object|||
|**DAT01.EXCLUSION**|data-object|||
|**DAT01.EXCLUSION COBERTURA**|data-object|||
|**DAT01.FAC_CONCEPTO_PLAN**|data-object|||
|**DAT01.FASE_RECLAMACION**|data-object|||
|**DAT01.FONDO**|data-object|||
|**DAT01.FONDO**|data-object|||
|**DAT01.FONDO**|data-object|||
|**DAT01.FORMULA_PLAN**|data-object|||
|**DAT01.FRECUENCIA_FACTURACION**|data-object|||
|**DAT01.LOG_REGLAS_RECLAMACIONES**|data-object|||
|**DAT01.MOVIMIENTO_PLAN_CANAL**|data-object|||
|**DAT01.NIVELES_NOTAS_PLAN_COBERTURA**|data-object|||
|**DAT01.NOTA_ACLARATORIA**|data-object|||
|**DAT01.NOTA_ACLARATORIA_PLAN**|data-object|||
|**DAT01.ORIGEN_REGISTRO_RECLAMACION**|data-object|||
|**DAT01.OTROS_PARAMETROS**|data-object|||
|**DAT01.PARAMETROS_VALIDACIONES**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PLAN**|data-object|||
|**DAT01.PLAN CANAL VENTA**|data-object|||
|**DAT01.PLAN COBERTURA**|data-object|||
|**DAT01.PLAN NIVEL RIESGO**|data-object|||
|**DAT01.PLAN_COBERTURA_DEPENDIENTE**|data-object|||
|**DAT01.PLAN_MEDIO_FACTURACION**|data-object|||
|**DAT01.PLAN_OBLIGATORIO**|data-object|||
|**DAT01.PLAN_PARENTESCO**|data-object|||
|**DAT01.PLAN_PERSEVERANTE**|data-object|||
|**DAT01.PORCENTAJE_CUOTA**|data-object|||
|**DAT01.PREGUNTA**|data-object|||
|**DAT01.PRODUCTO_COBERTURA**|data-object|||
|**DAT01.PROMOTOR**|data-object|||
|**DAT01.PROMOTOR_CANAL**|data-object|||
|**DAT01.PROMOTOR_TIPO_MOVIMIENTO**|data-object|||
|**DAT01.PROMOTOR_TIPO_SOLICITUD**|data-object|||
|**DAT01.RAZON_NEGACION_RECLAMACION**|data-object|||
|**DAT01.RECLAMACION**|data-object|||
|**DAT01.RECLAMACION**|data-object|||
|**DAT01.REFLAS_RECLAMACIONES**|data-object|||
|**DAT01.RESPONSABLE PERSONA**|data-object|||
|**DAT01.RESPUESTA**|data-object|||
|**DAT01.SUBLIMITE COBERTURA**|data-object|||
|**DAT01.SUBPROCESO_RECLAMACION**|data-object|||
|**DAT01.TASA_VALOR_RESCATE_PERSEVERANCIA**|data-object|||
|**DAT01.TIPO MOVIMIENTO**|data-object|||
|**DAT01.TIPO PROCESO CUMULO**|data-object|||
|**DAT01.TIPO_PROCESO_CUMULO**|data-object|||
|**DAT01.TIPO_RESPUESTA**|data-object|||
|**DAT01.TIPO_TOPE**|data-object|||
|**DAT01.VENTA**|data-object|||
|**DAT01.VENTA_ASEGURADO**|data-object|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Cotizador Web
## Cotizador. 1. Contexto
![Vista. Cotizador. 1. Contexto](images/Cotizador.1.Contexto.png){#fig:Cotizador.1.Contexto width=}

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
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Cotizador. 2. Contenedores](images/Cotizador.2.Contenedores.png){#fig:Cotizador.2.Contenedores width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Cotizador. 4. Aplicación](images/Cotizador.4.Aplicación.png){#fig:Cotizador.4.Aplicación width=}

La organización de la aplicación Cotizador Web Mi Mutual, como capa de presentación y servicios, plantea una estructura basada en la referencia de aplicaciones Angular 12. Las características de esta estructura (referida por Angular) está orientada al crecimiento (tamaño) de la aplicación, la escalabilidad y al rendimiento. La aplicación web Cotizador está diseñada (modulos) para manejar la carga por demanda del contenido.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Cotizador. 4a. Aplicación. Servicios](images/Cotizador.4a.Aplicación.Servicios.png){#fig:Cotizador.4a.Aplicación.Servicios width=}

Composición interna de los servivios de Mi Mutual Central, Mi Mutual Web, Cotizador Web. La vista muestra el patron de diseño con el que están implementados los servicios de la aplicación.



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Cotizador. 4a. Dependencias](images/Cotizador.4a.Dependencias.png){#fig:Cotizador.4a.Dependencias width=}

### Paquetes y Dependencias Cotizador Web
Módulos y componentes que hacen parte de la estructura de la aplicación Cotizador Web (basado en Angular 12 [^1]).

[^1]: Angular 2 tiene una arquitectura Modelo Vista Controlador (MVC) con el fin de facilitar el desarrollo gestionado.

### Módulos Cotizador Web
La estructura por módulos actual apunta a la escalabilidad y mantenimiento del Cotizador en términos de: organizar las partes de la aplicación, organización los bloques, extender la aplicación con libreras externas, proporcionar un entorno de resolución de plantillas y además, distribuir las cargas de los componentes y servicios que usa la aplicación.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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

## Cotizador. 5. Físico. Despliegue
![Vista. Cotizador. 5. Físico. Despliegue](images/Cotizador.5.Físico.Despliegue.png){#fig:Cotizador.5.Físico.Despliegue width=}

### Especificaciones de Despliegue Cotizador Web
Detalles de configuración del proyecto Mi Mutual en el espacio de trabajo servidor y local (2022), librerías de desarrollo (frameworks), lenguajes, instalaciones y sus versiones.

Especificaciones de despliegue Mi Mutual, 2023, Componente Central y Cotizador Web.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot 2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring Boot
* Tecnologías para el frontend Mi Mutual Central: Angular 9
* Tecnologías para el frontend Cotizador Web: Angular 14
* Entorno de ejecución Javascript: nodejs 14.2.0
* Librería de Estilos Bootstrap 4.x
* Servidor web (HTTP 1.1): Apache 2.x
* Servidor BPM, Flowable, versión 6.5.0 con JRE 8
* Spring Cloud, versión Greenwich SR2
* Querydsl, version 4.2.1
* Bases de datos IBM DB2, AS400

<br>


#### Recursos y Herramientas Requeridas
* Git. Se debe instalar git para poder realizar la clonación de cada uno de los proyectos mas adelante.
* SmartGit. Se debe instalar Smartgit para poder realizar la clonación de cada uno de los proyectos mas adelante, este es opcional ya que es una interfaz gráfica de git mas amigable para el usuario en caso que no desee trabajar con la consola.
* DBeaver. Se debe instalar DBeaver para poder acceder a la base de datos. 
* Instalación Maven. Se debe instalar maven para poder compilar los proyectos, nos debemos asegurar de instalar la versión 3.6.3, en caso que no se encuentra en la página oficial copiar la carpeta que esta en el repositorio a archivo de programas. 
* Java 8. Se debe instalar Java para poder desplegar los proyectos mas adelante, nos debemos asegurar de instalar la versión 8. 
* STS. Se debe instalar el IDE para realizar modificaciones a los proyectos back mas adelante en este caso Spring Tools 4 for Eclipse. La carpeta que genera el instalador la copiamos a archivos de programa. 
* Instalación Lombok. Se debe instalar el lombok seleccionando el IDE que acabamos de instarlar en este caso el STS.
* Postman. Se debe instalar el postman para poder consumir los servicios del backend mas adelante cuando ya se hayan desplegado.
* Node Js. Se debe instalar Node Js para configurar el proyecto front mas adelante, nos debemos asegurar de instalar la versión v14.2.0.
* Visual Studio Code. Se debe instalar el IDE para realizar modificaciones al proyecto front mas adelante en este caso Visual Studio code. 
* Librería para desarrollo frontend Cotizador Web: Angular 14

<br>

| Nota: los paquetes con el mismo nombre, como pkg: cliente, y pkg: clientes que aparecen arriba en el diagrama corresponden a espacio de nombres distintos. Por ejemplo, para el caso de estos dos paquetes, pkg: cliente pertenece el espacio de nombre (web) Cotizador; en cambio, pkg: clientes pertenece al espacio de nombres (web) admin Páginas.

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
|**Spring Boot 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Spring Data 2.1.4**|artifact|Librerías backend Spring Boot 2.1.4 para Java 8.<br>|*brecha:* 30<br>|
|**Entorno Angular: ng 14.0.0**|system-software||*modulo:* cotizador<br>|
|**Entorno Java: JRE 1.8**|system-software||*brecha:* 30<br>*:* <br>|
|**Repositorio: db2 iSerie**|system-software||*modulo:* cotizador<br>|
|**cotizador Entorno JS: node 14.2.0**|system-software||*modulo:* cotizador<br>|
|**mimutual Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

<br>

## Cotizador. 7a. Modelo Negocio
![Vista. Cotizador. 7a. Modelo Negocio](images/Cotizador.7a.ModeloNegocio.png){#fig:Cotizador.7a.ModeloNegocio width=}

Modelo de negocio (lógico) de Mi Mutual, Mi Mutual Web, extensible a sus demás módulos, como el Cotizador Web y otros. El modelo de negocio Mi Mutual contiene los conceptos de negocio que se encuentran implementados en el sofware, reglas y funciones de negocio, y el modelo(s) de datos del sistema.


### Conceptos Principales

1. Venta
1. Cotización
1. Configuración
1. Vinculación
1. Factura
1. Cobertura
1. Configuración
1. Plan de producto


### Orden Operativo

1. Configuración
1. Vinculación
1. Venta o Cotización
1. Factura

<br>

### Relación Negocio Datos
La relación entre los conceptos de negocio y el modelo de datos se encuentra en la vista Cotizador. 7. Datos. Negocio.



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Auditoría Médica**|business-object|Cuando se glosa una solicitus es porque el auditor medico necesita mas informacion y la reasigna.<br>||
|**DAT00. Cobertura**|business-object|||
|**DAT00. Glosa**|business-object|Cuando se glosa una solicitus es porque el auditor medico necesita mas informacion y la reasigna.<br>||
|**DAT00.Asociado**|business-object|||
|**DAT00.Auxilio Funerario**|business-object|||
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
|**DAT00.Solicitud**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Venta**|business-object|||
|**DAT00.Vinculación**|business-object|||
|**Fondo Solidaridad**|business-object|||

<br>

## Cotizador. 7. Datos. Negocio
![Vista. Cotizador. 7. Datos. Negocio](images/Cotizador.7.Datos.Negocio.png){#fig:Cotizador.7.Datos.Negocio width=}

La relación del modelo de negocio Mi Mutual con el modelo de datos del Cotizador Web orienta la navegación en el modelo de datos en aquellas historias de usuario que impliquen a alguna de estas entidades.

Este modelo de relación negocio-datos es evolutivo: irá cambiando en la medida de que el negocio o el modelo de datos cambien.

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

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
|**DAT01.CICLO FACTURACION CONFIG MOV**|data-object|||
|**DAT01.CICLO_FACTURACION**|data-object|||
|**DAT01.COBERTURA**|data-object|||
|**DAT01.COBERTURA_BENEFICIARIO**|data-object|||
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
|**DAT01.PLAN NIVEL RIESGO**|data-object|||
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
|**DAT01.PLAN_OBLIGATORIO**|data-object|||
|**DAT01.PLAN_PARENTESCO**|data-object|||
|**DAT01.PLAN_PERSEVERANTE**|data-object|||
|**DAT01.PRE_VENTA**|data-object|||
|**DAT01.PRODUCTO_COBERTURA**|data-object|||
|**DAT01.PROMOTOR_CANAL**|data-object|||
|**DAT01.PROSPECTO_ASOCIADO_COTIZACION**|data-object|||
|**DAT01.RESPONSABLE PERSONA**|data-object|||
|**DAT01.RESPONSABLE PERSONA**|data-object|||
|**DAT01.SIP_PRODUCTOS**|data-object|||
|**DAT01.SIP_PRODUCTOS_TIPO**|data-object|||
|**DAT01.TIPO_COTIZACION**|data-object|||
|**DAT01.TIPO_VENTA**|data-object|||
|**DAT01.VENTA**|data-object|||
|**DAT01.VENTAS_PREGUNTAS**|data-object|||
|**DAT01.VENTA_ASEGURADO**|data-object|||
|**DAT01.VENTA_DETALLE**|data-object|||
|**DAT01.VENTA_PLAN**|data-object|||

<br>


``Generated on: Thu Nov 30 2023 10:35:05 GMT-0500 (COT)``

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



