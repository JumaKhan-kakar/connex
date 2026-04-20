-- Portal1 complete website patch
-- Apply in phpMyAdmin on database: local
START TRANSACTION;
UPDATE wp_posts SET post_title='Inicio', post_name='inicio', post_content='<h1>Mi Portal FONE: Guia Completa SEP</h1>
<p><em>En esta guia de <strong>Mi Portal FONE</strong> encontraras todo lo necesario para acceder al portal, descargar talones de pago y resolver errores comunes.</em></p>

<div class="fone-quick-actions">
  <a class="fone-btn" href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">Acceder al Portal Oficial</a>
  <a class="fone-btn fone-btn-outline" href="/descargar-talones-pago/">Descargar Talones de Pago</a>
</div>

<h2>Descargar Talones de Pago SEP y Resolver Acceso</h2>
<p>Selecciona la guia que necesitas:</p>

<div class="fone-home-cards">
  <article class="fone-card">
    <div class="fone-icon">[DOC]</div>
    <h3>Descargar Talones de Pago</h3>
    <p>Aprende el proceso paso a paso para bajar tus comprobantes en PDF.</p>
    <a href="/descargar-talones-pago/">Leer guia</a>
  </article>

  <article class="fone-card">
    <div class="fone-icon">[LOCK]</div>
    <h3>Ayuda de Login y Contrasena</h3>
    <p>Recupera tu acceso y soluciona errores de usuario o contrasena.</p>
    <a href="/ayuda-login-contrasena/">Ver soluciones</a>
  </article>

  <article class="fone-card">
    <div class="fone-icon">[FORM]</div>
    <h3>Guia de Registro</h3>
    <p>Requisitos y pasos para crear tu cuenta en Mi Portal FONE.</p>
    <a href="/guia-registro-mi-portal-fone/">Crear cuenta</a>
  </article>

  <article class="fone-card">
    <div class="fone-icon">[RETIREE]</div>
    <h3>Guia para Jubilados</h3>
    <p>Consulta comprobantes y tramites frecuentes para personal retirado.</p>
    <a href="/guia-jubilados-fone/">Ir a jubilados</a>
  </article>

  <article class="fone-card">
    <div class="fone-icon">[RFC-CURP]</div>
    <h3>Guia RFC y CURP</h3>
    <p>Corrige datos fiscales y evita bloqueos al iniciar sesion.</p>
    <a href="/guia-rfc-curp-fone/">Corregir datos</a>
  </article>

  <article class="fone-card">
    <div class="fone-icon">[STATE]</div>
    <h3>Guia por Estado</h3>
    <p>Consulta incidencias comunes y orientacion por entidad federativa.</p>
    <a href="/guia-fone-por-estado/">Buscar mi estado</a>
  </article>
</div>

<h2>Preguntas rapidas</h2>
<ul>
  <li>No puedes entrar? Revisa <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a>.</li>
  <li>Necesitas registrarte? Sigue la <a href="/guia-registro-mi-portal-fone/">Guia de Registro</a>.</li>
  <li>Tienes dudas generales? Visita <a href="/faq-contacto-mi-portal-fone/">FAQ y Contacto</a>.</li>
</ul>

<p><strong>Importante:</strong> Este sitio es una guia informativa. El acceso oficial es <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=105 AND post_type='page';
UPDATE wp_posts SET post_title='Que es Mi Portal FONE', post_name='que-es-mi-portal-fone', post_content='<h1>Que es Mi Portal FONE</h1>
<p>Mi Portal FONE es la plataforma oficial para personal educativo que cobra mediante el Fondo de Aportaciones para la Nomina Educativa y Gasto Operativo.</p>

<h2>Para que sirve</h2>
<ul>
  <li>Consultar recibos y talones de pago.</li>
  <li>Descargar comprobantes en PDF.</li>
  <li>Revisar periodos de pago y conceptos.</li>
  <li>Verificar datos personales y fiscales.</li>
</ul>

<h2>Quien puede usarlo</h2>
<p>Docentes, personal administrativo y personal jubilado que reciba pagos por el esquema FONE.</p>

<h2>Acceso oficial</h2>
<p>Ingresa siempre desde: <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">https://miportal.fone.sep.gob.mx/</a></p>

<h2>Siguientes pasos recomendados</h2>
<ul>
  <li><a href="/guia-registro-mi-portal-fone/">Guia de Registro</a></li>
  <li><a href="/descargar-talones-pago/">Descargar Talones de Pago</a></li>
  <li><a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a></li>
