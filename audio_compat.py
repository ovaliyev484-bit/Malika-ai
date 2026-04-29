"""
Audio compatibility layer for PyAudio and SoundDevice
Supports both Python < 3.14 (PyAudio) and Python >= 3.14 (SoundDevice)
"""

import sys

# Try to import pyaudio first (Python < 3.14)
try:
    import pyaudio
    PYAUDIO_AVAILABLE = True
except ImportError:
    PYAUDIO_AVAILABLE = False

# If pyaudio not available, use sounddevice (Python >= 3.14)
if not PYAUDIO_AVAILABLE:
    import sounddevice as sd
    import numpy as np


class AudioWrapper:
    """Unified audio interface that works with both PyAudio and SoundDevice"""
    
    def __init__(self):
        self.pyaudio_instance = None
        self.use_pyaudio = PYAUDIO_AVAILABLE
        
        if self.use_pyaudio:
            self.pyaudio_instance = pyaudio.PyAudio()
    
    @property
    def paInt16(self):
        """Return the format constant for 16-bit integer"""
        if self.use_pyaudio:
            return self.pyaudio_instance.get_format_from_width(2)
        return np.int16
    
    def open(self, format=None, channels=1, rate=16000, input=False, output=False, frames_per_buffer=1024):
        """Open an audio stream (compatible with PyAudio API)"""
        if self.use_pyaudio:
            return self.pyaudio_instance.open(
                format=format,
                channels=channels,
                rate=rate,
                input=input,
                output=output,
                frames_per_buffer=frames_per_buffer
            )
        else:
            # Use sounddevice
            return SoundDeviceStream(channels=channels, rate=rate, input=input, output=output, blocksize=frames_per_buffer)
    
    def terminate(self):
        """Clean up audio resources"""
        if self.use_pyaudio and self.pyaudio_instance:
            self.pyaudio_instance.terminate()


class SoundDeviceStream:
    """Wrapper to make sounddevice behave like PyAudio stream"""
    
    def __init__(self, channels=1, rate=16000, input=False, output=False, blocksize=1024):
        self.channels = channels
        self.rate = rate
        self.input = input
        self.output = output
        self.blocksize = blocksize
        self.stream = None
        self.input_queue = []
        
    def read(self, num_frames, exception_on_overflow=False):
        """Read audio data from input stream"""
        if self.input:
            data = sd.rec(num_frames, samplerate=self.rate, channels=self.channels, dtype='int16')
            sd.wait()
            return data.tobytes()
        return b''
    
    def write(self, data):
        """Write audio data to output stream"""
        if self.output:
            audio_data = np.frombuffer(data, dtype=np.int16)
            sd.play(audio_data, samplerate=self.rate)
            sd.wait()
    
    def close(self):
        """Close the stream"""
        sd.stop()


# Create a global instance for backward compatibility
_audio_wrapper = AudioWrapper()

# Expose PyAudio-like interface
PyAudio = lambda: _audio_wrapper
paInt16 = _audio_wrapper.paInt16
