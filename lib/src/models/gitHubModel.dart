// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GitHubModel {
  //*Construtor
  GitHubModel({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
    String? name,
    String? company,
    String? blog,
    String? location,
    dynamic email,
    dynamic hireable,
    String? bio,
    dynamic twitterUsername,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    dynamic createdAt,
    dynamic updatedAt,
  }) {
    _login = login;
    _id = id;
    _nodeId = nodeId;
    _avatarUrl = avatarUrl;
    _gravatarId = gravatarId;
    _url = url;
    _htmlUrl = htmlUrl;
    _followersUrl = followersUrl;
    _followingUrl = followingUrl;
    _gistsUrl = gistsUrl;
    _starredUrl = starredUrl;
    _subscriptionsUrl = subscriptionsUrl;
    _organizationsUrl = organizationsUrl;
    _reposUrl = reposUrl;
    _eventsUrl = eventsUrl;
    _receivedEventsUrl = receivedEventsUrl;
    _type = type;
    _siteAdmin = siteAdmin;
    _name = name;
    _company = company;
    _blog = blog;
    _location = location;
    _email = email;
    _hireable = hireable;
    _bio = bio;
    _twitterUsername = twitterUsername;
    _publicRepos = publicRepos;
    _publicGists = publicGists;
    _followers = followers;
    _following = following;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  //*Atributos
  String? _login;
  int? _id;
  String? _nodeId;
  String? _avatarUrl;
  String? _gravatarId;
  String? _url;
  String? _htmlUrl;
  String? _followersUrl;
  String? _followingUrl;
  String? _gistsUrl;
  String? _starredUrl;
  String? _subscriptionsUrl;
  String? _organizationsUrl;
  String? _reposUrl;
  String? _eventsUrl;
  String? _receivedEventsUrl;
  String? _type;
  bool? _siteAdmin;
  String? _name;
  String? _company;
  String? _blog;
  String? _location;
  dynamic _email;
  dynamic _hireable;
  String? _bio;
  dynamic _twitterUsername;
  int? _publicRepos;
  int? _publicGists;
  int? _followers;
  int? _following;
  dynamic _createdAt;
  dynamic _updatedAt;

  //*Getters
  String? get login => _login;

  get id => _id;

  get nodeId => _nodeId;

  get avatarUrl => _avatarUrl;

  get gravatarId => _gravatarId;

  get url => _url;

  get htmlUrl => _htmlUrl;

  get followersUrl => _followersUrl;

  get followingUrl => _followingUrl;

  get gistsUrl => _gistsUrl;

  get starredUrl => _starredUrl;

  get subscriptionsUrl => _subscriptionsUrl;

  get organizationsUrl => _organizationsUrl;

  get reposUrl => _reposUrl;

  get eventsUrl => _eventsUrl;

  get receivedEventsUrl => _receivedEventsUrl;

  get type => _type;

  get siteAdmin => _siteAdmin;

  get name => _name;

  get company => _company;

  get blog => _blog;

  get location => _location;

  get email => _email;

  get hireable => _hireable;

  get bio => _bio;

  get twitterUsername => _twitterUsername;

  get publicRepos => _publicRepos;

  get publicGists => _publicGists;

  get followers => _followers;

  get following => _following;

  get createdAt => _createdAt;

  get updatedAt => _updatedAt;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': _login,
      'id': _id,
      'nodeId': _nodeId,
      'avatarUrl': _avatarUrl,
      'gravatarId': _gravatarId,
      'url': _url,
      'htmlUrl': _htmlUrl,
      'followersUrl': _followersUrl,
      'followingUrl': _followingUrl,
      'gistsUrl': _gistsUrl,
      'starredUrl': _starredUrl,
      'subscriptionsUrl': _subscriptionsUrl,
      'organizationsUrl': _organizationsUrl,
      'reposUrl': _reposUrl,
      'eventsUrl': _eventsUrl,
      'receivedEventsUrl': _receivedEventsUrl,
      'type': _type,
      'siteAdmin': _siteAdmin,
      'name': _name,
      'company': _company,
      'blog': _blog,
      'location': _location,
      'email': _email,
      'hireable': _hireable,
      'bio': _bio,
      'twitterUsername': _twitterUsername,
      'publicRepos': _publicRepos,
      'publicGists': _publicGists,
      'followers': _followers,
      'following': _following,
      'createdAt': _createdAt,
      'updatedAt': _updatedAt,
    };
  }

  factory GitHubModel.fromMap(Map<String, dynamic> map) {
    return GitHubModel(
      login: map['login'] != null ? map['login'] as String : null,
      id: map['id'] != null ? map['id'] as int : null,
      nodeId: map['nodeId'] != null ? map['nodeId'] as String : null,
      avatarUrl: map['avatarUrl'] != null ? map['avatarUrl'] as String : null,
      gravatarId:
          map['gravatarId'] != null ? map['gravatarId'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      htmlUrl: map['htmlUrl'] != null ? map['htmlUrl'] as String : null,
      followersUrl:
          map['followersUrl'] != null ? map['followersUrl'] as String : null,
      followingUrl:
          map['followingUrl'] != null ? map['followingUrl'] as String : null,
      gistsUrl: map['gistsUrl'] != null ? map['gistsUrl'] as String : null,
      starredUrl:
          map['starredUrl'] != null ? map['starredUrl'] as String : null,
      subscriptionsUrl: map['subscriptionsUrl'] != null
          ? map['subscriptionsUrl'] as String
          : null,
      organizationsUrl: map['organizationsUrl'] != null
          ? map['organizationsUrl'] as String
          : null,
      reposUrl: map['reposUrl'] != null ? map['reposUrl'] as String : null,
      eventsUrl: map['eventsUrl'] != null ? map['eventsUrl'] as String : null,
      receivedEventsUrl: map['receivedEventsUrl'] != null
          ? map['receivedEventsUrl'] as String
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      siteAdmin: map['siteAdmin'] != null ? map['siteAdmin'] as bool : null,
      name: map['name'] != null ? map['name'] as String : null,
      company: map['company'] != null ? map['company'] as String : null,
      blog: map['blog'] != null ? map['blog'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      email: map['email'] as dynamic,
      hireable: map['hireable'] as dynamic,
      bio: map['bio'] != null ? map['bio'] as String : null,
      twitterUsername: map['twitterUsername'] as dynamic,
      publicRepos:
          map['publicRepos'] != null ? map['publicRepos'] as int : null,
      publicGists:
          map['publicGists'] != null ? map['publicGists'] as int : null,
      followers: map['followers'] != null ? map['followers'] as int : null,
      following: map['following'] != null ? map['following'] as int : null,
      createdAt: map['createdAt'] as dynamic,
      updatedAt: map['updatedAt'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory GitHubModel.fromJson(String source) =>
      GitHubModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GitHubModel(login: $_login, id: $_id, nodeId: $_nodeId, avatarUrl: $_avatarUrl, gravatarId: $_gravatarId, url: $_url, htmlUrl: $_htmlUrl, followersUrl: $_followersUrl, followingUrl: $_followingUrl, gistsUrl: $_gistsUrl, starredUrl: $_starredUrl, subscriptionsUrl: $_subscriptionsUrl, organizationsUrl: $_organizationsUrl, reposUrl: $_reposUrl, eventsUrl: $_eventsUrl, receivedEventsUrl: $_receivedEventsUrl, type: $_type, siteAdmin: $_siteAdmin, name: $_name, company: $_company, blog: $_blog, location: $_location, email: $_email, hireable: $_hireable, bio: $_bio, twitterUsername: $_twitterUsername, publicRepos: $_publicRepos, publicGists: $_publicGists, followers: $_followers, following: $_following, createdAt: $_createdAt, updatedAt: $_updatedAt)';
  }

  @override
  bool operator ==(covariant GitHubModel other) {
    if (identical(this, other)) return true;

    return other._login == _login &&
        other._id == _id &&
        other._nodeId == _nodeId &&
        other._avatarUrl == _avatarUrl &&
        other._gravatarId == _gravatarId &&
        other._url == _url &&
        other._htmlUrl == _htmlUrl &&
        other._followersUrl == _followersUrl &&
        other._followingUrl == _followingUrl &&
        other._gistsUrl == _gistsUrl &&
        other._starredUrl == _starredUrl &&
        other._subscriptionsUrl == _subscriptionsUrl &&
        other._organizationsUrl == _organizationsUrl &&
        other._reposUrl == _reposUrl &&
        other._eventsUrl == _eventsUrl &&
        other._receivedEventsUrl == _receivedEventsUrl &&
        other._type == _type &&
        other._siteAdmin == _siteAdmin &&
        other._name == _name &&
        other._company == _company &&
        other._blog == _blog &&
        other._location == _location &&
        other._email == _email &&
        other._hireable == _hireable &&
        other._bio == _bio &&
        other._twitterUsername == _twitterUsername &&
        other._publicRepos == _publicRepos &&
        other._publicGists == _publicGists &&
        other._followers == _followers &&
        other._following == _following &&
        other._createdAt == _createdAt &&
        other._updatedAt == _updatedAt;
  }
}