</ul>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=150 AND post_type='page';
UPDATE wp_posts SET post_title='Guia de Registro', post_name='guia-registro-mi-portal-fone', post_content='<h1>Guia de Registro en Mi Portal FONE</h1>
<p>Sigue estos pasos para crear tu cuenta correctamente.</p>

<h2>Requisitos</h2>
<ul>
  <li>CURP valida.</li>
  <li>Correo electronico personal activo.</li>
  <li>Datos personales correctos.</li>
</ul>

<h2>Paso a paso</h2>
<ol>
  <li>Entra al portal oficial: <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</li>
  <li>Selecciona la opcion de registro o alta de usuario.</li>
  <li>Captura tu CURP y datos solicitados exactamente como aparecen en tus documentos.</li>
  <li>Configura una contrasena segura y guardala.</li>
  <li>Confirma tu correo si el sistema te lo solicita.</li>
</ol>

<h2>Errores frecuentes</h2>
<ul>
  <li>CURP invalida o con formato incorrecto.</li>
  <li>Correo repetido o mal escrito.</li>
  <li>Contrasena debil o no confirmada.</li>
</ul>

<p>Si ya tienes cuenta y no recuerdas tu acceso, revisa <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=154 AND post_type='page';
UPDATE wp_posts SET post_title='Ayuda de Login y Contrasena', post_name='ayuda-login-contrasena', post_content='<h1>Ayuda de Login y Contrasena en Mi Portal FONE</h1>
<p>Si no puedes entrar al portal, usa esta guia para recuperar el acceso.</p>

<h2>Como iniciar sesion</h2>
<ol>
  <li>Abre <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</li>
  <li>Escribe usuario y contrasena.</li>
  <li>Verifica que no tengas espacios extras ni bloqueo de mayusculas.</li>
</ol>

<h2>Recuperar contrasena</h2>
<ol>
  <li>Haz clic en la opcion de recuperar contrasena.</li>
  <li>Captura datos solicitados para validacion.</li>
  <li>Crea una contrasena nueva segura.</li>
</ol>

<h2>Problemas comunes</h2>
<ul>
  <li>Usuario bloqueado por intentos fallidos.</li>
  <li>Correo de recuperacion no llega.</li>
  <li>Error temporal del portal en horario de alta demanda.</li>
</ul>

<p>Si aun no tienes cuenta, usa la <a href="/guia-registro-mi-portal-fone/">Guia de Registro</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=158 AND post_type='page';
UPDATE wp_posts SET post_title='Descargar Talones de Pago', post_name='descargar-talones-pago', post_content='<h1>Descargar Talones de Pago en Mi Portal FONE</h1>
<p>Guia paso a paso para obtener tus comprobantes de nomina SEP en PDF.</p>

<h2>Antes de comenzar</h2>
<ul>
  <li>Tener usuario y contrasena vigentes.</li>
  <li>Contar con conexion estable a internet.</li>
  <li>Usar un navegador actualizado.</li>
</ul>

<h2>Pasos para descargar tu talon</h2>
<ol>
  <li>Accede al portal oficial: <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</li>
  <li>Inicia sesion con tus datos.</li>
  <li>Entra al modulo de recibos o talones de pago.</li>
  <li>Selecciona quincena o periodo.</li>
  <li>Descarga el PDF y guardalo en tu equipo.</li>
</ol>

<h2>Si no aparece el talon</h2>
<ul>
  <li>Recarga la pagina e intenta de nuevo.</li>
  <li>Prueba otro navegador.</li>
  <li>Verifica en horario menos saturado.</li>
  <li>Consulta la <a href="/guia-fone-por-estado/">Guia por Estado</a> para orientacion local.</li>
</ul>

<p>Si no puedes iniciar sesion, revisa <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=162 AND post_type='page';
UPDATE wp_posts SET post_title='FAQ y Contacto', post_name='faq-contacto-mi-portal-fone', post_content='<h1>FAQ y Contacto de Mi Portal FONE</h1>
<p>Respuestas rapidas a las dudas mas comunes.</p>

<h2>Preguntas frecuentes</h2>
<h3>Cual es el portal oficial?</h3>
<p>El portal oficial es <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</p>

<h3>Como descargo mi talon?</h3>
<p>Sigue la guia en <a href="/descargar-talones-pago/">Descargar Talones de Pago</a>.</p>

<h3>Que hago si olvide mi contrasena?</h3>
<p>Revisa <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a>.</p>

<h3>Como me registro por primera vez?</h3>
<p>Consulta <a href="/guia-registro-mi-portal-fone/">Guia de Registro</a>.</p>

