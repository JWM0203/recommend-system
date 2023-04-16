
from django.db import migrations, models
import django.db.models.deletion
#先创建模型再迁移工作流 数据库中会产生相应的表
#定义好了模型，数据库中的表并不会出现，还需要把模型转化为对数据库的操作
class Migration(migrations.Migration):

    initial = True#初次迁移。

    dependencies = [
    ]#因为是初次迁移，没有依赖项，所以这里为空。
#operations：迁移的具体操作就在这里了。CreateModel 表示创建新表，name 即表名，fields 则是表中的字段。verbose_name：后台显示对应的名称
    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=255, verbose_name='内容')),
                ('create_time', models.DateTimeField(auto_now_add=True)),
            ],
            #verbose_name为model提供了一个更容易让人阅读的名称，而verbose_name_pluralze则是这个名称的复数形式。
            options={
                'verbose_name': '评论',
                'verbose_name_plural': '评论',
            },
        ),
        migrations.CreateModel(
            name='Movie',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, unique=True, verbose_name='歌曲名称')),
                ('director', models.CharField(max_length=255, verbose_name='歌手')),
                ('country', models.CharField(max_length=255, verbose_name='国家/地点')),
                ('years', models.DateField(verbose_name='发型时间')),
                ('leader', models.CharField(max_length=1024, verbose_name='专辑名称')),
                ('d_rate_nums', models.IntegerField(verbose_name='评价数')),
                ('d_rate', models.CharField(max_length=255, verbose_name='评分')),
                ('intro', models.TextField(verbose_name='描述')),
                ('num', models.IntegerField(default=0, verbose_name='浏览量')),
                ('origin_image_link', models.URLField(max_length=255, null=True, verbose_name='图片地址')),
                ('image_link', models.FileField(max_length=255, upload_to='music_cover', verbose_name='封面图片')),
                ('imdb_link', models.URLField(null=True)),
            ],
            options={
                'verbose_name': '音乐',
                'verbose_name_plural': '音乐',
            },
        ),
        migrations.CreateModel(
            name='Tags',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, unique=True, verbose_name='标签')),
            ],
            options={
                'verbose_name': '标签',
                'verbose_name_plural': '标签',
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=255, unique=True, verbose_name='账号')),
                ('password', models.CharField(max_length=255, verbose_name='密码')),
                ('email', models.EmailField(max_length=254, verbose_name='邮箱')),
                ('created_time', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': '用户',
                'verbose_name_plural': '用户',
            },
        ),
        migrations.CreateModel(
            name='UserTagPrefer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('score', models.FloatField(default=0)),
                ('tag', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='music.Tags', verbose_name='标签名')),
                ('user', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='music.User', verbose_name='用户id')),
            ],
            options={
                'verbose_name': '用户偏好',
                'verbose_name_plural': '偏好',
            },
        ),
        migrations.CreateModel(
            name='Rate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mark', models.FloatField(verbose_name='评分')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='发型时间')),
                ('movie', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='music.Movie', verbose_name='音乐id')),
                ('user', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='music.User', verbose_name='用户id')),
            ],
            options={
                'verbose_name': '评分信息',
                'verbose_name_plural': '评分信息',
            },
        ),
        migrations.AddField(
            model_name='movie',
            name='collect',
            field=models.ManyToManyField(blank=True, to='music.User', verbose_name='收藏者'),
        ),
        migrations.AddField(
            model_name='movie',
            name='tags',
            field=models.ManyToManyField(blank=True, to='music.Tags', verbose_name='标签'),
        ),
        migrations.CreateModel(
            name='LikeComment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='music.Comment', verbose_name='评论')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='music.User', verbose_name='用户')),
            ],
            options={
                'verbose_name': '评论点赞',
                'verbose_name_plural': '评论点赞',
            },
        ),
        migrations.AddField(
            model_name='comment',
            name='movie',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='music.Movie', verbose_name='音乐'),
        ),
        migrations.AddField(
            model_name='comment',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='music.User', verbose_name='用户'),
        ),
    ]
