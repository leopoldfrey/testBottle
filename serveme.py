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

port = int(os.environ.get("PORT", 17995))
run(host='0.0.0.0', port=port)	