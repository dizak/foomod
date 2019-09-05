__version__ = 'v0.0.0'
__author__ = 'dizak'

__all__ = ['foomod']

try:
    from .foomod import get_google_response_code
except ImportError:
    print('Failed to import package. Ignore if running setup')
