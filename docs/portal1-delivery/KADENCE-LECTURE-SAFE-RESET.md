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
