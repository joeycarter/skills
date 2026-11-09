<p align="center">
  <img src="assets/logo.svg" alt="Joey's AI Skills" width="180">
</p>

<h1 align="center">Joey's AI Skills</h1>

<p align="center">
  A small collection of reusable skills for AI coding agents to make your workflows slightly less sloppy.<br>
  <a href="#available-skills">Skills</a> ·
  <a href="#installation">Installation</a> ·
  <a href="#writing-a-new-skill">Contributing</a> ·
  <a href="#licence">Licence</a>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/licence-MIT-blue.svg" alt="MIT licence"></a>
  <img src="https://img.shields.io/badge/skills-1-ff6b6b" alt="1 skill">
</p>

---

## What is a skill?

A skill is a folder containing a `SKILL.md` file: YAML frontmatter that tells the
agent **when** to use the skill, followed by Markdown instructions that tell it
**what** to do. The agent loads the instructions only when they're relevant, so a
long reference document costs nothing until the moment it's needed.

```
canadian-english-style/
├── SKILL.md            # frontmatter + instructions (always read first)
└── reference/          # detail the agent loads only when it needs it
    ├── mechanics.md
    └── spelling.md
```

```yaml
---
name: canadian-english-style
description: Write or edit documentation ... Use when the user asks for Canadian English.
---
```

The format follows the Agent Skills convention shared by Zed, Claude Code and
other agents, so one folder works across tools.

## Available skills

| Skill | What it does |
| --- | --- |
| [`canadian-english-style`](skills/canadian-english-style/SKILL.md) | Writes and edits prose in Canadian English, following *Writing Tips Plus*, *The Canadian Style* and the Canada.ca content guide: `-our`/`-re` spellings, `-ize` endings, ISO 8601 dates, SI units, plain language and inclusive terminology. Never restyles code, identifiers or product names. Ships with full spelling and mechanics references. |

## Installation

Clone the repository first:

```sh
git clone https://github.com/joeycarter/skills.git joeys-ai-skills
cd joeys-ai-skills
```

### The quick way

`install.sh` copies (or symlinks) skills into whichever directory your agent
reads:

```sh
./install.sh                                    # every skill → ~/.agents/skills (Zed)
./install.sh canadian-english-style             # just one skill
./install.sh --link canadian-english-style      # symlink, so `git pull` updates it
./install.sh --target ~/.claude/skills          # every skill → Claude Code
./install.sh --list                             # see what's available
```

Run `./install.sh --help` for all options. Installing a skill that is already
present replaces it.

### By hand, per platform

Every skill is a self-contained folder, so installing one is always "copy the
folder into the right place".

#### Zed

| Scope | Path |
| --- | --- |
| All projects | `~/.agents/skills/<skill-name>/` |
| One project | `<project>/.agents/skills/<skill-name>/` |

```sh
mkdir -p ~/.agents/skills
cp -R skills/canadian-english-style ~/.agents/skills/
```

Zed's agent picks up global skills on the next conversation; no restart needed.
Project skills are committed with the repository, so collaborators get them too.

#### Claude Code

| Scope | Path |
| --- | --- |
| All projects | `~/.claude/skills/<skill-name>/` |
| One project | `<project>/.claude/skills/<skill-name>/` |

```sh
mkdir -p ~/.claude/skills
cp -R skills/canadian-english-style ~/.claude/skills/
```

Claude Code watches these directories, so a skill you copy in mid-session
becomes available without a restart. Invoke one directly with `/skill-name`, or
let Claude pick it up from the description. See the
[Claude Code skills documentation](https://docs.claude.com/en/docs/claude-code/skills)
for the full behaviour.

#### Claude apps (claude.ai, Claude Desktop)

Upload the skill folder as a `.zip` from the skills section of your settings:

```sh
cd skills && zip -r canadian-english-style.zip canadian-english-style
```

Uploads accept only the six frontmatter fields in the Agent Skills spec
(`name`, `description`, `license`, `compatibility`, `metadata`,
`allowed-tools`). The skills here stick to `name` and `description`, so they
upload as-is.

#### Any other agent

If your agent supports `SKILL.md` folders, point it at a clone of this
repository or copy the folders into its skills directory. If it doesn't, the
instructions are still plain Markdown: paste the body of a `SKILL.md` into the
agent's rules file (`AGENTS.md`, `CLAUDE.md`, `.cursor/rules/`, and so on). You
lose on-demand loading, but the guidance works the same way.

### Staying up to date

```sh
git pull
./install.sh            # re-copy, or skip this if you installed with --link
```

## Writing a new skill

1. Create `skills/<skill-name>/SKILL.md`. The folder name must be lowercase
   alphanumeric with single hyphens, and must match the frontmatter `name`.
2. Write a `description` that names both the task and the trigger. This single
   line is what the agent uses to decide whether to load the skill, so
   "Generate React components following the project's design system" beats
   "Helps with code".
3. Keep `SKILL.md` short — under about 500 lines. Move long reference material
   into sibling files and link to them, so the agent reads them only on demand.
4. Write for the agent, in the imperative: "Check X", "Ask the user about Y".
5. Add a row to the table in [Available skills](#available-skills).
6. Install it locally and try it on a real task before committing.

## Licence

[MIT](LICENSE) © Joey Carter. Use them, fork them, make them yours.
