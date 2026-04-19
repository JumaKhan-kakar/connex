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

-- 2) Append a clean responsive header/footer theme refresh
UPDATE wp_posts
SET post_content = CONCAT(
  post_content,
  '

/* BEGIN PORTAL1 HEADER FOOTER REFRESH */
:root {
  --portal1-navy: #1a3b5d;
  --portal1-navy-deep: #132c47;
  --portal1-gold: #f4b942;
  --portal1-gold-soft: #ffd76a;
  --portal1-white: #ffffff;
  --portal1-ink: #10304d;
  --portal1-surface: rgba(255,255,255,0.08);
  --portal1-border: rgba(255,255,255,0.16);
  --portal1-mex-green: #006847;
  --portal1-mex-red: #ce1126;
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

#main-header {
  display: block !important;
  background: transparent !important;
}

#mobile-header {
  display: none !important;
}

#masthead,
#masthead .site-main-header-wrap .site-header-row-container-inner,
#masthead .site-header-upper-inner-wrap,
#masthead .site-header-inner-wrap {
  background: var(--portal1-navy) !important;
}

#masthead .site-main-header-wrap .site-header-row-container-inner > .site-container {
  padding: 16px 22px !important;
}

#masthead .site-main-header-inner-wrap.site-header-row-center-column {
  grid-template-columns: auto minmax(0, 1fr) auto !important;
  align-items: center;
  column-gap: 26px;
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
  gap: 14px !important;
  align-items: center !important;
}

.site-branding a.brand img {
  max-width: 132px !important;
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
  font-size: clamp(1.55rem, 1.25rem + 1vw, 2rem) !important;
  font-weight: 700 !important;
  line-height: 1.1 !important;
  white-space: nowrap;
}

.site-branding .site-title-wrap {
  display: flex;
  flex-direction: column;
  gap: 2px;
}

#masthead .header-navigation-layout-stretch-true.header-navigation-layout-fill-stretch-true .header-navigation .header-menu-container .menu,
#masthead .primary-menu-container > ul.menu {
  display: flex !important;
  justify-content: flex-end !important;
  align-items: center !important;
  gap: 10px !important;
  flex-wrap: wrap !important;
  grid-template-columns: none !important;
}

#masthead .primary-menu-container > ul.menu > li,
#masthead .header-navigation-layout-stretch-true.header-navigation-layout-fill-stretch-true .header-navigation .header-menu-container .menu > li {
  flex: 0 0 auto !important;
  display: block !important;
  text-align: left !important;
  margin: 0 !important;
}

#masthead .main-navigation ul.sub-menu,
#masthead .main-navigation ul.submenu {
  display: none !important;
  flex-direction: column !important;
  position: absolute !important;
  top: calc(100% + 10px) !important;
  left: 0 !important;
  min-width: 230px !important;
  padding: 10px !important;
  border-radius: 14px !important;
  background: var(--portal1-navy-deep) !important;
  border: 1px solid rgba(255,255,255,0.12) !important;
  box-shadow: 0 18px 34px rgba(0,0,0,0.22) !important;
  z-index: 999 !important;
}

#masthead .main-navigation li:hover > ul.sub-menu,
#masthead .main-navigation li:hover > ul.submenu,
#masthead .main-navigation li:focus-within > ul.sub-menu,
#masthead .main-navigation li:focus-within > ul.submenu,
#masthead .main-navigation li.menu-item--toggled-on > ul.sub-menu,
#masthead .main-navigation li.menu-item--toggled-on > ul.submenu {
  display: block !important;
}

#masthead .main-navigation .menu-item > a {
  color: var(--portal1-white) !important;
  background: transparent !important;
  text-decoration: none !important;
  font-weight: 600 !important;
  font-size: 0.96rem !important;
  line-height: 1.2 !important;
  letter-spacing: 0.01em;
  padding: 11px 14px !important;
  border-radius: 999px !important;
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
  box-shadow: 0 10px 20px rgba(0,0,0,0.15) !important;
  transform: translateY(-1px);
}

#masthead .main-navigation ul.sub-menu a,
#masthead .main-navigation ul.submenu a {
  width: 100% !important;
  color: var(--portal1-white) !important;
  background: transparent !important;
  border-radius: 10px !important;
  padding: 11px 12px !important;
  font-size: 0.92rem !important;
}

#masthead .main-navigation ul.sub-menu a:hover,
#masthead .main-navigation ul.submenu a:hover {
  background: rgba(244,185,66,0.16) !important;
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
  padding-top: 34px !important;
  padding-bottom: 28px !important;
  gap: 22px !important;
}

#colophon .site-top-footer-inner-wrap .site-footer-section {
  background: var(--portal1-surface) !important;
  border: 1px solid var(--portal1-border) !important;
  border-radius: 18px !important;
  padding: 20px 18px !important;
  box-shadow: 0 12px 28px rgba(0,0,0,0.14);
}

#colophon .site-top-footer-inner-wrap .site-footer-section:not(:last-child)::after {
  display: none !important;
}

#colophon .footer-widget-area-inner,
#colophon .site-info-inner {
  display: flex;
  flex-direction: column;
  gap: 12px;
  height: 100%;
}

#colophon .footer-widget-area-inner > section.widget_block:last-child {
  order: -1;
}

#colophon .wp-block-heading,
#colophon .widget-title {
  margin: 0 !important;
  color: var(--portal1-gold) !important;
  font-size: 1.05rem !important;
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
  padding-top: 18px !important;
  padding-bottom: 22px !important;
}

#colophon .footer-html-inner p {
  margin: 0 !important;
  text-align: center;
}

@media (max-width: 1024px) {
  #masthead .site-main-header-inner-wrap.site-header-row-center-column {
    grid-template-columns: 1fr !important;
    row-gap: 16px;
  }

  #masthead .site-header-main-section-left,
  #masthead .site-header-main-section-center,
  #masthead .site-header-main-section-right,
  #masthead .site-header-main-section-left-center,
  #masthead .site-header-main-section-right-center {
    justify-content: center !important;
  }

  #masthead .primary-menu-container > ul.menu,
  #masthead .header-navigation-layout-stretch-true.header-navigation-layout-fill-stretch-true .header-navigation .header-menu-container .menu {
    justify-content: center !important;
  }
}

@media (max-width: 767px) {
  #masthead .site-main-header-wrap .site-header-row-container-inner > .site-container {
    padding: 14px 16px !important;
  }

  .site-branding a.brand {
    flex-direction: column !important;
    text-align: center;
  }

  .site-branding a.brand img {
    max-width: 128px !important;
  }

  .site-branding .site-title {
    font-size: 1.5rem !important;
    white-space: normal;
    text-align: center;
  }

  #masthead .main-navigation .menu-item > a {
    padding: 10px 12px !important;
    font-size: 0.93rem !important;
  }

  #colophon .site-top-footer-inner-wrap {
    padding-top: 26px !important;
  }
}
/* END PORTAL1 HEADER FOOTER REFRESH */
'
)
WHERE ID = 24
  AND post_type = 'custom_css'
  AND post_content NOT LIKE '%BEGIN PORTAL1 HEADER FOOTER REFRESH%';

COMMIT;
