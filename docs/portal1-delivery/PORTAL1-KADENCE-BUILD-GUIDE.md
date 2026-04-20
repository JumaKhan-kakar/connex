# Portal1 Kadence Build Guide

This guide tells you the safest order to rebuild the site in WordPress using Kadence.

Use this after reading:

- `PORTAL1-SCRATCH-REBUILD-BLUEPRINT.md`

---

## Phase 1 - Clean Pantheon start

This guide assumes:
- your site is already running on Pantheon
- WordPress is already installed
- Kadence Theme is already installed
- Kadence Blocks is already installed
- Rank Math is already installed

So the goal is not to reinstall. The goal is to **remove the broken site details** and rebuild the structure cleanly on the same install.

### 1) Before rebuilding
Do this first:
- export a backup from Pantheon or your database tool
- save any current content/images you want to reuse
- do not paste large Additional CSS
- do not use Canvas templates for normal content pages
- do not build the menu before the page list is finalized

### 2) Keep these, reset these

Keep:
- WordPress install
- Kadence Theme
- Kadence Blocks
- Rank Math

Reset/rebuild:
- Additional CSS
- header builder
- footer builder
- menu structure
- page templates
- duplicated footer/widget content

---

## Phase 2 - Global site settings

Open:

`Settings -> General`

Set:
- Site Title: `Mi Portal FONE`
- Tagline: optional short line or leave blank

Open:

`Settings -> Reading`

Set homepage to:
- `Inicio`

Open:

`Settings -> Permalinks`

Use:
- `Post name`

---

## Phase 3 - Kadence global design

Open:

`Appearance -> Customize -> Colors & Fonts -> Colors`

Set global palette:
- Palette 1: `#1A3B5D`
- Palette 2: `#F4B942`
- Palette 3: `#132C47`
- White: `#FFFFFF`
- Light background: `#F5F7FA`
- Body text: `#10304D`

Open:

`Appearance -> Customize -> Colors & Fonts -> Typography`

Suggested:
- Headings: Poppins or similar
- Body: system font or clean sans-serif

Target feel:
- clear
- modern
- readable
- not overly decorative

---

## Phase 4 - Build the page list first

Create these pages:

1. Inicio
2. Descargar Talones de Pago
3. Ayuda de Login y Contrasena
4. Guia de Registro
5. Guia RFC y CURP
6. Guia para Jubilados
7. Guia por Estado
8. FAQ y Contacto

For each page:
- Template = `Default`

Do not use:
- `Kadence Canvas`

---

## Phase 5 - Build the menu

Open:

`Appearance -> Menus`

Use this structure:

### Top-level
- Inicio
- Talones
- Ayuda
- Estados
- FAQ
- Guias

### Under `Guias`
- Registro
- RFC y CURP
- Jubilados

### Menu label mapping
- `Descargar Talones de Pago` -> Navigation Label: `Talones`
- `Ayuda de Login y Contrasena` -> `Ayuda`
- `Guia por Estado` -> `Estados`
- `FAQ y Contacto` -> `FAQ`
- `Guia de Registro` -> `Registro`
- `Guia RFC y CURP` -> `RFC y CURP`
- `Guia para Jubilados` -> `Jubilados`

This keeps the menu clean without changing the actual page titles.

---

## Phase 6 - Build the header

Open:

`Appearance -> Customize -> Header`

### Desktop layout
- Left: Logo + Site Title
- Center: Primary Navigation
- Right: empty

### Main row settings
- Background: `#1A3B5D`
- Height: around `90`
- Padding: moderate

### Logo settings
- Max width: `110` to `120`
- Avoid oversized logo images

### Site title
- Color: white
- Weight: 700
- Keep title short enough to fit

### Primary navigation
- Initial text: white
- Hover: gold
- Active: gold
- Background: transparent
- Item spacing: medium

### Dropdown
- Background: `#132C47`
- Text: white
- Hover: gold

### Mobile header
Switch to tablet/mobile preview.

Use:
- Logo
- Mobile Navigation toggle

Do not use:
- full desktop menu on mobile

Recommended mobile row height:
- `70` to `72`

---

## Phase 7 - Build the footer

Open:

`Appearance -> Customize -> Footer`

### Use 3 columns

#### Column 1
Heading:
- `Mi Portal FONE`

Text:
- `Guia informativa para acceso, talones de pago y ayuda de login.`
- `Sitio informativo, no oficial.`

#### Column 2
Heading:
- `Enlaces Rapidos`

Links:
- Inicio
- Talones
- Ayuda
- Estados
- FAQ

#### Column 3
Heading:
- `Enlaces Oficiales`

Links:
- Portal oficial SEP
- SEP Mexico
- CURP
- SAT

### Bottom footer
One line only:
- `Copyright 2026 Mi Portal FONE Guia Informativa`

### Footer colors
- Top background: `#1A3B5D`
- Bottom background: `#132C47`
- Headings: `#F4B942`
- Text: `#FFFFFF`
- Links: `#F4B942`
- Link hover: `#FFFFFF`

---

## Phase 8 - Build the homepage sections

Use Kadence Blocks and keep the layout simple:

1. Hero heading
2. Intro paragraph
3. Two CTA buttons
4. 6 guide cards
5. Quick questions section
6. Trust/update block
7. Featured image or visual support image

### Homepage layout rules
- max readable width
- clear spacing between sections
- no giant empty gaps
- no raw HTML unless necessary

---

## Phase 9 - Build inside pages consistently

For all inner pages:
- one main H1
- intro paragraph
- H2 sections
- internal links to related pages
- official source link where useful

Keep structure consistent so the whole site feels unified.

---

## Phase 10 - Mobile quality checks

Check on:
- desktop
- tablet
- mobile

Verify:
- no overlapping navigation
- no hidden text
- no hover-only information
- no horizontal scrolling
- footer stacks well
- cards stack well
- buttons are easy to tap

---

## Phase 11 - Final polish

After structure is complete:
- save permalinks
- test all links
- check every page title and meta in Rank Math
- confirm consistent colors and spacing
- use only tiny CSS if something absolutely cannot be done in Kadence

If large CSS becomes necessary, stop and ask whether the structure should be adjusted in Kadence instead.