<h2>Contacto y soporte</h2>
<p>Para incidencias especificas de pago o datos administrativos, contacta al area de nomina o recursos humanos de tu Secretaria de Educacion estatal.</p>
<p>Tambien puedes apoyarte en la <a href="/guia-fone-por-estado/">Guia por Estado</a> para orientacion general.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=166 AND post_type='page';
UPDATE wp_posts SET post_title='Guia para Jubilados', post_name='guia-jubilados-fone', post_content='<h1>Guia Mi Portal FONE para Jubilados</h1>
<p>Si eres jubilado o pensionado, esta guia te ayuda a consultar y descargar comprobantes de pago.</p>

<h2>Que puedes hacer en el portal</h2>
<ul>
  <li>Consultar historial de pagos.</li>
  <li>Descargar recibos en PDF.</li>
  <li>Verificar conceptos y deducciones.</li>
</ul>

<h2>Pasos recomendados</h2>
<ol>
  <li>Ingresa a <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</li>
  <li>Inicia sesion con tu usuario.</li>
  <li>Ubica la seccion de comprobantes.</li>
  <li>Selecciona el periodo y descarga.</li>
</ol>

<h2>Si tienes problemas de acceso</h2>
<p>Usa la <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a> o revisa la <a href="/guia-fone-por-estado/">Guia por Estado</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=170 AND post_type='page';
UPDATE wp_posts SET post_title='Guia RFC y CURP', post_name='guia-rfc-curp-fone', post_content='<h1>Guia RFC y CURP para Mi Portal FONE</h1>
<p>Conocer y validar tu RFC y CURP es clave para evitar errores en acceso y nomina.</p>

<h2>CURP</h2>
<p>La CURP es tu clave de identificacion personal en Mexico. Debe capturarse sin errores para iniciar sesion correctamente.</p>

<h2>RFC</h2>
<p>El RFC se usa para temas fiscales y puede aparecer en tus comprobantes de pago.</p>

<h2>Errores frecuentes</h2>
<ul>
  <li>CURP con letras o numeros incorrectos.</li>
  <li>RFC incompleto.</li>
  <li>Diferencias entre datos del portal y documentos oficiales.</li>
</ul>

<h2>Que hacer si tus datos no coinciden</h2>
<ol>
  <li>Verifica tus datos oficiales (RENAPO y SAT).</li>
  <li>Solicita correccion en el area administrativa correspondiente.</li>
  <li>Vuelve a intentar el acceso despues de la actualizacion.</li>
</ol>

<p>Si no logras entrar, consulta <a href="/ayuda-login-contrasena/">Ayuda de Login y Contrasena</a>.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=174 AND post_type='page';
UPDATE wp_posts SET post_title='Guia por Estado', post_name='guia-fone-por-estado', post_content='<h1>Guia Mi Portal FONE por Estado</h1>
<p>Consulta incidencias comunes por entidad federativa. Acceso oficial para todos: <a href="https://miportal.fone.sep.gob.mx/" target="_blank" rel="noopener">miportal.fone.sep.gob.mx</a>.</p>
<p>Si tu caso no se resuelve en linea, acude al area de nomina o recursos humanos de la Secretaria de Educacion de tu estado.</p>

