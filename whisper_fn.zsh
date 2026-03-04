# Whisper function for .zshrc
# Add this to your ~/.zshrc or source this file

# Quick function - just pass the video file, everything else uses defaults
# Default: --model large --language Chinese --output_format srt
whisper() {
    local video_file="$1"
    
    if [ -z "$video_file" ]; then
        echo "Usage: whisper <video_file> [extra options]"
        echo "Defaults: --model large --language Chinese --output_format srt"
        return 1
    fi
    
    if [ ! -f "$video_file" ]; then
        echo "Error: File '$video_file' not found"
        return 1
    fi
    
    # Run with micromamba
    micromamba run -n dev whisper "$video_file" \
        --model large \
        --language Chinese \
        --output_format srt \
        "${@:2}"
}

# Alias for quick access
alias w='whisper'
