from flask import Flask, send_file

app = Flask(__name__)


@app.route("/view")
def hier():
    return send_file('./static/view.html')


@app.route("/")
def main():
  return send_file('./static/index.html')


if __name__ == "__main__":
  app.run(host='0.0.0.0', debug=True, port=80)