<h2>Aguascalientes</h2><p>Problemas comunes: talon quincenal no visible y diferencias de CURP. Contacto: Secretaria de Educacion estatal, area de nomina docente.</p>
<h2>Baja California</h2><p>Problemas comunes: saturacion en fechas de pago y PDF no descarga. Contacto: Secretaria de Educacion estatal, recursos humanos.</p>
<h2>Baja California Sur</h2><p>Problemas comunes: contrasena vencida y acceso intermitente. Contacto: Secretaria de Educacion estatal, mesa de ayuda.</p>
<h2>Campeche</h2><p>Problemas comunes: deducciones no identificadas y retrasos de actualizacion. Contacto: Secretaria de Educacion estatal, area administrativa.</p>
<h2>Chiapas</h2><p>Problemas comunes: bloqueo de usuario y recibos con desfase. Contacto: Secretaria de Educacion estatal, nomina y personal.</p>
<h2>Chihuahua</h2><p>Problemas comunes: error al generar PDF y diferencias en percepciones. Contacto: Secretaria de Educacion estatal, pagos magisteriales.</p>
<h2>Ciudad de Mexico</h2><p>Problemas comunes: alta demanda en quincena y recuperacion lenta de contrasena. Contacto: autoridad educativa local, atencion de nomina.</p>
<h2>Coahuila</h2><p>Problemas comunes: quincenas no actualizadas y cambios de adscripcion no reflejados. Contacto: Secretaria de Educacion estatal, recursos humanos.</p>
<h2>Colima</h2><p>Problemas comunes: datos fiscales incompletos y error de inicio de sesion. Contacto: Secretaria de Educacion estatal, soporte de nomina.</p>
<h2>Durango</h2><p>Problemas comunes: recibos historicos faltantes y deducciones sin aclarar. Contacto: Secretaria de Educacion estatal, control de pagos.</p>
<h2>Guanajuato</h2><p>Problemas comunes: RFC no validado y retroactivos tardios. Contacto: Secretaria de Educacion estatal, nomina educativa.</p>
<h2>Guerrero</h2><p>Problemas comunes: usuario bloqueado por intentos fallidos y talon incompleto. Contacto: Secretaria de Educacion estatal, atencion administrativa.</p>
<h2>Hidalgo</h2><p>Problemas comunes: contrasena no aceptada y cambios de categoria pendientes. Contacto: Secretaria de Educacion estatal, recursos humanos.</p>
<h2>Jalisco</h2><p>Problemas comunes: talon no disponible en fecha esperada y deducciones variables. Contacto: Secretaria de Educacion estatal, mesa de nomina.</p>
<h2>Estado de Mexico</h2><p>Problemas comunes: lentitud del portal y comprobantes anteriores no visibles. Contacto: Secretaria de Educacion estatal, pagos y prestaciones.</p>
<h2>Michoacan</h2><p>Problemas comunes: regularizacion de pagos pendiente e incidencias de plaza. Contacto: Secretaria de Educacion estatal, nomina magisterial.</p>
<h2>Morelos</h2><p>Problemas comunes: error de autenticacion y recibo con datos incompletos. Contacto: Secretaria de Educacion estatal, soporte docente.</p>
<h2>Nayarit</h2><p>Problemas comunes: desfase de quincena y percepciones no reflejadas. Contacto: Secretaria de Educacion estatal, area de pagos.</p>
<h2>Nuevo Leon</h2><p>Problemas comunes: recuperacion de cuenta y sincronizacion tardia de movimientos. Contacto: Secretaria de Educacion estatal, RH educativo.</p>
<h2>Oaxaca</h2><p>Problemas comunes: estatus laboral no actualizado y recibos pendientes. Contacto: Secretaria de Educacion estatal, nomina y tramites.</p>
<h2>Puebla</h2><p>Problemas comunes: deducciones no identificadas y descarga PDF con error. Contacto: Secretaria de Educacion estatal, atencion administrativa.</p>
<h2>Queretaro</h2><p>Problemas comunes: acceso intermitente e inconsistencias fiscales. Contacto: Secretaria de Educacion estatal, mesa de ayuda.</p>
<h2>Quintana Roo</h2><p>Problemas comunes: talones con retraso e incidencias por cambio de centro. Contacto: Secretaria de Educacion estatal, nomina docente.</p>
<h2>San Luis Potosi</h2><p>Problemas comunes: usuario bloqueado y periodos sin comprobante. Contacto: Secretaria de Educacion estatal, control de pagos.</p>
<h2>Sinaloa</h2><p>Problemas comunes: deducciones variables y actualizacion tardia. Contacto: Secretaria de Educacion estatal, RH magisterial.</p>
<h2>Sonora</h2><p>Problemas comunes: talones historicos no cargan y error de descarga. Contacto: Secretaria de Educacion estatal, soporte de nomina.</p>
<h2>Tabasco</h2><p>Problemas comunes: contrasena vencida y percepciones no reflejadas. Contacto: Secretaria de Educacion estatal, atencion docente.</p>
<h2>Tamaulipas</h2><p>Problemas comunes: datos personales inconsistentes y recibos faltantes. Contacto: Secretaria de Educacion estatal, area administrativa.</p>
<h2>Tlaxcala</h2><p>Problemas comunes: comprobantes recientes no visibles y error en primer acceso. Contacto: Secretaria de Educacion estatal, mesa de nomina.</p>
<h2>Veracruz</h2><p>Problemas comunes: cambios de adscripcion sin reflejar y diferencias en deducciones. Contacto: Secretaria de Educacion estatal, pagos y prestaciones.</p>
<h2>Yucatan</h2><p>Problemas comunes: error de autenticacion y recibos incompletos. Contacto: Secretaria de Educacion estatal, nomina educativa.</p>
<h2>Zacatecas</h2><p>Problemas comunes: quincenas no visibles y retroactivos pendientes. Contacto: Secretaria de Educacion estatal, recursos humanos.</p>', post_modified=NOW(), post_modified_gmt=UTC_TIMESTAMP() WHERE ID=178 AND post_type='page';
DELETE FROM wp_postmeta WHERE post_id IN (105,150,154,158,162,166,170,174,178) AND meta_key='_wp_page_template';
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES
(105, '_wp_page_template', 'default'),
(150, '_wp_page_template', 'default'),
(154, '_wp_page_template', 'default'),
(158, '_wp_page_template', 'default'),
(162, '_wp_page_template', 'default'),
(166, '_wp_page_template', 'default'),
(170, '_wp_page_template', 'default'),
(174, '_wp_page_template', 'default'),
(178, '_wp_page_template', 'default');
UPDATE wp_postmeta
SET meta_value='0'
WHERE post_id IN (538,540)
  AND meta_key='_menu_item_menu_item_parent';
