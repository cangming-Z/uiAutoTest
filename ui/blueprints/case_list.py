from flask import Blueprint, render_template, request

case_list_bp = Blueprint('case_list', __name__)


@case_list_bp.route('/case_list')
def index():
    cook = request.cookies
    # cook.pop('user', '')
    print(cook)
    return render_template('lyear_pages_case.html')
