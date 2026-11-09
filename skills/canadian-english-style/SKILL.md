---
name: canadian-english-style
description: Write or edit documentation, READMEs, release notes, UI copy and comments in Canadian English, following the Government of Canada Writing Tips Plus / The Canadian Style / Canada.ca conventions (-our and -re spellings, -ize endings, ISO dates, SI units, plain language, inclusive terminology). Use when the user asks for Canadian English, Canadian spelling, CanCon style, or documentation aimed at a Canadian audience.
---

# Canadian English Documentation Style

Apply this when writing or revising prose for a Canadian audience: documentation,
READMEs, release notes, changelogs, help text, UI strings, commit message bodies
and long-form code comments.

Authority: the Government of Canada Language Portal, **Writing Tips Plus**
(<https://our-languages.canada.ca/en/writing-tips-plus/index-eng>), which
consolidates *The Canadian Style* and the Translation Bureau's writing tools.
For web and product content, pair it with the **Canada.ca Content Style Guide**.
The portal is behind a bot challenge, so automated fetches usually fail — rely on
the rules below and the reference files, and ask the user to paste a passage if a
specific ruling is in question.

## Non-negotiable rule: never restyle code

Canadian spelling applies to **prose only**. Leave untouched:

- identifiers, APIs, CSS properties and config keys (`color`, `backgroundColor`,
  `--theme-color`, `normalize()`, `license` field in `package.json`);
- file names, paths, CLI flags, environment variables, SQL columns;
- quoted output, log lines, error strings emitted by code;
- product, company and trademark names (`Microsoft Defender`, `Center for
  Internet Security`, `Honor`), and titles of cited works;
- direct quotations from other sources.

When prose must discuss an American-spelled identifier, keep the identifier
verbatim and let the surrounding sentence be Canadian: "Set the `color` property
to match the brand colour." Never create a mismatch between documentation and the
code it documents.

## Spelling core

Canadian English is a hybrid: British-leaning word endings, American-leaning
`-ize` and a handful of American forms.

| Pattern | Use | Not |
|---|---|---|
| `-our` | colour, behaviour, favour, labour, neighbour, rumour, honour | color, behavior |
| `-re` | centre, metre, litre, fibre, theatre, calibre | center, meter (except devices: *parking meter*, *voltmeter*) |
| `-ize` / `-yze` | organize, standardize, recognize, analyze, paralyze | organise, analyse |
| `-ce` noun / `-se` verb | a licence / to license; a practice / to practise; defence, offence | a license (noun), to practice (verb) |
| doubled `l` before suffixes | travelled, cancelling, modelling, labelled, counsellor, marvellous | traveled, modeling |

Keep American forms for: program, tire, curb, aluminum, jail, specialty, maneuver
(or *manoeuvre* — pick one), and `-ize` throughout.
Keep British forms for: cheque (banking), grey, catalogue, dialogue, storey (of a
building), enrol/enrolment, fulfil/fulfilment, instalment, skilful.

Full word list, confusables and derivative exceptions: `reference/spelling.md`.
Consult it before guessing — several derivatives drop the `u` (*humour* →
*humorous*, *honour* → *honorary*, *colour* → *coloration*).

## Mechanics quick rules

- **Dates in running text:** `March 7, 2026`. **All-numeric dates: ISO 8601 only
  —** `2026-03-07`. Never `07/03/2026`; Canada mixes British and American
  ordering, so slashed dates are genuinely ambiguous. Use ISO in tables, logs,
  file names, changelogs and version headings.
- **Times:** 24-hour clock for technical and scheduling content (`13:30`,
  `00:15`); 12-hour with lowercase `a.m.`/`p.m.` in general prose. Spell out
  *noon* and *midnight*. Name the time zone for anything operational: `14:00 ET`.
- **Numbers:** spell out one through nine, use figures for 10 and up in general
  prose; use figures throughout in technical and statistical content. Never start
  a sentence with a figure.
- **Groupings:** decimal point, not comma. Use a space, not a comma, between
  groups of three digits in technical writing (`10 000`, `1 250 000`); no
  separator in four-digit numbers (`2500`) or in years, page numbers and postal
  codes.
- **Units:** SI first, metric symbols unpluralized, with a space between figure
  and symbol and no trailing period: `25 kg`, `512 MB`, `20 °C`, `100 km/h`.
- **Per cent:** two words in prose (`15 per cent`); `%` with figures in tables and
  technical content.
- **Serial comma:** omit before the final *and*/*or* unless needed for clarity —
  "logs, metrics and traces". This is the federal convention; if the repository
  already uses the Oxford comma, match the repository and say so.
- **Quotation marks:** double outside, single inside. Place a period or comma
  inside the quotation marks only when it belongs to the quoted matter — this
  logical placement matters when quoting commands, paths or literal strings.

Full treatment of punctuation, capitalization, abbreviations, addresses, phone
numbers and bilingual conventions: `reference/mechanics.md`.

## Plain language (Canada.ca)

The federal standard is plain, direct writing aimed at roughly a Grade 8 reading
level. Apply it to documentation:

1. Address the reader as **you**; use **we** for the team or product owner.
2. Use the active voice and the present tense. "The service rejects the request",
   not "the request will be rejected by the service".
3. Lead with the point, then the detail. Put the most important information in the
   first sentence of the section.
4. Prefer short, common words: *use* over *utilize*, *about* over *approximately*,
   *help* over *facilitate*, *start* over *commence*, *enough* over *sufficient*.
5. One idea per sentence; aim for 20 words or fewer. Break procedures into
   numbered steps and start each step with a verb.
6. Expand an acronym on first use, then use the short form consistently:
   "multi-factor authentication (MFA)". Don't expand it again later.
7. Use **sentence case** for headings, buttons, table headers and list labels.
   Capitalize only the first word and proper nouns.
8. Write descriptive link text. Never "click here" or a bare URL in prose.

## Inclusive and respectful terminology

- Use gender-neutral terms: *chairperson*, *firefighter*, *workforce*,
  *spokesperson*, *humanity*. Singular *they* is correct and preferred over
  "he or she".
- Capitalize **Indigenous**, **Indigenous Peoples**, **First Nations**, **Inuit**,
  **Métis** (with the accent). Prefer *Indigenous* to *Aboriginal* in current
  usage; use a specific nation's name when known. *Inuit* is already plural.
- Use *persons with disabilities* in federal-facing content; respect
  identity-first language where a community prefers it.
- Avoid loaded technical metaphors: prefer *allowlist*/*blocklist*,
  *primary*/*replica*, *main* branch.

## Working method

1. Determine scope. If the user named specific files, edit those. If they asked
   for a general pass, grep the prose targets (`*.md`, `*.mdx`, `*.rst`, `*.txt`,
   doc comments) rather than the whole tree.
2. Check for an existing house style — `AGENTS.md`, `CONTRIBUTING.md`,
   `.vale.ini`, a `styles/` directory, cspell or textlint config. An explicit
   project rule beats this skill; flag any conflict instead of silently
   overriding it.
3. Check the repository's current spelling convention before converting a mixed
   codebase, and tell the user the scale of the change before making it wholesale.
4. Edit surgically. Change spelling, mechanics and clarity; do not rewrite
   technical content, restructure documents or "improve" meaning unless asked.
5. Verify with the checklist, then report: what you changed, which conventions you
   applied and any judgment calls (serial comma, `fulfil` vs `fulfill`, product
   names left as-is).

## Review checklist

- [ ] `-our`, `-re`, `-ce`/`-se`, doubled-`l` and `-ize`/`-yze` forms are correct
      and consistent, including derivatives
- [ ] No code identifier, path, flag, product name or quotation was respelled
- [ ] All-numeric dates are ISO 8601; prose dates are `Month D, YYYY`
- [ ] Figures, units and percentages follow SI and the spacing rules
- [ ] Headings and UI labels are sentence case
- [ ] Acronyms expanded once, on first use
- [ ] Active voice, second person, present tense, short sentences
- [ ] Terminology is inclusive; Indigenous terms capitalized correctly
- [ ] Serial comma and quotation-mark placement consistent across the document
