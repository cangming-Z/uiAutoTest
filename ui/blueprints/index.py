from flask import Blueprint, render_template, request

index_bp = Blueprint('index', __name__)


@index_bp.route('/')
def index():
    cook = request.cookies
    # cook.pop('user', '')
    print(cook)
    return render_template('index.html')
