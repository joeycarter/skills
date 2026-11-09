#!/bin/sh
# Install skills from this repository into an agent's skills directory.
set -eu

repo_dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
src_dir="$repo_dir/skills"
target="${AGENT_SKILLS_DIR:-$HOME/.agents/skills}"
link=0

usage() {
	cat <<'EOF'
Usage: ./install.sh [options] [skill ...]

Install one or more skills into an agent's skills directory.
With no skill names, every skill in this repository is installed.

Options:
  -t, --target DIR  Install into DIR (default: ~/.agents/skills)
  -l, --link        Symlink each skill instead of copying it, so that
                    `git pull` updates the installed copy
      --list        List the skills available in this repository
  -h, --help        Show this message

The target can also be set with the AGENT_SKILLS_DIR environment variable.

Common targets:
  ~/.agents/skills   Zed (all projects)
  .agents/skills     Zed (one project)
  ~/.claude/skills   Claude Code (all projects)
  .claude/skills     Claude Code (one project)

Examples:
  ./install.sh                                  # all skills, into Zed
  ./install.sh --link canadian-english-style    # one skill, kept in sync
  ./install.sh --target ~/.claude/skills        # all skills, into Claude Code
EOF
}

list_skills() {
	for dir in "$src_dir"/*/; do
		[ -f "$dir/SKILL.md" ] || continue
		basename "$dir"
	done
}

install_skill() {
	name=$1
	if [ ! -f "$src_dir/$name/SKILL.md" ]; then
		echo "install.sh: no skill named '$name' in $src_dir" >&2
		return 1
	fi
	mkdir -p "$target"
	rm -rf "$target/$name"
	if [ "$link" -eq 1 ]; then
		ln -s "$src_dir/$name" "$target/$name"
		echo "linked    $name -> $target/$name"
	else
		cp -R "$src_dir/$name" "$target/$name"
		echo "installed $name -> $target/$name"
	fi
}

while [ $# -gt 0 ]; do
	case $1 in
	-t | --target)
		[ $# -ge 2 ] || { echo "install.sh: --target needs a directory" >&2; exit 2; }
		target=$2
		shift 2
		;;
	-l | --link)
		link=1
		shift
		;;
	--list)
		list_skills
		exit 0
		;;
	-h | --help)
		usage
		exit 0
		;;
	--)
		shift
		break
		;;
	-*)
		echo "install.sh: unknown option '$1'" >&2
		usage >&2
		exit 2
		;;
	*)
		break
		;;
	esac
done

if [ $# -eq 0 ]; then
	# Skill names are lowercase and hyphenated, so word splitting is safe here.
	# shellcheck disable=SC2046
	set -- $(list_skills)
fi

if [ $# -eq 0 ]; then
	echo "install.sh: no skills found in $src_dir" >&2
	exit 1
fi

status=0
for name in "$@"; do
	install_skill "$name" || status=1
done
exit $status
