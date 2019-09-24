from bottle import template, static_file, route, run

@route('/')
def index():
    return template('index')
    
@route('/static/<filename>')
def server_static(filename):
	return static_file(filename, root='./public');
	
@route('/button/<but>', method='POST')
def button(but):
	print('> button :',but)

run(host='localhost', port=8080, debug=True)	