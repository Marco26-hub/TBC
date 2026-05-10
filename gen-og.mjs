import puppeteer from 'puppeteer';
import path from 'path';

const browser = await puppeteer.launch({headless: true});
const page = await browser.newPage();
await page.setViewport({width: 1200, height: 630, deviceScaleFactor: 1});

const filePath = path.resolve('/Users/md/pulizie srl/og-card.html');
await page.goto(`file://${filePath}`, {waitUntil: 'networkidle0', timeout: 30000});
await page.evaluateHandle('document.fonts.ready');
await new Promise(r => setTimeout(r, 1500));

await page.screenshot({
  path: '/Users/md/pulizie srl/og-image.jpg',
  type: 'jpeg',
  quality: 90,
  clip: {x: 0, y: 0, width: 1200, height: 630}
});

await browser.close();
console.log('OG image generated');
