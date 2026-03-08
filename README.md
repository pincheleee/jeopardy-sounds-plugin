# Jeopardy Sounds Plugin for Claude Code

WILL GET BORING QUICLY

Plays Final Jeopardy thinking music while Claude is working and a correct-answer ding when it finishes.

## How it works

- **While Claude thinks** -- 10s of Final Jeopardy thinking music loops
- **When Claude finishes** -- Music stops, plays the correct-answer ding

## Requirements

- macOS (uses `afplay`)
- Claude Code

## Install

Add to `~/.claude/settings.json`:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "bash '/path/to/casino-pling-plugin/sounds/loop_jeopardy.sh'"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "bash '/path/to/casino-pling-plugin/sounds/stop_jeopardy.sh'"
          }
        ]
      }
    ]
  }
}
```

Replace `/path/to/casino-pling-plugin` with your actual clone path.

## Volume

Set to 30% (`-v 0.3`). Edit `loop_jeopardy.sh` and `stop_jeopardy.sh` to adjust.
