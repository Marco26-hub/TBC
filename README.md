# The Blondes Cleaning — Landing Page

Premium luxury property management landing page for Lake Garda, Milan, and Como.

## 📂 File Structure

```
├── index.html       # Complete HTML structure (10 sections)
├── styles.css       # Responsive CSS (mobile-first)
├── script.js        # Navigation & smooth scroll
└── README.md        # This file
```

## 🚀 Quick Start

1. **Open in Browser**: Double-click `index.html` or open via live server
2. **Test Responsive**: Open DevTools → Toggle device toolbar (F12 or Cmd+Opt+I)
3. **WhatsApp Links**: All CTA buttons link to WhatsApp with pre-filled messages

## 🎨 Design System

### Colors
- **Primary Black**: `#0a0a0a` (body, text, buttons)
- **White**: `#ffffff` (backgrounds, contrast)
- **Gold Accent**: `#c6a96b` (highlights, CTAs)
- **Light Gray**: `#f5f5f5` (section backgrounds)
- **WhatsApp Green**: `#25d366` (main CTA button)

### Typography
- **Headings**: Playfair Display (serif, elegant)
- **Body**: Inter (sans-serif, clean)
- **Font Sizing**: Responsive with `clamp()` for fluid scaling

### Layout
- **Max Width**: 1200px
- **Mobile First**: Breakpoints at 480px, 768px, 1024px
- **Whitespace**: 40px-80px section gaps (luxury aesthetic)

## 📱 Responsive Design

- **Mobile** (< 480px): Single column, hamburger menu
- **Tablet** (480px-768px): 2-column grids, adjusted spacing
- **Desktop** (> 768px): Full 3-column layouts, optimal spacing

All components scale fluidly using CSS `clamp()`.

## 🔗 WhatsApp Integration

### Pre-filled Messages

Each CTA button has a pre-filled WhatsApp message matching the brand funnel:

**WhatsApp Link Format**:
```
https://wa.me/?text=YOUR_ENCODED_MESSAGE
```

**Current Messages**:

1. **Signature Plan**:
   ```
   Ciao 👋
   
   Iscritto dal sito.
   
   Vorrei ricevere info sul piano SIGNATURE (120€ - 150€)
   ```

2. **Premium Plan**:
   ```
   Ciao 👋
   
   Iscritto dal sito.
   
   Vorrei ricevere info sul piano PREMIUM (150€ - 190€)
   ```

3. **Private Plan**:
   ```
   Ciao 👋
   
   Iscritto dal sito.
   
   Vorrei ricevere info sul piano PRIVATE (190€ - 260€+)
   ```

4. **Main CTA** (Hero + Final):
   ```
   Ciao 👋
   
   Gestiamo completamente immobili per affitti brevi.
   
   Pulizia, check-in, ospiti, biancheria.
   
   👉 Tu pensi agli incassi
   👉 Noi pensiamo a tutto il resto
   
   Se vuoi, ti spiego come funziona 👍
   ```

### Customizing WhatsApp Number

To connect to your WhatsApp number, update all `href="https://wa.me/?text=..."` links to:
```
https://wa.me/YOUR_COUNTRY_CODE_NUMBER?text=YOUR_MESSAGE
```

**Example** (Italy, number +39 333 123 4567):
```html
href="https://wa.me/39333123456?text=Ciao%20👋..."
```

Replace `?text=` message with your custom message (URL encoded).

## 🔧 Customization

### Change Colors
Edit these CSS variables in `styles.css`:
- `#0a0a0a` → Primary Black
- `#c6a96b` → Accent Gold
- `#f5f5f5` → Background Light Gray
- `#25d366` → WhatsApp Green

### Change Typography
Update font imports in `index.html`:
```html
<link href="https://fonts.googleapis.com/css2?family=YOUR_SERIF:wght@400;600;700&family=YOUR_SANS:wght@300;400;500;600;700&display=swap" rel="stylesheet">
```

Then update CSS:
```css
h1, h2, h3 { font-family: 'YOUR_SERIF', serif; }
body { font-family: 'YOUR_SANS', sans-serif; }
```

