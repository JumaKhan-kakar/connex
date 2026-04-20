# Portal1 Complete Website Patch - Apply Steps

This package updates your site end-to-end from your provided backup:
- Replaces messy homepage with clean Spanish structure
- Fixes card alignment/mobile overflow via CSS patch
- Rewrites core pages in Spanish
- Adds 32-state guide content
- Adds internal links between pages
- Updates Rank Math title/description/focus keyword
- Adds image alt text

## 1) Backup first
1. Open LocalWP and start site `portal1`.
2. Open phpMyAdmin for the site database (`local`).
3. Export current DB backup (`Quick` + `SQL`).

## 2) Import patch
1. In phpMyAdmin select database `local`.
2. Open **SQL** tab.
3. Open file: `portal1-complete-website-patch.sql`.
4. Paste all SQL and click **Go**.

## 2b) Apply the final standard site refresh
If the site is already running and you want the quickest path to a cleaner finished site with:
- unified header/footer styling
- menu cleanup
- fewer hover/visibility conflicts
- a single CSS baseline instead of stacked overrides

Use this:
1. Open phpMyAdmin or Adminer for the active WordPress database.
2. Open **SQL** tab.
3. Open file: `portal1-header-footer-refresh.sql`.
4. Paste all SQL and click **Go**.
5. Clear cache and hard refresh the frontend.
6. The refresh intentionally replaces old Additional CSS so stacked hover/visibility conflicts are removed.

## 2c) If you want to rebuild it the Kadence lecture-safe way
If your teacher wants a clean Kadence-first structure with minimal custom CSS:
1. Open file: `KADENCE-LECTURE-SAFE-RESET.md`.
2. Follow the steps to remove the current Additional CSS overrides.
3. Rebuild the header/footer using Kadence Builder only.
4. Follow the mobile-first checklist inside that guide for phone/tablet safety.
5. Clean the menu structure before doing any extra styling.

## 2d) Recommended long-term path: rebuild in place on Pantheon
If WordPress is already installed on Pantheon and Kadence is already active, the best long-term path is:
1. Open file: `PORTAL1-SCRATCH-REBUILD-BLUEPRINT.md`.
2. Use `PORTAL1-KADENCE-BUILD-GUIDE.md` as the build order inside WordPress.
3. Use `PORTAL1-CONTENT-KIT.md` for clean page, menu, button, and footer copy.
4. Keep the existing WordPress + Kadence install, remove the broken site details, and rebuild the whole site in Kadence cleanly.
5. Do only tiny polish afterward.

## 3) Which route should you choose?

- Choose **2b Final standard refresh** if you want the fastest practical cleanup path.
- Choose **2c Kadence lecture-safe reset** if you want the most teacher-friendly builder-first workflow on the existing site.
- Choose **2d Pantheon in-place rebuild** if you want the cleanest long-term result and the highest chance of a polished final website without reinstalling WordPress or Kadence.

## 4) WordPress checks (5 minutes)
1. Open `Settings -> Permalinks` and click **Save Changes** once.
2. Open homepage and check cards on desktop + mobile.
3. Open all pages and confirm Spanish content is loaded.
4. Open Rank Math snippet editor for each page and verify meta values.

## 5) Optional polish
- Replace any placeholder images with your preferred visuals.
- Regenerate cache if a cache plugin is active.
