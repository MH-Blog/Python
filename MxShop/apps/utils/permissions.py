# @File  : permissions.py
# @Author: Magic Huang
# @GitHub: github.com/MH-Blog
# @Date  : 2019/12/30


from rest_framework import permissions


class IsOwnerOrReadOnly(permissions.BasePermission):
    """
    Object-level permission to only allow owners of an object to edit it.
    Assumes the model instance has an `owner` attribute.
    """

    def has_object_permission(self, request, view, obj):
        # Read permissions are allowed to any request,
        # so we'll always allow GET, HEAD or OPTIONS requests.
        if request.method in permissions.SAFE_METHODS:
            return True

        # Instance must have an attribute named `owner`.
        # obj相当于数据库中的model，这里要把owner改为我们数据库中的user
        return obj.user == request.user
