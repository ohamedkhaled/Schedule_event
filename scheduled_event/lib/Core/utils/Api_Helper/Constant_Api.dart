class ConstentApi {

//constant value to get data from Api
  static const String  title="title";
  static const String  id="id";
  static const String  spots="spots";
  static const String  price="price";
  static const String  placeName="placeName";
  static const String  featuredImage="featuredImage";
  static const String  date="date";
  static const String  finishDate="finish_date";
  static const String  users="users";
  static const String  profilePicture="profile_picture";
  static const String icon ="icon";
  static const String tag="tag";
  static const String titleTag = "title";
  static const String paymentMethod= "paymentMethod";

// getUrl
String getEventUrl(int id ,int page)=>
    "http://test.meetntrain.com/v1/profile/events/upcoming/${id}/?page=${page}";

String getImage(String key)=>
    'https://ik.imagekit.io/tnc8pizf9e/${key}';

//constant header

  static const String authorization ="Authorization";
  static const contentType ="Content-Type" ;


//defult value
  static const String  defultProfilPic ="99fe4268-1636973319232" ;
  static const String unlimited ="Unlimited";
  static const String jusTCash ="Just Cash";


// token and id

 static const String token =
     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgzNTcsImlzQWRtaW4iOmZhbHNlLCJpYXQiOjE2NjQ5NzU4OTN9.1msUlsgpO4dRbj55VhJsX0eyNDcLjsCiRfj26Z54zGE' ;
static const int idUser = 8357 ;
}