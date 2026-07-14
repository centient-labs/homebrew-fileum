# homebrew-fileum

Official Homebrew tap for fileum — the entity-centric file organization CLI (`Formula/fileum.rb`).

## Critical Rules

1. Never commit secrets
2. Test the formula locally before pushing (`brew install --build-from-source ./Formula/fileum.rb`)
3. Update the SHA256 checksum when bumping versions

## Session & Knowledge Management

This project participates in the centient knowledge management system. When `mcp__centient__*` tools are available, **always initialize a session at the start of every conversation** and use knowledge tools throughout:

1. **Always start a session** — Call `start_session_coordination` with `sessionId` (format: `YYYY-MM-DD-topic`) and `projectPath` before doing any work
2. **Search first** — Call `search_crystals` with your task topic to find prior work and decisions
3. **Check duplicates** — Call `check_duplicate_work` before implementing non-trivial changes
4. **Save knowledge** — Call `save_session_note` for important decisions, findings, and blockers
5. **End** — Call `finalize_session_coordination` to persist session artifacts

See `.agent/procedures/session-management.md` for tool parameters and additional tools.