UPDATE wp_posts
SET menu_order = CASE ID
  WHEN 529 THEN 1
  WHEN 530 THEN 2
  WHEN 531 THEN 3
  WHEN 532 THEN 4
  WHEN 533 THEN 5
  WHEN 540 THEN 6
  WHEN 538 THEN 7
  ELSE menu_order
END,
post_title = CASE ID
  WHEN 529 THEN 'Inicio'
  WHEN 530 THEN 'Talones'
  WHEN 531 THEN 'Ayuda'
  WHEN 532 THEN 'Estados'
  WHEN 533 THEN 'FAQ'
  WHEN 540 THEN 'Registro'
  WHEN 538 THEN 'RFC y CURP'
  ELSE post_title
END,
post_excerpt = CASE ID
  WHEN 529 THEN 'Inicio'
  WHEN 530 THEN 'Talones'
  WHEN 531 THEN 'Ayuda'
  WHEN 532 THEN 'Estados'
  WHEN 533 THEN 'FAQ'
  WHEN 540 THEN 'Registro'
  WHEN 538 THEN 'RFC y CURP'
  ELSE post_excerpt
END,
post_modified=NOW(),
post_modified_gmt=UTC_TIMESTAMP()
WHERE ID IN (529,530,531,532,533,538,540)
  AND post_type='nav_menu_item';
UPDATE wp_posts SET post_content='/* BEGIN PORTAL1 FINAL STANDARD CSS */
:root {
  --portal1-navy: #1a3b5d;
  --portal1-navy-deep: #132c47;
  --portal1-gold: #f4b942;
  --portal1-gold-soft: #ffd76a;
  --portal1-white: #ffffff;
  --portal1-ink: #10304d;
  --portal1-surface: rgba(255,255,255,0.08);
  --portal1-border: rgba(255,255,255,0.16);
  --portal1-shadow: 0 12px 28px rgba(15,44,71,0.12);
  --portal1-shadow-strong: 0 18px 36px rgba(15,44,71,0.18);
  --portal1-mex-green: #006847;
  --portal1-mex-red: #ce1126;
}

body,
input,
select,
textarea {
  color: var(--portal1-ink);
  line-height: 1.6;
}

.home .entry-content,
.page .entry-content,
.single-content {
  max-width: 1100px;
  margin-left: auto;
  margin-right: auto;
  padding-left: clamp(16px, 2vw, 24px);
  padding-right: clamp(16px, 2vw, 24px);
}

.entry-content,
.single-content,
.entry-content p,
.single-content p,
.entry-content li,
.single-content li,
.entry-content h1,
.entry-content h2,
.entry-content h3,
.entry-content h4,
.single-content h1,
.single-content h2,
.single-content h3,
.single-content h4 {
  overflow-wrap: anywhere;
  word-break: break-word;
}

.entry-content a:not(.wp-block-button__link),
.single-content a:not(.wp-block-button__link) {
  color: var(--portal1-navy) !important;
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 2px;
  transition: color 0.2s ease;
}

.entry-content a:not(.wp-block-button__link):hover,
.entry-content a:not(.wp-block-button__link):focus,
.single-content a:not(.wp-block-button__link):hover,
.single-content a:not(.wp-block-button__link):focus {
  color: var(--portal1-gold) !important;
}

.fone-quick-actions {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  margin: 18px 0 28px;
}

