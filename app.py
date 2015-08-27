from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

@app.route('/layout')
def about():
    return render_template('layout.html')

#@app.route('/about')
#def about():
#  return render_template('about.html')

if __name__ == '__main__':
    app.debug = True
    app.logger.debug('Starting up Application')
    app.run()