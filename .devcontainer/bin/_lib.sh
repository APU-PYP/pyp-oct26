# Shared helpers for the student commands. Sourced by create and check.

LAB_DIR="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")/.." && pwd -P)"   # .devcontainer
REPO_ROOT="$(cd "$LAB_DIR/.." && pwd -P)"

# Print the project folder (a folder holding both src/ and tests/) that contains
# the current directory. Returns 1 when the current directory is not in a project.
find_project() {
  local dir
  dir="$(pwd -P)"
  while :; do
    if [ -d "$dir/src" ] && [ -d "$dir/tests" ]; then
      echo "$dir"
      return 0
    fi
    if [ "$dir" = "$REPO_ROOT" ] || [ "$dir" = "/" ]; then
      return 1
    fi
    dir="$(dirname "$dir")"
  done
}

# Map what the student typed after `check` to a test file inside the project.
# Accepts: greeting, greeting.py, test_greeting.py, src/greeting.py, tests/test_greeting.py
# Prints the path relative to the project folder.
resolve_test_file() {
  local arg="$1" project="$2" abs base
  if [ -f "$arg" ]; then
    abs="$(readlink -f "$arg")"
    case "$abs" in
      "$project"/tests/*.py)
        echo "${abs#"$project"/}"
        return 0
        ;;
    esac
  fi
  base="$(basename "$arg")"
  base="${base%.py}"
  for candidate in "tests/$base.py" "tests/test_$base.py"; do
    if [ -f "$project/$candidate" ]; then
      echo "$candidate"
      return 0
    fi
  done
  return 1
}
