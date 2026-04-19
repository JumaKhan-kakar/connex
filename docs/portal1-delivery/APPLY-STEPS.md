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

## 2b) Fix an already-built site header/footer only
If the site is already running and you only want the cleaner header/footer refresh:
1. Open phpMyAdmin or Adminer for the active WordPress database.
2. Open **SQL** tab.
3. Open file: `portal1-header-footer-refresh.sql`.
4. Paste all SQL and click **Go**.
5. Clear cache and hard refresh the frontend.

## 2c) If you want to rebuild it the Kadence lecture-safe way
If your teacher wants a clean Kadence-first structure with minimal custom CSS:
1. Open file: `KADENCE-LECTURE-SAFE-RESET.md`.
2. Follow the steps to remove the current Additional CSS overrides.
3. Rebuild the header/footer using Kadence Builder only.
4. Follow the mobile-first checklist inside that guide for phone/tablet safety.
5. Clean the menu structure before doing any extra styling.

## 3) WordPress checks (5 minutes)
1. Open `Settings -> Permalinks` and click **Save Changes** once.
2. Open homepage and check cards on desktop + mobile.
3. Open all pages and confirm Spanish content is loaded.
4. Open Rank Math snippet editor for each page and verify meta values.

## 4) Optional polish
- Replace any placeholder images with your preferred visuals.
- Regenerate cache if a cache plugin is active.
