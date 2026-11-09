# Canadian mechanics reference

Punctuation, numbers, capitalization and formatting conventions from Writing Tips
Plus, *The Canadian Style* and the Canada.ca Content Style Guide. Where federal
style and Canadian Press style differ, both are noted — choose one per project
and record the choice.

## Dates

| Context | Form |
|---|---|
| Running prose | `March 7, 2026` — comma after the day, and after the year mid-sentence: "On March 7, 2026, the service shipped." |
| Day and month only | `March 7` (no ordinal: not *March 7th*) |
| Month and year | `March 2026` (no comma) |
| All-numeric | `2026-03-07` — ISO 8601, zero-padded, hyphens |
| Ranges | `2026-03-07 to 2026-03-14`; in prose, `from 2024 to 2026` (don't mix *from* with an en dash) |
| Decades | `the 1990s` (no apostrophe) |
| Centuries | `the 21st century` |

Never use slashed or dotted all-numeric dates. Canada uses British (DD/MM) and
American (MM/DD) ordering side by side, so `03/07/2026` is unreadable. ISO 8601
is the federal requirement and also sorts correctly in file names, log output and
changelog headings.

Don't abbreviate month names in prose. In tight tables use the three-letter form
with no period: `Jan`, `Feb`, `Mar`, `Apr`, `May`, `Jun`, `Jul`, `Aug`, `Sep`,
`Oct`, `Nov`, `Dec`.

## Times

- 24-hour clock for technical, operational and scheduling content: `08:30`,
  `13:00`, `00:05`. Colon separator, zero-padded.
- 12-hour clock in general prose, with lowercase `a.m.` / `p.m.` and a space:
  `8:30 a.m.`, `1 p.m.` (omit `:00`).
- Spell out *noon* and *midnight*; never `12 p.m.`
- Always name the time zone for anything a reader might act on: `14:00 ET`,
  `09:00 PT`, `18:00 UTC`. Canada spans six zones.
- Durations in prose: `2 h 15 min`; in technical content, SI symbols with spaces:
  `500 ms`, `30 s`, `24 h`.

## Numbers

- Spell out one through nine; use figures for 10 and above. Use figures
  throughout in technical, statistical, tabular and reference content.
- Never begin a sentence with a figure — recast, or spell the number out.
- Keep a series consistent: "8, 14 and 23 nodes", not "eight, 14 and 23".
- Approximations and round quantities spell out: *about a hundred users*.
- Ordinals: *first* through *ninth* in words, `10th` and up in figures.
- Fractions in prose are hyphenated and spelled out: *two-thirds of requests*.
- Ratios: `3:1`. Ranges: en dash with no spaces (`10–20 ms`) or *to* in prose.

### Decimal and digit grouping

- The decimal marker in English is the **period**: `3.14`. (French Canadian uses
  the comma: `3,14`.)
- Put a zero before a decimal less than one: `0.5 s`, not `.5 s`.
- Technical/SI style: separate groups of three digits with a **space**, not a
  comma — `10 000`, `1 250 000`, `0.000 001`. Use a non-breaking space where the
  format allows.
- No separator in four-digit numbers (`2500`), years (`2026`), page numbers,
  addresses, postal codes or serial numbers.
- Canadian Press style uses commas (`10,000`). Acceptable in non-technical prose;
  do not mix the two systems in one document.

### Percentages, money, phone numbers

- `15 per cent` in prose; `15%` with figures in tables, charts and technical
  content. No space before `%`. Percentage point: *rose 3 percentage points*.
- Currency: `$25`, `$1.5 million`, `$0.75`. Distinguish currencies when it
  matters: `CAN$100` / `C$100`, `US$100`, `€100`. Write *dollars* out when no
  figure follows.
- Phone numbers use hyphens: `613-555-0123`, `1-800-555-0123`,
  `613-555-0123 ext. 4567`. International: `+1-613-555-0123`.

## Measurement and SI units

- Metric first. Give an imperial equivalent in parentheses only if the audience
  needs it: `20 cm (8 in.)`.
- Space between the figure and the symbol: `25 kg`, `512 MB`, `100 km/h`,
  `20 °C`, `50 %` (federal SI) — but `50%` is the common documentation form; be
  consistent.
- Degree symbol: `20 °C` with a space before the degree sign under SI; `20°C` is
  widely used in technical writing. Pick one.
- Unit symbols are never pluralized and take no period: `5 km`, not *5 kms* or
  *5 km.* Exception: `in.` for inches, to avoid confusion with the word *in*.
- Capitalize symbols named after people: `W`, `Hz`, `N`, `Pa`, `A`, `K`. Keep
  lowercase otherwise: `m`, `g`, `s`, `kg`.
- Use `°C`, not Fahrenheit, as the default.

## Punctuation

- **Serial comma:** federal style omits it before the final *and*/*or* in a
  simple series — "logs, metrics and traces" — and adds it only to prevent
  misreading. Follow the repository's existing practice if it differs, and say so
  in your summary.
- **Spacing:** one space after a period. No space before `:` `;` `!` `?` in
  English (French spacing differs — don't carry it over from bilingual sources).
- **Em dash (—):** sets off a break in thought, closed up against the words:
  `the build—which is cached—completes quickly`. Limit to one pair per sentence.
- **En dash (–):** number, date and page ranges, and compound modifiers joining
  equal elements: `Ottawa–Toronto corridor`.
- **Hyphen (-):** word compounds only.
- **Ellipsis (…):** three points for omitted material. Use a bracketed ellipsis
  `[...]` in quoted technical output to show elision.
- **Colon:** introduces lists and explanations. Capitalize after a colon only when
  a complete sentence or a proper noun follows.
- **Semicolon:** joins independent clauses and separates list items that already
  contain commas.
- **Parentheses:** the period goes outside unless the whole sentence is
  parenthetical.
- **Apostrophe:** possessive of a singular noun ending in `s` takes `'s`
  (*the class's method*); plural possessive takes the bare apostrophe (*the
  users' sessions*). Plural acronyms take no apostrophe: `APIs`, `CPUs`, `URLs`.

## Quotations

- Double quotation marks outside, single inside: `"The flag is 'strict' by
  default."`
- Place a period or comma inside the quotation marks only when it is part of the
  quoted matter (the logical system in *The Canadian Style*). This matters in
  technical writing: `Enter "yes".` — the period is not part of the input.
  (Canadian Press and American style put them inside unconditionally; don't mix.)
- Colons and semicolons always go outside. Question and exclamation marks go
  inside only when they belong to the quotation.
- Block-quote anything over roughly 50 words.
- Titles of books, reports, standards and periodicals take italics; chapters,
  articles and sections take quotation marks.
- In Markdown, prefer backticks to quotation marks for literal input, paths,
  commands and values.

## Capitalization

- **Sentence case** for headings, subheadings, table headers, buttons, menu
  labels, list labels and figure captions. Capitalize the first word and proper
  nouns only.
- Capitalize official full names: *Government of Canada*, *Treasury Board of
  Canada Secretariat*, *Office of the Privacy Commissioner of Canada*,
  *Parliament*, *the Crown*, *the Charter*.
- Lowercase generic or partial references: *the federal government*, *the
  department*, *the minister*, *provincial legislation*, *the secretariat*.
- Civil and military titles are capitalized immediately before a name
  (*Prime Minister Carney*) and lowercase otherwise (*the prime minister said*).
- Capitalize **Indigenous**, **Indigenous Peoples**, **First Nations**, **Inuit**,
  **Métis**, **Treaty**, and specific nation names.
- Capitalize *Internet* per older federal guidance; *internet* lowercase is now
  standard in technical writing — use lowercase in developer documentation.
- Don't capitalize for emphasis, and don't capitalize generic feature names
  (*the dashboard*, *the settings page*) unless they are literal UI labels.

## Abbreviations and acronyms

- Expand on first use, then use the short form only: "role-based access control
  (RBAC)". Don't re-expand, and don't define terms you use once — just use the
  words.
- No periods in acronyms and initialisms: `NATO`, `CBC`, `RCMP`, `CRTC`, `API`,
  `TLS`. Keep periods in lowercase Latin abbreviations: `e.g.`, `i.e.`, `etc.`,
  `a.m.`, `p.m.`
- Prefer English equivalents in plain-language prose: *for example* over `e.g.`,
  *that is* over `i.e.`, *and so on* over `etc.`
- Use `a` or `an` according to the pronunciation of the short form: *an API*,
  *a URL*, *an RBAC policy*, *a UI*.

### Provinces and territories

Two-letter symbols are for addresses, tables and forms only; spell the name out
in prose.

`AB` `BC` `MB` `NB` `NL` `NS` `NT` `NU` `ON` `PE` `QC` `SK` `YT`

Addresses: `Ottawa ON  K1A 0A9` — no comma before the symbol, two spaces before
the postal code, postal code as `A1A 1A1` with a single space, no hyphen.

## Lists

- Introduce a list with a lead-in sentence ending in a colon.
- Keep items grammatically parallel — all noun phrases, or all verb phrases.
- Fragments: lowercase first letter and no terminal punctuation, or capitalize
  consistently; either convention is fine if applied uniformly. Full sentences
  take capitals and periods.
- Use numbers only for sequence or when you need to cite an item by number;
  otherwise use bullets.
- Start each procedural step with an imperative verb and keep one action per
  step.

## Bilingual and French-origin material

- Preserve accents in French proper nouns, including on capitals: *Québec* (the
  French name), *Montréal*, *Trois-Rivières*, *Métis*, *Rivière-du-Loup*. In
  English federal usage the province is *Quebec* and the city is *Montreal*.
- Keep accents in borrowed words that retain them: *café*, *résumé*, *naïve*,
  *façade*, *à la carte*.
- Official bilingual names are not translated: *Service Canada*, *Via Rail*,
  *Canada Post / Postes Canada* (use the English form in English text).
- Don't carry French typography into English text: no space before `:` `;` `!`
  `?`, no guillemets `« »`, period not comma as the decimal marker.
- If the content will be translated, avoid idioms, puns and noun strings; they
  survive translation poorly.

## Web and UI copy (Canada.ca)

- Front-load the key message; readers scan.
- Descriptive, unique link text that makes sense out of context. Never "click
  here", "read more" or a bare URL in prose.
- Error messages: say what happened, why and what to do next, in plain words and
  without blaming the user. "We couldn't save your changes. Check your connection
  and try again."
- Buttons and labels: sentence case, imperative verb, no terminal punctuation —
  `Save changes`, `Download report`.
- Alt text describes the function or content of an image; decorative images get
  empty alt text.
- Write meaningful headings every few paragraphs so the document is navigable by
  screen reader and by eye.
