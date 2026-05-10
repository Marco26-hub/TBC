import puppeteer from 'puppeteer';
import path from 'path';
import { fileURLToPath } from 'url';

const projectRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');

const browser = await puppeteer.launch({headless: true});
const page = await browser.newPage();
await page.setViewport({width: 1440, height: 900});

const filePath = path.join(projectRoot, 'brochure.html');
await page.goto(`file://${filePath}`, {waitUntil: 'networkidle0', timeout: 30000});

// Wait for Google Fonts to load
await page.evaluateHandle('document.fonts.ready');
await new Promise(r => setTimeout(r, 3000));

// Hide toolbar and apply print styles
await page.emulateMediaType('print');
await page.evaluate(() => {
  const toolbar = document.querySelector('.toolbar');
  if (toolbar) toolbar.style.display = 'none';
});

await page.pdf({
  path: path.join(projectRoot, 'assets/docs/brochure.pdf'),
  format: 'A4',
  printBackground: true,
  margin: {top: '0', right: '0', bottom: '0', left: '0'},
  preferCSSPageSize: true
});

await browser.close();
console.log('PDF generated successfully');
