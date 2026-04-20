# Portal1 Scratch Rebuild Blueprint

This is the recommended path if you want to rebuild the site cleanly from scratch in WordPress using Kadence Theme and Kadence Blocks.

The goal is:
- clean structure
- consistent design
- mobile-safe layout
- teacher-friendly Kadence workflow
- easier future editing

---

## 1) Rebuild philosophy

Use this order:

1. Install WordPress cleanly
2. Install Kadence Theme
3. Install Kadence Blocks
4. Set global colors and fonts
5. Build header
6. Build footer
7. Build menu
8. Create pages
9. Add page content
10. Test desktop, tablet, mobile
11. Add tiny polish only if necessary

Do not start with custom CSS.

---

## 2) Site architecture

### Core pages

1. **Inicio**
2. **Talones**
3. **Ayuda**
4. **Estados**
5. **FAQ**
6. **Registro**
7. **RFC y CURP**
8. **Jubilados**

### Suggested slugs

- `/`
- `/talones/`
- `/ayuda/`
- `/estados/`
- `/faq/`
- `/registro/`
- `/rfc-curp/`
- `/jubilados/`

Use short slugs where possible.

---

## 3) Menu architecture

### Recommended primary menu

Top-level:
- Inicio
- Talones
- Ayuda
- Estados
- FAQ
- Guias

Under **Guias**:
- Registro
- RFC y CURP
- Jubilados

### Why this structure

This keeps the menu:
- short
- cleaner on desktop
- easier on mobile
- easier to explain in class

Do not use `Inicio` as a dropdown parent.

---

## 4) Design system

### Brand colors

- **Primary navy:** `#1A3B5D`
- **Deep navy:** `#132C47`
- **Accent gold:** `#F4B942`
- **Soft gold:** `#FFD76A`
- **White:** `#FFFFFF`
- **Body text:** `#10304D`
- **Light surface:** `#F5F7FA`

### Optional Mexican accent use

Use the Mexico-inspired accent carefully:
- green `#006847`
- white `#FFFFFF`
- red `#CE1126`

Use it only in very small areas:
- thin accent line
- small detail
- not as the main reading background

---

## 5) Typography

### Recommended

- **Headings:** Poppins or Kadence heading default
- **Body:** clean sans-serif default

### Type scale

- H1: strong, clear, not oversized
- H2: section headings
- H3: card titles / subsections
- Body: readable, comfortable

### Rules

- avoid tiny body text
- avoid over-decorated text
- keep line-height comfortable
- use bold for emphasis, not everywhere

---

## 6) Layout standards

### Content width

Use a readable content width:
- around `1100px` max for main content

### Spacing

Use consistent spacing:
- section spacing: medium-large
- card spacing: medium
- button spacing: medium

Avoid random empty blocks and spacer abuse.

---

## 7) Header specification

### Desktop

- Left: Logo + Site Title
- Center: Primary Navigation
- Right: empty

### Desktop style

- background: navy
- text: white
- hover/active: gold
- row height: around `90px`
- logo width: around `110px` to `120px`

### Tablet

- logo + title still visible
- navigation simplified if needed

### Mobile

- logo + title
- menu toggle only
- no full desktop menu forced into mobile

---

## 8) Footer specification

### Footer top

Use **3 columns**

#### Column 1 - About
- Heading: `Mi Portal FONE`
- Text:
  - `Guia informativa para acceso, talones de pago y ayuda de login.`
  - `Sitio informativo, no oficial.`

#### Column 2 - Enlaces rapidos
- Inicio
- Talones
- Ayuda
- Estados
- FAQ

#### Column 3 - Enlaces oficiales
- Portal oficial SEP
- SEP Mexico
- CURP
- SAT

### Footer bottom

Single centered line:
- `Copyright 2026 Mi Portal FONE Guia Informativa`

### Footer styling

- top background: navy
- bottom background: deep navy
- heading color: gold
- body text: white
- links: gold
- hover: white or gold

---

## 9) Homepage structure

### Homepage sections

1. Hero intro
2. Primary CTA buttons
3. Guide card grid
4. Quick questions
5. Trust/update block

### Hero content

- Title
- Short intro
- CTA button to official portal
- CTA button to Talones page

### Cards

Use 6 clean cards:
- Talones
- Ayuda
- Registro
- Jubilados
- RFC y CURP
- Estados

### Mobile behavior

- 3 columns desktop
- 2 columns tablet
- 1 column mobile

---

## 10) Inner page template

Use the same structure for every important page:

1. H1 title
2. short intro paragraph
3. 2-4 structured sections
4. useful links section
5. optional CTA / support section

Use **Default** page template, not Canvas.

---

## 11) Content quality standards

### Content should be:
- clear
- short paragraphs
- helpful headings
- internal-link aware
- scannable

### Avoid
- huge walls of text
- weak headings
- repeating the same phrase unnaturally
- stuffing too many links together

---

## 12) Accessibility standards

### Required
- readable contrast
- no hover-only information
- visible links before hover
- usable button sizes
- clear heading structure
- images with alt text

### Mobile accessibility
- no tiny tap targets
- no forced hover behavior
- no horizontal scrolling

---

## 13) Mobile-first standards

### Universal rules

- no horizontal scroll
- no hidden text
- no long menu labels in one row
- no cramped footer columns
- no fixed-width content blocks that break phones

### Test widths

- 360px
- 390px
- 768px
- 1024px

Check:
- header
- buttons
- card stacking
- image sizing
- footer stacking

---

## 14) Plugins

### Use
- Kadence Theme
- Kadence Blocks
- Rank Math

### Avoid adding too many extras early

Do not overload the rebuild with unnecessary plugins before the layout is stable.

---

## 15) Final finish checklist

Before calling the rebuild complete:

- header is clean
- mobile header works
- footer content is visible
- menu structure is simple
- all key pages use Default template
- desktop layout is aligned
- mobile layout is stable
- links are readable before hover
- buttons are consistent
- no duplicate footer text
- no broken dropdown behavior

---

## 16) Best practical recommendation

If you want the highest chance of success:

- treat the current site as a **content reference**
- rebuild structure cleanly in Kadence
- migrate polished content into the new build
- keep custom CSS minimal

That is the safest path to a professional-looking final site.
