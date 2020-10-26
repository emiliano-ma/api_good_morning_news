Article.destroy_all
User.destroy_all
journalist = User.create(email: "journalist@mail.com", role: "journalist", password: "password")
User.create(email: "registered@mail.com", role: "registered", password: "password")
User.create(email: "subscriber@mail.com", role: "subscriber", password: "password")
User.create(email: "user@mail.com", role: "registered", password: "password")
User.create(email: "user1@mail.com", role: "registered", password: "password")
User.create(email: "user2@mail.com", role: "registered", password: "password")
entertainment_premium_article_1 = Article.create(
  title: "entertainment shock",
  teaser: "entertainment shock has taken the world",
  content: "Curabitur aliquet quam id dui posuere blandit." * 10,
  category: "entertainment",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://en.as.com/en/imagenes/2020/07/18/football/1595074795_129436_noticia_normal.jpg")
entertainment_premium_article_1.image.attach(io: file, filename: "shock.jpg")
entertainment_premium_article_2 = Article.create(
  title: "Traditional asian food",
  teaser: "The impact of asian food on western world",
  content: "Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem" * 10,
  category: "entertainment",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://www.vvsupremo.com/wp-content/uploads/2015/11/900X570_Asian-Vegetarian-Quesadillas.jpg")
entertainment_premium_article_2.image.attach(io: file, filename: "food.jpg")
entertainment_free_article_1 = Article.create(
  title: "Home styling",
  teaser: "The methods of furnishing modern homes",
  content: "Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi, pretium ut lacinia in." * 10,
  category: "entertainment",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://cdn.onekindesign.com/wp-content/uploads/2017/06/Modern-Living-Rooms-Forest-Views-21-1-Kindesign.jpg")
entertainment_free_article_1.image.attach(io: file, filename: "styling.jpg")
entertainment_free_article_2 = Article.create(
  title: "Skiing is great",
  teaser: "The most popular sport in Scandinavia",
  content: "Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta." * 10,
  category: "entertainment",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.chalmers.se/en/centres/sportstechnology/PublishingImages/Cross_Country_Skiing.jpg")
entertainment_free_article_2.image.attach(io: file, filename: "skiing.jpg")
entertainment_free_unpublished_article_1 = Article.create(
  title: "entertainment kings",
  teaser: "We design your property",
  content: "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a." * 10,
  category: "entertainment",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.ft.com/__origami/service/image/v2/images/raw/http://prod-upp-image-read.ft.com/e44d2dba-3ba0-11ea-b84f-a62c46f39bc2?source=next&fit=scale-down&quality=highest&width=1067")
entertainment_free_unpublished_article_1.image.attach(io: file, filename: "king.jpg")
news_premium_article_1 = Article.create(
  title: "Global warming",
  teaser: "Rainforests are shrinking",
  content: "Cras ultricies ligula sed magna dictum porta." * 10,
  category: "news",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://www.conserve-energy-future.com/wp-content/uploads/2014/03/Tropical_Rainforest.jpg")
news_premium_article_1.image.attach(io: file, filename: "rainforests.jpg")
news_premium_article_2 = Article.create(
  title: "news universities",
  teaser: "Remote studies are on the increase",
  content: "Nulla porttitor accumsan tincidunt." * 10,
  category: "news",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://ww2.kqed.org/app/uploads/sites/43/2020/03/Distance-learning-800x450.jpg")
news_premium_article_2.image.attach(io: file, filename: "university.jpg")
news_free_article_1 = Article.create(
  title: "Flag change",
  teaser: "Sri Lanka wants to change its flag",
  content: "Proin eget tortor risus. Nulla porttitor accumsan tincidunt." * 10,
  category: "news",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.rnz.co.nz/assets/news/46539/eight_col_compo.jpg?1441060535")
news_free_article_1.image.attach(io: file, filename: "flag.jpg")
news_free_article_2 = Article.create(
  title: "Drinking water",
  teaser: "Water is drying up",
  content: "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere." * 10,
  category: "news",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.eliteworldhotels.com.tr/blog-en/ImageHandler.ashx?path=~/Resources/CKEditor/Blog/FtDescription/2017-05-03@17-26-36-857_vucudunudaki-toksinlerin-kolayca-atilmasini-saglar.jpg")
news_free_article_2.image.attach(io: file, filename: "water.jpg")
news_free_unpublished_article_1 = Article.create(
  title: "The pandemic",
  teaser: "The impact of Corona virus on countries",
  content: "Nulla quis lorem ut libero malesuada feugiat." * 10,
  category: "news",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.festo.com/group/en/repo/assets/319718852-corona-1532x900-adobestock.jpg")
news_free_unpublished_article_1.image.attach(io: file, filename: "covid.jpg")
business_premium_article_1 = Article.create(
  title: "Budget result",
  teaser: "Power to the people",
  content: "Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus." * 10,
  category: "business",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://rikedomsskolan.se/wp-content/uploads/2020/01/savings-2789112_1920-1200x565.jpg")
business_premium_article_1.image.attach(io: file, filename: "budget.jpg")
business_premium_article_2 = Article.create(
  title: "Yearly forecast",
  teaser: "Company results are out",
  content: "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a." * 10,
  category: "business",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://lh3.googleusercontent.com/J-BI3NO_jabPCSaEGsSHbuQpK5VF619EWGGO7PhB30OboQ_gd2OW2HK7OUpgK0OI8BxUGpo19ZYhB4dpOh8CbzMonZx95srqeXhdbgl77IfMKqfJ2gndMA-Ec8efpWIaDkteSnwp")
business_premium_article_2.image.attach(io: file, filename: "forecast.jpg")
business_free_article_1 = Article.create(
  title: "Global business",
  teaser: "Corona is hammering everyone",
  content: "Pellentesque in ipsum id orci porta dapibus." * 10,
  category: "business",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://www.ft.com/__origami/service/image/v2/images/raw/http://prod-upp-image-read.ft.com/e44d2dba-3ba0-11ea-b84f-a62c46f39bc2?source=next&fit=scale-down&quality=highest&width=1067")
business_free_article_1.image.attach(io: file, filename: "world.jpg")
business_free_article_2 = Article.create(
  title: "Table company declining",
  teaser: "Eating of the floor",
  content: "Cras ultricies ligula sed magna dictum porta." * 10,
  category: "business",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://st.hzcdn.com/simgs/07a16a790f6f6b48_4-9673/home-design.jpg")
business_free_article_2.image.attach(io: file, filename: "table.jpg")
business_free_unpublished_article_1 = Article.create(
  title: "Recession stay away",
  teaser: "The numbers are not looking good",
  content: "Vivamus suscipit tortor eget felis porttitor volutpat." * 10,
  category: "business",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS_ku-GmmauVqsDX5pks9N81_16pH-qZ3O2Ug&usqp=CAU")
business_free_unpublished_article_1.image.attach(io: file, filename: "recessionn.jpg")
weather_premium_article_1 = Article.create(
  title: "U cant imagine what this monkey did in the grocery store",
  teaser: "Omg u need to read this lol",
  content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit." * 10,
  category: "weather",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://i.ytimg.com/vi/M3zRXaGEQEA/hqdefault.jpg")
weather_premium_article_1.image.attach(io: file, filename: "monkey.jpg")
weather_premium_article_2 = Article.create(
  title: "Imperfections",
  teaser: "New concept to hit the market",
  content: "Donec rutrum congue leo eget malesuada. Quisque velit nisi, " * 10,
  category: "weather",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://i.ytimg.com/vi/M3zRXaGEQEA/hqdefault.jpg")
weather_premium_article_2.image.attach(io: file, filename: "imperfections.jpg")
weather_free_article_1 = Article.create(
  title: "Gyms Gyms Gyms",
  teaser: "Break a sweat",
  content: "Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus." * 10,
  category: "weather",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://blogs.studyinsweden.se/wp-content/uploads/2014/12/EmptyName-10.jpg")
weather_free_article_1.image.attach(io: file, filename: "gym.jpg")
weather_free_article_2 = Article.create(
  title: "Wash new clothes",
  teaser: "Avoid the bed bugs",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit." * 10,
  category: "weather",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://blog.vancity.com/wp-content/uploads/2019/08/ClothingRack-iStock-Blog-1000x484.jpg")
weather_free_article_2.image.attach(io: file, filename: "clothes.jpg")
weather_free_unpublished_article_1 = Article.create(
  title: "Avoid stress",
  teaser: "Live a happy life",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem." * 10,
  category: "weather",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://media.dods.co.uk/sites/media.dods.co.uk/files/image/3003%20stress.jpg")
weather_free_unpublished_article_1.image.attach(io: file, filename: "stress.jpg")
sports_premium_article_1 = Article.create(
  title: "Arsenal win",
  teaser: "They did it again!",
  content: "Pellentesque in ipsum id orci porta dapibus." * 10,
  category: "sports",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2020/08/01205322/Pierre-Emerick-Aubameyang-Arsenal-1.jpg")
sports_premium_article_1.image.attach(io: file, filename: "football.jpg")
sports_premium_article_2 = Article.create(
  title: "Gambling",
  teaser: "The way to make money recently",
  content: "Donec rutrum congue leo eget malesuada. " * 10,
  category: "sports",
  premium: true,
  journalist_id: journalist.id,
)
file = URI.open("https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2020/08/01205322/Pierre-Emerick-Aubameyang-Arsenal-1.jpg")
sports_premium_article_2.image.attach(io: file, filename: "gambling.jpg")
sports_free_article_1 = Article.create(
  title: "Horse racing",
  teaser: "One of the most expensive sports in the world",
  content: "Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit." * 10,
  category: "sports",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://tyda.se/img/58fb8ee631f75e9fd1392d28bd4ca46d.jpg")
sports_free_article_1.image.attach(io: file, filename: "horse.jpg")
sports_free_article_2 = Article.create(
  title: "Bowling",
  teaser: "Is that a real sport?",
  content: "Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi" * 10,
  category: "sports",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://en.as.com/en/imagenes/2020/07/18/football/1595074795_129436_noticia_normal.jpg")
sports_free_article_2.image.attach(io: file, filename: "bowling.jpg")
sports_free_unpublished_article_1 = Article.create(
  title: "Bad and unpublished",
  teaser: "This article is poorly written",
  content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit." * 10,
  category: "sports",
  premium: false,
  journalist_id: journalist.id,
)
file = URI.open("https://reputationresolutions.com/wp-content/uploads/2018/02/Screen-Shot-2019-05-01-at-6.06.55-PM.png")
sports_free_unpublished_article_1.image.attach(io: file, filename: "bad.jpg")
