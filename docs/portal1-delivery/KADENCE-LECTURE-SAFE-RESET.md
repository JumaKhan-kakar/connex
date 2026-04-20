# Portal1 Kadence Lecture-Safe Reset

This guide is the safest path for a first WordPress/Kadence project.

Use this if:
- the header text disappears unless you hover
- the dropdown under `Inicio` behaves badly
- the footer looks uneven or hard to read
- your teacher wants you to use Kadence properly instead of stacking custom CSS

## Why the site feels broken right now

The current site is fighting itself in 3 places:

1. **Too much Additional CSS** is overriding Kadence defaults.
2. **`Inicio` is acting like both a page link and a dropdown parent**, which makes the submenu awkward.
3. Some pages still use the **Kadence Canvas** template, which removes the normal page structure.

For a lecture-safe build, the cleanest move is:

- remove the custom CSS overrides
- rebuild header/footer in Kadence Builder
- clean the menu structure
- switch important pages back to the normal template

---

## Part 1 - Remove the custom CSS overrides

### Step 1
Open:

`Appearance -> Customize -> Additional CSS`

### Step 2
Copy everything there into a text file first as a backup.

### Step 3
Delete the entire Additional CSS content and click **Publish**.

This is the most important step. Right now the hidden text, hover-only colors, and layout problems are being caused by CSS overrides fighting Kadence.

---

## Part 2 - Set the site colors in Kadence

Open:

`Appearance -> Customize -> Colors & Fonts -> Colors`

Use this palette:

- **Palette 1 / Primary:** `#1A3B5D` (navy)
- **Palette 2 / Accent:** `#F4B942` (gold)
- **Optional dark navy:** `#132C47`
- **White:** `#FFFFFF`

These match your current button style and keep the site consistent.

---

## Part 3 - Rebuild the header the Kadence way

Open:

`Appearance -> Customize -> Header`

### Recommended structure

- **Left:** Logo + Site Title
- **Center:** Primary Navigation
- **Right:** Empty

Keep it simple.

### Main Row settings

- Background color: `#1A3B5D`
- Row height: around `90` to `100`
- Bottom border: optional thin line only if you like it

### Logo / Site Title settings

- Logo max width: around `110` to `130`
- Site title color: `#FFFFFF`
- Site title weight: `700`

### Primary Navigation settings

Open:

`Header -> Primary Navigation`

Set:

- Initial text color: `#FFFFFF`
- Hover text color: `#F4B942`
- Active text color: `#F4B942`
- Background: transparent
- Item spacing: medium

### Dropdown settings

- Dropdown background: `#132C47`
- Dropdown link color: `#FFFFFF`
- Dropdown hover color: `#F4B942`

Do **not** try to force dropdown behavior with CSS.

---

## Part 4 - Fix the menu structure

Open:

`Appearance -> Menus`

or

`Customize -> Menus`

### Current problem

`Inicio` has child items under it. That makes `Inicio` both:
- a clickable page link
- and a dropdown parent

That is why the dropdown feels unstable.

### Beginner-safe fix

Make `Inicio` a normal top-level item with **no children**.

Create a separate top-level parent item like:

- `Guias`

Put these under `Guias`:

- Registro
- Guia RFC y CURP
- Guia para Jubilados

Keep these as top-level items:

- Inicio
- Descargar Talones de Pago
- Ayuda de Login y Contrasena
- Guia por Estado
- FAQ y Contacto
- Guias

This is cleaner, easier to explain to a teacher, and more natural for users.

---

## Part 5 - Rebuild the footer in Kadence Builder

Open:

`Appearance -> Customize -> Footer`

### Recommended footer structure

Use **3 columns**, not 4.

### Column 1 - About
Heading:

- `Mi Portal FONE`

Text:

- `Guia informativa para acceso, talones de pago y ayuda de login.`
- `Sitio informativo, no oficial.`

### Column 2 - Enlaces rapidos
Use a **Navigation Menu** block or widget:

- Inicio
- Descargar Talones de Pago
- Ayuda de Login y Contrasena
- Guia por Estado
- FAQ y Contacto

### Column 3 - Enlaces oficiales
Use links:

- Portal oficial SEP
- SEP Mexico
- CURP
- SAT

### Bottom footer row

Keep only one centered line:

- `Copyright 2026 Mi Portal FONE Guia Informativa`

### Footer colors

- Footer background: `#1A3B5D`
- Bottom footer background: `#132C47`
- Heading color: `#F4B942`
- Body text color: `#FFFFFF`
- Link hover: `#F4B942`