### Change Copy
All Italian copy is in `index.html` sections. Edit directly:
- Hero: Lines 40-45
- Problema: Lines 50-62
- Soluzione: Lines 67-90
- Servizi: Lines 95-121
- Prezzi: Lines 141-165
- etc.

### Add Logo Image
Replace `.logo` text with image:
```html
<a href="#" class="logo">
    <img src="logo.png" alt="The Blondes Cleaning" style="height: 40px;">
</a>
```

### Enable Animations
CSS already includes `prefers-reduced-motion` checks. Animations are enabled by default. To disable:
```css
@media (prefers-reduced-motion: no-preference) {
    /* Delete content */
}
```

## ✅ Testing Checklist

- [ ] All sections render correctly
- [ ] Mobile menu opens/closes
- [ ] WhatsApp links open with pre-filled messages
- [ ] Responsive at 375px, 768px, 1024px, 1440px
- [ ] All buttons have hover effects
- [ ] Links scroll smoothly
- [ ] Pricing cards display correctly (Premium highlighted)
- [ ] Color contrast meets WCAG AA standards
- [ ] Fonts load without fallback warnings

## 🌐 Deployment Options

### Option 1: Pure HTML (Instant)
Host the 4 files on any static host:
- Netlify (drag & drop)
- Vercel (git connected)
- GitHub Pages
- AWS S3 + CloudFront
- Any web server

### Option 2: WordPress
1. Create new page
2. Copy HTML → Elementor/Visual Composer
3. Update styles in theme CSS
4. Replace WhatsApp links with real number

### Option 3: Webflow
1. Import HTML → Webflow Designer
2. Rebuild sections with Webflow components
3. Apply Webflow interactions (optional animations)
4. Publish

### Option 4: Framer
1. Import HTML into Framer
2. Convert to Framer components
3. Add Framer prototyping
4. Publish

## 📊 Analytics Integration

### Google Analytics
Add to `<head>` in `index.html`:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

### Meta Pixel (Facebook)
Add to `<head>`:
```html
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  // ... (Facebook pixel code)
</script>
```

### Track WhatsApp Clicks
Edit `script.js` to add:
```javascript
document.querySelectorAll('a[href*="wa.me"]').forEach(link => {
    link.addEventListener('click', () => {
        gtag('event', 'whatsapp_click', {
            'section': link.closest('section').id || 'unknown'
        });
    });
});
```

## 🔒 SEO Optimization

Meta tags already included:
```html
<meta name="description" content="...">
<title>...</title>
```

To enhance:
1. Add Open Graph tags for social sharing:
```html
<meta property="og:title" content="The Blondes Cleaning">
<meta property="og:description" content="...">
<meta property="og:image" content="logo.png">
```

2. Add schema markup (JSON-LD) for rich snippets
3. Ensure mobile responsiveness (already done)
4. Fast load time (minify CSS/JS for production)

## ⚡ Performance

Current size:
- `index.html`: ~8 KB
- `styles.css`: ~15 KB
- `script.js`: ~1 KB
- **Total**: ~24 KB (very fast load)

### Optimize Further:
1. Minify CSS/JS for production
2. Use WebP for images (if adding images)
3. Enable gzip compression on server
4. Lazy-load non-critical content

## 📝 Notes

- All copy is in Italian per brand strategy
- Gold accent (#c6a96b) used strategically (not overused)
- Premium pricing tier is highlighted and slightly larger
- WhatsApp CTA uses brand green (#25d366) for recognition
- Mobile-first ensures mobile users get optimal experience
- Smooth interactions maintain luxury feel without being flashy

## 🎯 Next Steps

1. **Test** → Open in browser, check responsiveness
2. **Customize** → Update WhatsApp number, company details
3. **Add Analytics** → Track clicks and conversions
4. **Deploy** → Choose hosting platform above
5. **Drive Traffic** → Use ads/Instagram to land page
6. **Funnel** → Ensure WhatsApp messages are handled
7. **Measure** → Track CTA clicks and conversions

---

**Created**: 2024  
**Framework**: Pure HTML/CSS/Vanilla JS (no dependencies)  
**License**: Yours to use and modify
