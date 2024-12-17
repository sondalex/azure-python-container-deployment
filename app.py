from flask import Flask
from example_python_package import hello_world


app = Flask(__name__)


@app.route("/")
def root_view() -> str:
    return f"<p>{hello_world()}</p>"



if __name__ == "__main__":
    app.run()
