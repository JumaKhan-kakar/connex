# LocalWP -> Live Hosting Deployment Checklist

## A) Pre-launch
1. Buy domain + hosting.
2. Create clean WordPress install on hosting.
3. Enable SSL (HTTPS).
4. Confirm PHP 8.1+ and enough memory/upload limits.

## B) Migrate
1. Install migration plugin on LocalWP and live site (Duplicator or All-in-One WP Migration).
2. Export site package from LocalWP.
3. Import package on live site.
4. Run URL replacement from `portal1.local` (or Live Link URL) to your final domain.

## C) Post-migration
1. `Settings -> Permalinks -> Save Changes`.
2. Check homepage, navigation, and all page links.
3. Clear cache layers (plugin/server/CDN).
4. Test contact path and mobile layout.

## D) SEO launch
1. Ensure all key pages are indexable.
2. Generate sitemap in Rank Math.
3. Submit sitemap to Google Search Console.
4. Fix any 404 links found in crawl.
