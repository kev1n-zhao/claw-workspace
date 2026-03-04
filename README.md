# Whisper Runner

Simple wrapper to run OpenAI Whisper with micromamba.

## Setup

Add to your `~/.zshrc`:

```bash
source /Users/kevin/Documents/code/whisper-runner/whisper_fn.zsh
```

Then restart your terminal or run: `source ~/.zshrc`

## Usage

```bash
# Default: large model, Chinese, srt output
whisper ./openclaw-multi-agent-setup.mp4

# Or use the alias
w ./video.mp4

# With extra options
whisper ./video.mp4 --model medium --language English
```

## Files

- `whisper-runner` - Full script with options parsing
- `whisper_fn.zsh` - Simple function to source in .zshrc