.fone-btn {
  display: inline-block;
  background: var(--portal1-gold);
  color: var(--portal1-ink) !important;
  text-decoration: none !important;
  font-weight: 700;
  padding: 12px 18px;
  border-radius: 12px;
  box-shadow: var(--portal1-shadow);
  transition: transform 0.2s ease, box-shadow 0.2s ease, filter 0.2s ease;
}

.fone-btn:hover,
.fone-btn:focus {
  color: var(--portal1-ink) !important;
  filter: brightness(0.98);
  transform: translateY(-1px);
  box-shadow: var(--portal1-shadow-strong);
}

.fone-btn-outline {
  background: #ffffff;
  border: 2px solid var(--portal1-gold);
}

.fone-home-cards {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 18px;
  margin: 18px 0 28px;
}

.fone-card {
  border: 1px solid #d7dfeb;
  border-radius: 16px;
  background: #ffffff;
  padding: 18px;
  display: flex;
  flex-direction: column;
  gap: 10px;
  min-width: 0;
  box-shadow: var(--portal1-shadow);
}

.fone-icon {
  font-size: 30px;
  line-height: 1;
  text-align: center;
}

.fone-card h3,
.fone-card p {
  margin: 0;
  text-align: center;
}

.fone-card a {
  margin-top: auto;
  text-align: center;
  font-weight: 600;
}

#masthead,
#colophon {
  position: relative;
}

#masthead::after,
#colophon::before {
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(90deg, var(--portal1-mex-green) 0 33.333%, var(--portal1-white) 33.333% 66.666%, var(--portal1-mex-red) 66.666% 100%);
}

#masthead::after {
  bottom: 0;
}

#colophon::before {
  top: 0;
}

#masthead,
#masthead .site-main-header-wrap .site-header-row-container-inner,
#masthead .site-header-upper-inner-wrap,
#masthead .site-header-inner-wrap {
  background: var(--portal1-navy) !important;
}

#masthead .site-main-header-wrap .site-header-row-container-inner > .site-container {
  padding: 14px 20px !important;
}

#masthead .site-main-header-inner-wrap.site-header-row-center-column {
  grid-template-columns: auto minmax(0, 1fr) auto !important;
  align-items: center;
  column-gap: 22px;
}

#masthead .site-header-main-section-center,
#masthead .site-header-item-main-navigation {
  min-width: 0;
  width: 100%;
}

#masthead .site-header-main-section-center {
  justify-content: flex-end;
}

.site-branding {
  padding: 0 !important;
}

.site-branding a.brand {
  gap: 12px !important;
  align-items: center !important;
}

.site-branding a.brand img {
  max-width: 112px !important;
  width: auto !important;
  height: auto !important;
  background: rgba(255,255,255,0.96);
  border-radius: 8px;
  padding: 4px 8px;
  box-shadow: 0 6px 18px rgba(0,0,0,0.12);
}

.site-branding .site-title,
.site-branding .site-title a,
.site-branding .site-description {
  color: var(--portal1-white) !important;
}

.site-branding .site-title {
  margin: 0 !important;
  font-size: clamp(1.35rem, 1.08rem + 0.75vw, 1.75rem) !important;
  font-weight: 700 !important;
  line-height: 1.1 !important;
  white-space: nowrap;
}

.site-branding .site-title-wrap {
  display: flex;
  flex-direction: column;
  gap: 2px;
}

#masthead .primary-menu-container > ul.menu {
  display: flex !important;
  justify-content: flex-end !important;
  align-items: center !important;
  gap: 8px !important;
  flex-wrap: wrap !important;
  list-style: none !important;
  margin: 0 !important;
  padding: 0 !important;
}

#masthead .primary-menu-container > ul.menu > li {
  position: relative;
  margin: 0 !important;
}

#masthead .main-navigation .menu-item > a {
  color: var(--portal1-white) !important;
  background: transparent !important;
  text-decoration: none !important;
  font-weight: 600 !important;
  font-size: 0.9rem !important;
  line-height: 1.2 !important;
  letter-spacing: 0.01em;
  padding: 10px 12px !important;
  border-radius: 999px !important;
  white-space: nowrap;
  transition: color 0.2s ease, background-color 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease !important;
}

#masthead .main-navigation .menu-item > a .kadence-svg-icon,
#masthead .main-navigation .menu-item > a .dropdown-nav-toggle,
#masthead .main-navigation .menu-item > a .dropdown-nav-toggle svg {
  color: currentColor !important;
  fill: currentColor !important;
}

