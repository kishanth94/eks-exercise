# sample application
from flask import Flask

app = Flask(__name__)
@app.route('/')
def basic_route():
  return 'Welcome Imaya to the sample flask application!';

if __name__ == '__main__':
  app.run()
