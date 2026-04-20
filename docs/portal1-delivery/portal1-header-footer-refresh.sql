-- Portal1 header + footer refresh
-- Apply in phpMyAdmin/Adminer on the current site database
-- Safe to run once on sites that already have the Portal1 pages/content

START TRANSACTION;

-- 1) Make sure key pages use the normal Kadence template
DELETE FROM wp_postmeta
WHERE post_id IN (105,150,154,158,162,166,170,174,178)
  AND meta_key = '_wp_page_template';

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

-- 2) Flatten the unstable Inicio dropdown and shorten menu labels
UPDATE wp_postmeta
SET meta_value = '0'
WHERE post_id IN (538,540)
  AND meta_key = '_menu_item_menu_item_parent';

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
post_modified = NOW(),
post_modified_gmt = UTC_TIMESTAMP()
WHERE ID IN (529,530,531,532,533,538,540)
  AND post_type = 'nav_menu_item';

-- 3) Replace stacked Additional CSS with one clean baseline
UPDATE wp_posts
SET post_content = '/* BEGIN PORTAL1 FINAL STANDARD CSS */
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
/* END PORTAL1 FINAL STANDARD CSS */'
WHERE ID = 24
  AND post_type = 'custom_css';

COMMIT;