#masthead .main-navigation .menu-item > a:hover,
#masthead .main-navigation .menu-item > a:focus,
#masthead .main-navigation .menu-item.current-menu-item > a,
#masthead .main-navigation .menu-item.current_page_item > a {
  background: var(--portal1-gold) !important;
  color: var(--portal1-ink) !important;
  box-shadow: var(--portal1-shadow);
  transform: translateY(-1px);
}

#masthead .main-navigation ul.sub-menu,
#masthead .main-navigation ul.submenu {
  top: 100% !important;
  left: 0 !important;
  min-width: 220px !important;
  padding: 8px !important;
  background: var(--portal1-navy-deep) !important;
  border: 1px solid var(--portal1-border) !important;
  border-radius: 14px !important;
  box-shadow: var(--portal1-shadow-strong) !important;
}

#masthead .main-navigation ul.sub-menu a,
#masthead .main-navigation ul.submenu a {
  width: 100% !important;
  color: var(--portal1-white) !important;
  background: transparent !important;
  border-radius: 10px !important;
  padding: 10px 12px !important;
  font-size: 0.9rem !important;
  white-space: normal !important;
}

#masthead .main-navigation ul.sub-menu a:hover,
#masthead .main-navigation ul.submenu a:hover {
  background: rgba(244,185,66,0.14) !important;
  color: var(--portal1-gold-soft) !important;
}

#colophon {
  background: linear-gradient(180deg, var(--portal1-navy) 0%, var(--portal1-navy-deep) 100%) !important;
  color: rgba(255,255,255,0.92) !important;
}

#colophon .site-top-footer-wrap .site-footer-row-container-inner,
#colophon .site-bottom-footer-wrap .site-footer-row-container-inner {
  background: transparent !important;
}

#colophon .site-top-footer-inner-wrap {
  padding-top: 30px !important;
  padding-bottom: 24px !important;
  gap: 18px !important;
}

#colophon .site-top-footer-inner-wrap .site-footer-section {
  background: var(--portal1-surface) !important;
  border: 1px solid var(--portal1-border) !important;
  border-radius: 16px !important;
  padding: 18px 16px !important;
  box-shadow: var(--portal1-shadow);
}

#colophon .site-top-footer-inner-wrap .site-footer-section:not(:last-child)::after {
  display: none !important;
}

#colophon .footer-widget-area-inner,
#colophon .site-info-inner {
  display: flex;
  flex-direction: column;
  gap: 10px;
  height: 100%;
}

#colophon .wp-block-heading,
#colophon .widget-title {
  margin: 0 0 0.25rem !important;
  color: var(--portal1-gold) !important;
  font-size: 1.02rem !important;
  line-height: 1.3 !important;
}

#colophon p,
#colophon li,
#colophon span,
#colophon strong,
#colophon .footer-html,
#colophon .footer-html p {
  color: rgba(255,255,255,0.92) !important;
}

#colophon a {
  color: var(--portal1-gold) !important;
  text-decoration: none !important;
  font-weight: 600 !important;
}

#colophon a:hover,
#colophon a:focus {
  color: var(--portal1-white) !important;
  text-decoration: underline !important;
}

#colophon .site-bottom-footer-wrap {
  margin-top: 8px;
}

#colophon .site-bottom-footer-wrap .site-footer-row-container-inner {
  border-top: 1px solid rgba(255,255,255,0.12) !important;
}

#colophon .site-bottom-footer-inner-wrap {
  padding-top: 16px !important;
  padding-bottom: 20px !important;
}

#colophon .footer-html-inner p {
  margin: 0 !important;
  text-align: center;
}

@media (max-width: 1200px) {
  #masthead .site-main-header-inner-wrap.site-header-row-center-column {
    column-gap: 16px;
  }

  #masthead .main-navigation .menu-item > a {
    padding: 9px 11px !important;
    font-size: 0.88rem !important;
  }

  .site-branding .site-title {
    font-size: 1.3rem !important;
  }
}

