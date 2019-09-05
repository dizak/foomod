import requests as rq


def get_google_response_code():
    res = rq.get('https://www.google.com')
    return res.status_code
