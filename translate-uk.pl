#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use open ':std', ':encoding(UTF-8)';
binmode STDOUT, ':utf8';

my $file = shift @ARGV or die "Usage: $0 <file>\n";
open my $fh, '<', $file or die "Cannot open $file: $!";
my $html = do { local $/; <$fh> };
close $fh;

# ===== HERO =====
$html =~ s{Short-term rental management and luxury villa Housekeeping}{Управління короткостроковою орендою та Housekeeping люкс-вілл}g;
$html =~ s{Short-term Rental Management and Luxury Villa Housekeeping}{Управління короткостроковою орендою та Housekeeping люкс-вілл}g;
$html =~ s{Short-Term Rental Management and Luxury Villa Housekeeping}{Управління короткостроковою орендою та Housekeeping люкс-вілл}g;
$html =~ s{Complete property management for luxury villas[^<]*}{Повне управління преміум-нерухомістю на озерах Гарда, Комо та в Мілані.};
$html =~ s{Every stay, every detail, every guest\.}{Кожне перебування, кожна деталь, кожен гість.};
$html =~ s{average revenue in 6 months}{середній дохід за 6 місяців};
$html =~ s{5-star reviews}{5-зіркові відгуки};
$html =~ s{Zero worries}{Жодних турбот};
$html =~ s{You perceive the value of your investment\.}{Ви відчуваєте цінність вашої інвестиції.};
$html =~ s{We preserve the standard — every day\.}{Ми підтримуємо стандарт — щодня.};
$html =~ s{Calculate your villa revenue on WhatsApp}{Розрахуйте дохід вашої вілли в WhatsApp}g;
$html =~ s{Calculate your revenue on WhatsApp}{Розрахуйте ваш дохід в WhatsApp}g;
$html =~ s{Discover how it works}{Дізнайтеся як це працює}g;
$html =~ s{Reply within 2 hours \(Mon–Sat\)}{Відповідь протягом 2 годин (Пн–Сб)};
$html =~ s{Site visit \(no commitment\)}{Огляд об'єкта (без зобов'язань)};

# ===== PROBLEMA =====
$html =~ s{>THE PROBLEM<}{>ПРОБЛЕМА<};
$html =~ s{Why villas lose value}{Чому вілли втрачають цінність};
$html =~ s{The luxury short-term rental market is unforgiving[^<]*}{Ринок короткострокової оренди класу люкс не пробачає. Кожна деталь має значення.};
$html =~ s{Inconsistent cleaning standards}{Непослідовні стандарти прибирання};
$html =~ s{Different cleaners, different results[^<]*}{Різні прибиральниці, різні результати. Гості помічають. Відгуки страждають.};
$html =~ s{Logistical chaos}{Логістичний хаос};
$html =~ s{Check-ins, check-outs[^<]*}{Реєстрація, виїзд, передача білизни, ключі, надзвичайні ситуації — у вас немає часу.};
$html =~ s{Linen below standard}{Білизна нижче стандарту};
$html =~ s{Sheets that scratch[^<]*}{Простирадла, що дряпають, рушники, що пахнуть. Ваша вілла заслуговує тканин 5-зіркового готелю.};
$html =~ s{No language management}{Немає мовного менеджменту};
$html =~ s{International guests need [^<]*}{Міжнародні гості потребують спілкування 5 мовами. Один лише WhatsApp недостатньо.};
$html =~ s{Lost time, lost money\.[^<]*}{Витрачений час, витрачені гроші.};
$html =~ s{Your villa <strong>is worth more</strong> than this\.}{Ваша вілла <strong>варта більшого</strong>.};

