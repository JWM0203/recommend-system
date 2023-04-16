
from rest_framework import serializers

from music.models import Movie

#序列化组件 自定义特定结构把对象序列化返回给前端
class MovieSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Movie
        fields = ['image_link', 'name']
