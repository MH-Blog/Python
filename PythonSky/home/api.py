from rest_framework.response import Response
from rest_framework.decorators import api_view

@api_view(['GET'])
def Hello(request):
    jsonData = {'success': 'ok', 'message': 'hello world', 'data': ''}
    return Response(jsonData)