# ===== SOLUZIONE =====
$html =~ s{>THE SOLUTION<}{>РІШЕННЯ<};
$html =~ s{>OUR PROMISE<}{>НАША ОБІЦЯНКА<};
$html =~ s{One team\. Total quality\.}{Одна команда. Повна якість.};
$html =~ s{We don't manage [^<]*}{Ми не керуємо нерухомістю. Ми зберігаємо її цінність.};
$html =~ s{Hotel-Grade Housekeeping}{Housekeeping готельного рівня};
$html =~ s{Operational protocols [^<]*}{Операційні протоколи у 47 пунктах. Перевірені тканини. Ідеально презентовані вілли.};
$html =~ s{International Concierge}{Міжнародний консьєрж};
$html =~ s{Multilingual support [^<]*}{Багатомовна підтримка 24/7. Італійська, англійська, французька, німецька, російська.};
$html =~ s{Premium Linen}{Преміум білизна};
$html =~ s{Egyptian cotton[^<]*}{Єгипетська бавовна. Контрольована термосанітизація. Замінюємо при найменшому дефекті.};
$html =~ s{Quality Control}{Контроль якості};
$html =~ s{Photographic checks[^<]*}{Фотоконтроль після кожного перебування. Звіти власнику. Постійні стандарти.};
$html =~ s{Linen Logistics}{Логістика білизни};
$html =~ s{Industrial circuit[^<]*}{Промисловий цикл. Завжди свіжі рулони. Жодних затримок між перебуваннями.};
$html =~ s{Total Discretion}{Повна дискретність};
$html =~ s{Selected and trained staff[^<]*}{Відібраний та навчений персонал. Підписані NDA. Ваша конфіденційність захищена.};
$html =~ s{Your villa, treated as if it were ours\.}{Ваша вілла, доглянута як своя.};

# ===== EXTRA SERVIZI =====
$html =~ s{>THE COMPLETE EXPERIENCE<}{>ПОВНИЙ ДОСВІД<};
$html =~ s{Beyond housekeeping}{Понад housekeeping};
$html =~ s{Tailor-made services [^<]*}{Послуги на замовлення для гостей, які цінують деталі. Активуйте те, що потрібно.};
$html =~ s{>WELCOME &amp; HOSPITALITY<}{>ЗУСТРІЧ ТА ГОСТИННІСТЬ<};
$html =~ s{>FOOD &amp; BEVERAGE<}{>ЇЖА ТА НАПОЇ<};
$html =~ s{>LIFESTYLE<}{>СТИЛЬ ЖИТТЯ<};
$html =~ s{Personalized welcome kit}{Персоналізований welcome kit};
$html =~ s{Curated welcome flowers}{Кураторські квіти зустрічі};
$html =~ s{In-house check-in / check-out}{Реєстрація/виїзд на місці};
$html =~ s{Personalized turndown}{Персоналізоване розправлення ліжка};
$html =~ s{Stocked pantry on arrival}{Наповнена комора при прибутті};
$html =~ s{Selected wine cellar}{Відібрана винна карта};
$html =~ s{Private chef on request}{Приватний шеф за запитом};
$html =~ s{Catering luxury delivery}{Люкс-кейтеринг доставка};
$html =~ s{Personal training poolside}{Персональні тренування біля басейну};
$html =~ s{Massage / spa at home}{Масаж / spa вдома};
$html =~ s{Private yacht charter}{Приватний чартер яхт};
$html =~ s{Helicopter transfer}{Трансфер на гелікоптері};
$html =~ s{Have special requests\?}{Особливі побажання?};
$html =~ s{We coordinate any [^<]*}{Координуємо будь-яке замовлення для ваших гостей: від вечорів до приватних транспортів.};
$html =~ s{Talk to Us}{Зв'яжіться з нами}g;

# ===== PULIZIA VILLE / HOUSEKEEPING ONLY =====
$html =~ s{>HOUSEKEEPING ONLY<}{>ЛИШЕ HOUSEKEEPING<};
$html =~ s{Villa cleaning rates}{Тарифи на прибирання вілл};
$html =~ s{For owners who [^<]*}{Для власників, які бажають делегувати лише прибирання, не повне управління.};
$html =~ s{>SMALL VILLA<}{>МАЛА ВІЛЛА<};
$html =~ s{>MEDIUM VILLA<}{>СЕРЕДНЯ ВІЛЛА<};
$html =~ s{>LARGE VILLA<}{>ВЕЛИКА ВІЛЛА<};
$html =~ s{Up to 120 sqm[^<]*}{До 120 м² · 2-3 спальні · 1-2 ванні. Турновер з білизною, welcome kit, фотоконтроль.};
$html =~ s{120-220 sqm[^<]*}{120-220 м² · 4-5 спалень · 3 ванні · можлива зона басейну. Стандарт 5-зірок.};
$html =~ s{Over 220 sqm[^<]*}{Понад 220 м² · 6\+ спалень · парк/басейн · потреба в дискретності. Спеціальний персонал.};
$html =~ s{Example: turnover for[^<]*}{Приклад: турновер для пари в Sirmione};
$html =~ s{Example: villa for[^<]*}{Приклад: вілла на 8 гостей у Bellagio};
$html =~ s{Example: estate with[^<]*}{Приклад: маєток з 5 спальнями у Cernobbio};
$html =~ s{Prices include linen, [^<]*}{Ціни включають білизну, продукти, фотозвіт. ПДВ виключений. Знижки для регулярних бронювань.};
$html =~ s{Request Housekeeping Quote}{Запитати прайс housekeeping};

# ===== PREZZI =====
$html =~ s{>PROPERTY MANAGEMENT<}{>УПРАВЛІННЯ НЕРУХОМІСТЮ<};
$html =~ s{Choose your management level}{Виберіть рівень управління};
$html =~ s{Three plans for [^<]*}{Три тарифи для трьох рівнів делегування. Жодних прихованих витрат, жодних подовжень.};
$html =~ s{>POPULAR<}{>ПОПУЛЯРНЕ<};
$html =~ s{>RECOMMENDED<}{>РЕКОМЕНДОВАНО<};
$html =~ s{>BEST VALUE<}{>НАЙКРАЩА ЦІННІСТЬ<};
$html =~ s{>ENTRY<}{>СТАРТ<};
$html =~ s{>FLAGSHIP<}{>ФЛАГМАН<};
$html =~ s{>PREMIUM<}{>ПРЕМІУМ<};
$html =~ s{>SIGNATURE<}{>SIGNATURE<};
$html =~ s{>ELITE<}{>ELITE<};
$html =~ s{commission management}{комісія за управління};
$html =~ s{commission}{комісія}g;
$html =~ s{Standard post-stay setup}{Стандартна підготовка після перебування};
$html =~ s{Operational check-out [^<]*}{Операційний виїзд та перевірка стану нерухомості};
$html =~ s{Standard linen [^<]*}{Стандартні постільні комплекти (наявні в нерухомості)};
$html =~ s{Standard welcome kit}{Стандартний welcome kit};
$html =~ s{Quality control with [^<]*}{Контроль якості з фотозвітом};
$html =~ s{Italian language guest [^<]*}{Підтримка гостей італійською (Пн–Пт, 9-19)};
$html =~ s{Premium presentation [^<]*}{Преміум-презентація (свіжа білизна, цвітіння, парфум)};
$html =~ s{Multilingual concierge [^<]*}{Багатомовний консьєрж (IT/EN/DE/FR) 7 днів};
$html =~ s{Personalized luxury [^<]*}{Персоналізований люкс welcome kit};
$html =~ s{Coordination of extra [^<]*}{Координація додаткових послуг (квіти, бронювання, частковий шопінг)};
$html =~ s{Customized turndown [^<]*}{Персоналізована turndown процедура};
$html =~ s{In-house quality [^<]*}{Контроль якості на місці кожні 30 днів};
$html =~ s{Everything in [^<]*}{Все з PREMIUM, плюс:};
$html =~ s{Bespoke welcome [^<]*}{Welcome kit на замовлення з преміум брендами};
$html =~ s{Dedicated white-glove [^<]*}{Dedicated white-glove консьєрж 24/7};
$html =~ s{Couture lin [^<]*}{Couture-білизна та преміум-косметика на запит};
$html =~ s{In-villa private [^<]*}{Приватний персонал у віллі (опційно: chef, butler, security)};
$html =~ s{Yacht, helicopter [^<]*}{Координація yacht, helicopter, преміум-трансфер};
$html =~ s{NDA / discretion [^<]*}{NDA / повна дискретність на ім'я};
$html =~ s{Average estimated revenue:[^<]*}{Середній очікуваний дохід:};
$html =~ s{Choose SIGNATURE}{Вибрати SIGNATURE};
$html =~ s{Choose PREMIUM}{Вибрати PREMIUM};
$html =~ s{Reserve ELITE}{Резервувати ELITE};

# ===== BENEFICI =====
$html =~ s{>BENEFITS<}{>ВИГОДИ<};
$html =~ s{Why owners choose us}{Чому власники обирають нас};
$html =~ s{The numbers and details [^<]*}{Цифри та деталі, які роблять різницю.};
$html =~ s{Revenue \+30%}{Дохід \+30%};
$html =~ s{average in 6 months}{в середньому за 6 місяців};
$html =~ s{5-Star Reviews}{5-зіркові відгуки};
$html =~ s{average rating}{середній рейтинг};
$html =~ s{Zero Worries}{Жодних турбот};
$html =~ s{we manage everything}{керуємо всім};
$html =~ s{Real-time Reports}{Звіти в режимі реального часу};
$html =~ s{transparent dashboard}{прозорий дашборд};
$html =~ s{Discretion 100%}{Дискретність 100%};
$html =~ s{NDA \+ vetted staff}{NDA + перевірений персонал};

# ===== AREE SERVITE =====
$html =~ s{>SERVICE AREAS<}{>ЗОНИ ОБСЛУГОВУВАННЯ<};
$html =~ s{Where we operate}{Де ми працюємо};
$html =~ s{Three premium destinations[^<]*}{Три преміум-напрямки. Сертифікований локальний персонал.};
$html =~ s{Lake Garda}{Озеро Гарда}g;
$html =~ s{Sirmione, Salò, Desenzano[^<]*}{Sirmione, Salò, Desenzano, Bardolino, Gardone Riviera. 25 хвилин від Brescia, 1 година від Milano.};
$html =~ s{Lake Como}{Озеро Комо}g;
$html =~ s{Bellagio, Cernobbio, Menaggio[^<]*}{Bellagio, Cernobbio, Menaggio, Tremezzo. Класична люкс-нерухомість, міжнародні гості.};
$html =~ s{Brera, Quadrilatero[^<]*}{Brera, Quadrilatero della Moda, Porta Nuova, City Life. Бізнес-гості, мода, дизайн.};

# ===== RECENSIONI =====
$html =~ s{>TESTIMONIALS<}{>ВІДГУКИ<};
$html =~ s{Trust is built result by result}{Довіра будується результат за результатом};
$html =~ s{What owners who chose us say}{Що говорять власники, які обрали нас};

# ===== FAQ =====
$html =~ s{>FREQUENTLY ASKED QUESTIONS<}{>ЧАСТІ ПИТАННЯ<};
$html =~ s{Quick answers for owners and hosts}{Швидкі відповіді для власників та хостів};

# ===== COME FUNZIONA =====
$html =~ s{>HOW IT WORKS<}{>ЯК ЦЕ ПРАЦЮЄ<};
$html =~ s{Three simple steps}{Три прості кроки};
$html =~ s{From first contact[^<]*}{Від першого контакту до повного управління за 7 днів.};
$html =~ s{First contact}{Перший контакт};
$html =~ s{We understand your needs[^<]*}{Ми розуміємо ваші потреби, оглядаємо нерухомість, представляємо тариф.};
$html =~ s{Operational onboarding}{Операційний онбординг};
$html =~ s{Property setup, [^<]*}{Налаштування нерухомості, активація персоналу, інтеграція платформи.};
$html =~ s{Active management}{Активне управління};
$html =~ s{We handle everything[^<]*}{Ми керуємо всім. Ви отримуєте звіти. Ви заробляєте.};

# ===== FILTRO CLIENTI =====
$html =~ s{>NOT FOR EVERYONE<}{>НЕ ДЛЯ ВСІХ<};
$html =~ s{We are selective}{Ми вибірковості};
$html =~ s{We work only [^<]*}{Ми працюємо лише з власниками, які поділяють наші стандарти.};
$html =~ s{>WE ACCEPT<}{>МИ ПРИЙМАЄМО<};
$html =~ s{>WE DECLINE<}{>МИ ВІДХИЛЯЄМО<};
$html =~ s{Premium villas[^<]*}{Преміум-вілли від 100 м²};
$html =~ s{Owners who value quality [^<]*}{Власники, які цінують якість понад ціну};
$html =~ s{Properties on Lake Garda[^<]*}{Нерухомість на Озерах Гарда, Комо чи Мілані};
$html =~ s{Multi-year vision[^<]*}{Багаторічна візія співпраці};
$html =~ s{Mass-market vacation rentals}{Mass-market оренда};
$html =~ s{Cost-cutting strategies}{Стратегії скорочення витрат};
$html =~ s{Properties without [^<]*}{Нерухомість без преміум-стандартів};
$html =~ s{Short-term [^<]*one-shot[^<]*}{Короткострокові one-shot домовленості};
$html =~ s{Our reputation is [^<]*}{Наша репутація будується на кожній нерухомості, якою ми керуємо. Тому ми вибірковості.};

# ===== FINAL CTA =====
$html =~ s{>START TODAY<}{>ПОЧНІТЬ СЬОГОДНІ<};
$html =~ s{Your property deserves the best\.}{Ваша нерухомість заслуговує найкращого.};
$html =~ s{Start now\.}{Почніть зараз.};
$html =~ s{A confidential conversation[^<]*}{Конфіденційна розмова. Індивідуальна пропозиція протягом 24 годин.};
$html =~ s{Message us on WhatsApp}{Написати в WhatsApp}g;
$html =~ s{or send us an email}{або напишіть нам на email};
$html =~ s{By clicking WhatsApp[^<]*}{Натиснувши WhatsApp, ви розпочинаєте розмову через сторонній сервіс (WhatsApp/Meta).};
$html =~ s{For data handling details see}{Детальніше про обробку даних:};

# ===== FORM =====
$html =~ s{>Full name \*<}{>Ім'я та прізвище *<};
$html =~ s{>Email \*<}{>Email *<};
$html =~ s{>Phone<}{>Телефон<};
$html =~ s{>Location<}{>Локація<};
$html =~ s{>Service<}{>Послуга<};
$html =~ s{>Property type<}{>Тип нерухомості<};
$html =~ s{>Message \*<}{>Повідомлення *<};
$html =~ s{Tell us about your property[^<]*}{Розкажіть про вашу нерухомість та що ви шукаєте.};
$html =~ s{>Select<}{>Виберіть<}g;
$html =~ s{>Lake Garda<}{>Озеро Гарда<}g;
$html =~ s{>Lake Como<}{>Озеро Комо<}g;
$html =~ s{>Milan<}{>Мілан<};
$html =~ s{>Other<}{>Інше<}g;
$html =~ s{>Full management \(Short-term rentals\)<}{>Повне управління (Короткострокова оренда)<};
$html =~ s{>Housekeeping only<}{>Лише housekeeping<};
$html =~ s{>Concierge / Welcome kit<}{>Консьєрж / Welcome kit<};
$html =~ s{e\.g\. 4-bedroom villa · 220 sqm}{напр. вілла 4 спальні · 220 м²};
$html =~ s{I have read the}{Я прочитав(ла)};
$html =~ s{and consent to data processing\. \*}{і даю згоду на обробку даних. *};
$html =~ s{>Send Request<}{>Надіслати запит<};
$html =~ s{action="/en/thank-you\.html"}{action="/uk/dyakuyu.html"};
$html =~ s{name="contact-en"}{name="contact-uk"};
$html =~ s{value="contact-en"}{value="contact-uk"};
$html =~ s{Don't fill}{Не заповнюйте};

# ===== FOOTER =====
$html =~ s{Privacy Policy}{Політика конфіденційності};
$html =~ s{Cookie Policy}{Cookie-політика};
$html =~ s{Data Processing Notice}{Обробка даних}g;
$html =~ s{Terms &amp; Conditions}{Умови};
$html =~ s{Order Terms}{Умови замовлення};
$html =~ s{Returns &amp; Cancellations}{Повернення та скасування};
$html =~ s{Garment &amp; Linen Care}{Догляд за тканинами};
$html =~ s{Shipping &amp; Delivery}{Доставка};

# Update legal links to /uk/legal/
$html =~ s{href="legal/}{href="legal/}g;  # already correct

# Hreflang in head — add UK
# (already present in EN file, just ensure it's there)

# Privacy note
$html =~ s{Reply within 24 hours \(Mon–Sat\) at the email[^.]*\.}{Відповідь протягом 24 годин (Пн–Сб) на вказану електронну адресу.};

open my $out, '>', $file or die;
print $out $html;
close $out;
print "Translated full: $file\n";
