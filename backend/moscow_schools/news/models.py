from django.db import models

class News(models.Model):
    categories = (
        ('theatreArt', 'Театр'),
        ('musicArt', 'Музыка'),
        ('danceArt', 'Танцы'),
        ('visualArt', 'Изобразительное искусство')
    )

    newsId = models.AutoField(primary_key=True)
    category = models.CharField(max_length=35, choices=categories)
    publicationTime = models.DateTimeField(auto_now_add=True)
    title = models.CharField(max_length=200, blank=False)
    content = models.TextField(blank=False)

    def __str__(self):
        return self.title

    