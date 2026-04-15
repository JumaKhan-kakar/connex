-- Portal1 ranking + indexing pack
-- Apply in Adminer SQL command on database: local
-- Safe to run multiple times.

START TRANSACTION;

-- 1) Ensure WordPress allows indexing
UPDATE wp_options
SET option_value = '1'
WHERE option_name = 'blog_public';

-- 2) Remove accidental noindex/no-follow flags from core ranking pages
DELETE FROM wp_postmeta
WHERE post_id IN (105,150,154,158,162,166,170,174,178)
  AND meta_key IN ('rank_math_robots', 'rank_math_advanced_robots');

-- 3) Add trust/update block to homepage (if not already present)
UPDATE wp_posts
SET post_content = CONCAT(
  post_content,
  '\n\n<hr>\n<p><strong>Ultima actualizacion:</strong> 2026-04-15</p>\n<p><strong>Aviso:</strong> Este sitio es informativo y no oficial. El acceso oficial es <a href=\"https://miportal.fone.sep.gob.mx/\" target=\"_blank\" rel=\"noopener\">miportal.fone.sep.gob.mx</a>.</p>\n<p><strong>Fuentes oficiales:</strong> <a href=\"https://www.gob.mx/sep\" target=\"_blank\" rel=\"noopener\">SEP</a> | <a href=\"https://www.gob.mx/curp/\" target=\"_blank\" rel=\"noopener\">Consulta CURP</a> | <a href=\"https://www.sat.gob.mx/\" target=\"_blank\" rel=\"noopener\">SAT</a></p>\n'
)
WHERE ID = 105
  AND post_type = 'page'
  AND post_content NOT LIKE '%Fuentes oficiales:%';

-- 4) Add outage helper note to FAQ page near official portal answer
UPDATE wp_posts
SET post_content = REPLACE(
  post_content,
  'El portal oficial es <a href=\"https://miportal.fone.sep.gob.mx/\" target=\"_blank\" rel=\"noopener\">miportal.fone.sep.gob.mx</a>.</p>',
  'El portal oficial es <a href=\"https://miportal.fone.sep.gob.mx/\" target=\"_blank\" rel=\"noopener\">miportal.fone.sep.gob.mx</a>.</p><p><em>Nota: Si el portal oficial no responde o tarda en cargar, intenta nuevamente en unos minutos o cambia de red (Wi-Fi/datos moviles).</em></p>'
)
WHERE ID = 166
  AND post_type = 'page'
  AND post_content LIKE '%El portal oficial es%'
  AND post_content NOT LIKE '%Si el portal oficial no responde o tarda en cargar%';

-- 5) Strengthen internal linking signals on key transactional pages
UPDATE wp_posts
SET post_content = CONCAT(
  post_content,
  '\n\n<h2>Enlaces utiles</h2>\n<ul>\n<li><a href=\"/ayuda-login-contrasena/\">Ayuda de Login y Contrasena</a></li>\n<li><a href=\"/descargar-talones-pago/\">Descargar Talones de Pago</a></li>\n<li><a href=\"/guia-fone-por-estado/\">Guia por Estado</a></li>\n<li><a href=\"/faq-contacto-mi-portal-fone/\">FAQ y Contacto</a></li>\n</ul>\n'
)
WHERE ID IN (158,162,178)
  AND post_type = 'page'
  AND post_content NOT LIKE '%<h2>Enlaces utiles</h2>%';

COMMIT;
