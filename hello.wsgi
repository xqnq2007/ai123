#hello.wsgi
def application(environ, start_response):
    status = "200 OK"
    response_headers = [('Content-type', 'text/plain')]
    output = "hello world!"
    start_response(status, response_headers)
    return [output]