---

## Part 6 - Fix page templates

Open each key page and make sure the template is:

- `Default`

Check these pages:

- Inicio
- Descargar Talones de Pago
- Ayuda de Login y Contrasena
- Guia de Registro
- Guia RFC y CURP
- Guia para Jubilados
- Guia por Estado
- FAQ y Contacto

Do **not** leave them on `Kadence Canvas` if you want the normal site header/footer.

---

## Part 7 - Final cleanup

### Save permalinks
Open:

`Settings -> Permalinks`

Click **Save Changes** once.

### Clear cache

- clear plugin cache if any
- clear Pantheon cache if available
- hard refresh browser

---

## Part 8 - Mobile-first quality rules

This is important because your teacher is right: a site should not work only on desktop.

When rebuilding with Kadence, treat **mobile as a required layout**, not an afterthought.

### Universal mobile rules to follow

#### Header
- Keep the logo small enough to fit naturally
- Keep the site title short
- Do not force long menu items into one row
- Use a clean mobile menu/drawer instead of squeezing desktop navigation
- Do not use hover-dependent behavior for mobile users

#### Content area
- Do not let text run too wide
- Avoid large fixed widths
- Avoid manual spacing with too many empty blocks
- Keep buttons full-width or comfortably tappable on small screens
- Use stacked cards on mobile, not 3-column desktop layouts

#### Footer
- Reduce footer columns on tablet/mobile
- Keep links vertically readable
- Avoid long lines of tiny text
- Make footer headings clear and larger than the body text

#### Accessibility and usability
- Text should stay visible without hover
- Links must look like links even before hover
- Tap targets should not be too small
- Menu items should be easy to tap with a thumb
- Important buttons should have enough contrast

---

## Part 9 - Mobile settings inside Kadence

### Header mobile setup
Open:

`Appearance -> Customize -> Header`

Then switch to the **tablet/mobile preview icons** while editing.

Recommended:
- Desktop: logo + title + primary navigation
- Tablet: logo + title + simplified nav or menu toggle
- Mobile: logo + title + **menu toggle only**

Do not try to keep the full desktop menu visible on mobile.

### Mobile menu recommendations
- Use Kadence mobile drawer
- Keep the menu list simple
- Avoid deep nesting
- Avoid putting many pages under `Inicio`

### Footer mobile setup
Open:

`Appearance -> Customize -> Footer`

Recommended:
- Desktop: 3 columns
- Tablet: 2 or 3 depending on readability
- Mobile: 1 column or stacked sections

If any footer column looks crowded on mobile, stack it instead of shrinking the text.

---

## Part 10 - Mobile test checklist

After every big change, test these screen sizes:

- **360px width** (small Android)
- **390px width** (modern phones)
- **768px width** (tablet)
- **1024px width** (small laptop/tablet landscape)

Check these things on each:

### Header checks
- Is the site title visible?
- Is the logo aligned well?
- Does the menu wrap badly?
- Can the mobile menu open and close cleanly?
- Are dropdown items easy to tap?

### Homepage checks
- Do buttons fit inside the screen?
- Do cards stack correctly?
- Does any text overflow outside its box?
- Is there too much empty space?
- Are images proportionate?

### Footer checks
- Are headings visible?
- Are links readable before hover?
- Is anything cut off?
- Are columns stacked cleanly?
- Is the copyright line centered and readable?

### Global checks
- No horizontal scrolling
- No hidden text
- No hover-only information
- No overlapping blocks
- No giant empty gaps

---

## Part 11 - The safest mobile strategy for your first site

If you want the site to stay stable in future:

1. Build layout in Kadence first
2. Check desktop, tablet, and mobile inside the Customizer
3. Keep the menu simple
4. Keep footer columns limited
5. Only use very small CSS polish later

For a first project, this is the safest universal method.

---

## The easiest success path for your project

If you want your teacher to see a clean Kadence build:

1. Remove all Additional CSS
2. Use Kadence Header Builder
3. Use Kadence Footer Builder
4. Fix the menu structure
5. Put all main pages on `Default` template

That gives you:

- better alignment
- easier editing later
- a site you can explain confidently in class
- less risk of random breakage

---

## Do not do this again

Avoid:

- forcing menu layout with custom CSS
- using `Inicio` as both page link and dropdown parent
- mixing Canvas pages with normal theme pages
- styling header/footer mainly through Additional CSS

For a first site, Kadence Builder should control structure first. CSS should only be tiny polish later.