@media (max-width: 1024px) {
  #masthead .site-main-header-inner-wrap.site-header-row-center-column {
    grid-template-columns: 1fr !important;
    row-gap: 14px;
  }

  #masthead .site-header-main-section-left,
  #masthead .site-header-main-section-center,
  #masthead .site-header-main-section-right,
  #masthead .site-header-main-section-left-center,
  #masthead .site-header-main-section-right-center {
    justify-content: center !important;
  }

  #masthead .primary-menu-container > ul.menu {
    justify-content: center !important;
  }

  .fone-home-cards {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

@media (max-width: 767px) {
  #masthead .site-main-header-wrap .site-header-row-container-inner > .site-container {
    padding: 12px 14px !important;
  }

  .site-branding a.brand {
    flex-direction: column !important;
    text-align: center;
  }

  .site-branding a.brand img {
    max-width: 104px !important;
  }

  .site-branding .site-title {
    font-size: 1.25rem !important;
    white-space: normal;
    text-align: center;
  }

  #masthead .primary-menu-container > ul.menu {
    gap: 6px !important;
  }

  #masthead .main-navigation .menu-item > a {
    font-size: 0.86rem !important;
    padding: 8px 10px !important;
  }

  .fone-quick-actions {
    flex-direction: column;
  }

  .fone-btn {
    width: 100%;
    text-align: center;
  }

  .fone-home-cards {
    grid-template-columns: 1fr;
  }

  #colophon .site-top-footer-inner-wrap {
    padding-top: 24px !important;
  }
}
/* END PORTAL1 FINAL STANDARD CSS */' WHERE ID=24 AND post_type='custom_css';
DELETE FROM wp_postmeta WHERE post_id IN (105,162,158,150,154,170,174,178,166) AND meta_key IN ('rank_math_title','rank_math_description','rank_math_focus_keyword');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (105, 'rank_math_focus_keyword', 'mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (105, 'rank_math_title', 'Mi Portal FONE: Talones SEP, Acceso y Guia Completa');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (105, 'rank_math_description', 'Aprende como entrar a Mi Portal FONE, descargar talones de pago SEP y resolver errores de acceso con una guia rapida y actualizada.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (162, 'rank_math_focus_keyword', 'descargar talones de pago sep');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (162, 'rank_math_title', 'Descargar Talones de Pago SEP en Mi Portal FONE');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (162, 'rank_math_description', 'Guia paso a paso para descargar talones de pago SEP en Mi Portal FONE, consultar quincenas y guardar comprobantes en PDF.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (158, 'rank_math_focus_keyword', 'recuperar contrasena mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (158, 'rank_math_title', 'Recuperar Contrasena de Mi Portal FONE');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (158, 'rank_math_description', 'Resuelve problemas de acceso en Mi Portal FONE: recuperacion de contrasena, desbloqueo de usuario y errores de inicio de sesion.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (150, 'rank_math_focus_keyword', 'que es mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (150, 'rank_math_title', 'Que es Mi Portal FONE y Como Funciona');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (150, 'rank_math_description', 'Conoce que es Mi Portal FONE, para que sirve y como ayuda a docentes y personal educativo a consultar su nomina.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (154, 'rank_math_focus_keyword', 'registro mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (154, 'rank_math_title', 'Registro en Mi Portal FONE: Guia Paso a Paso');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (154, 'rank_math_description', 'Aprende a registrarte en Mi Portal FONE con requisitos, validacion de datos y solucion de errores comunes.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (170, 'rank_math_focus_keyword', 'mi portal fone jubilados');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (170, 'rank_math_title', 'Mi Portal FONE para Jubilados: Guia Completa');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (170, 'rank_math_description', 'Guia para jubilados y pensionados SEP: acceso, consulta y descarga de comprobantes en Mi Portal FONE.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (174, 'rank_math_focus_keyword', 'rfc y curp mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (174, 'rank_math_title', 'Corregir RFC y CURP en Mi Portal FONE');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (174, 'rank_math_description', 'Corrige inconsistencias de RFC y CURP en Mi Portal FONE para evitar bloqueos y errores de nomina.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (178, 'rank_math_focus_keyword', 'mi portal fone por estado');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (178, 'rank_math_title', 'Mi Portal FONE por Estado: Guia para Mexico');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (178, 'rank_math_description', 'Consulta la guia de Mi Portal FONE por estado con incidencias comunes y orientacion de contacto local.');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (166, 'rank_math_focus_keyword', 'soporte mi portal fone');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (166, 'rank_math_title', 'FAQ y Contacto Mi Portal FONE: Soporte Docente');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (166, 'rank_math_description', 'Respuestas a preguntas frecuentes de Mi Portal FONE y orientacion de contacto para incidencias de acceso y pagos.');
DELETE FROM wp_postmeta WHERE post_id IN (14,46,47,48) AND meta_key='_wp_attachment_image_alt';
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (14, '_wp_attachment_image_alt', 'Mi Portal FONE SEP guia de acceso');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (46, '_wp_attachment_image_alt', 'Logo Mi Portal FONE SEP');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (47, '_wp_attachment_image_alt', 'Icono Mi Portal FONE');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (48, '_wp_attachment_image_alt', 'Icono Mi Portal FONE recortado');
COMMIT;
