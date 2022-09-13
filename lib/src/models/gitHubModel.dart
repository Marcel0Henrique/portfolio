// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GitHubModel {
  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  String type;
  bool siteAdmin;
  String name;
  String company;
  String blog;
  String location;
  String? email;
  bool? hireable;
  String bio;
  String? twitterUsername;
  int publicRepos;
  int publicGists;
  int followers;
  int following;
  String createdAt;
  String updatedAt;
  GitHubModel({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
    required this.name,
    required this.company,
    required this.blog,
    required this.location,
    this.email,
    this.hireable,
    required this.bio,
    this.twitterUsername,
    required this.publicRepos,
    required this.publicGists,
    required this.followers,
    required this.following,
    required this.createdAt,
    required this.updatedAt,
  });

  GitHubModel copyWith({
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
    String? email,
    bool? hireable,
    String? bio,
    String? twitterUsername,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    String? createdAt,
    String? updatedAt,
  }) {
    return GitHubModel(
      login: login ?? this.login,
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      gravatarId: gravatarId ?? this.gravatarId,
      url: url ?? this.url,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      followersUrl: followersUrl ?? this.followersUrl,
      followingUrl: followingUrl ?? this.followingUrl,
      gistsUrl: gistsUrl ?? this.gistsUrl,
      starredUrl: starredUrl ?? this.starredUrl,
      subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
      organizationsUrl: organizationsUrl ?? this.organizationsUrl,
      reposUrl: reposUrl ?? this.reposUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
      type: type ?? this.type,
      siteAdmin: siteAdmin ?? this.siteAdmin,
      name: name ?? this.name,
      company: company ?? this.company,
      blog: blog ?? this.blog,
      location: location ?? this.location,
      email: email ?? this.email,
      hireable: hireable ?? this.hireable,
      bio: bio ?? this.bio,
      twitterUsername: twitterUsername ?? this.twitterUsername,
      publicRepos: publicRepos ?? this.publicRepos,
      publicGists: publicGists ?? this.publicGists,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'id': id,
      'nodeId': nodeId,
      'avatarUrl': avatarUrl,
      'gravatarId': gravatarId,
      'url': url,
      'htmlUrl': htmlUrl,
      'followersUrl': followersUrl,
      'followingUrl': followingUrl,
      'gistsUrl': gistsUrl,
      'starredUrl': starredUrl,
      'subscriptionsUrl': subscriptionsUrl,
      'organizationsUrl': organizationsUrl,
      'reposUrl': reposUrl,
      'eventsUrl': eventsUrl,
      'receivedEventsUrl': receivedEventsUrl,
      'type': type,
      'siteAdmin': siteAdmin,
      'name': name,
      'company': company,
      'blog': blog,
      'location': location,
      'email': email,
      'hireable': hireable,
      'bio': bio,
      'twitterUsername': twitterUsername,
      'publicRepos': publicRepos,
      'publicGists': publicGists,
      'followers': followers,
      'following': following,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory GitHubModel.fromMap(Map<String, dynamic> map) {
    return GitHubModel(
      login: map['login'] as String,
      id: map['id'] as int,
      nodeId: map['nodeId'] as String,
      avatarUrl: map['avatarUrl'] as String,
      gravatarId: map['gravatarId'] as String,
      url: map['url'] as String,
      htmlUrl: map['htmlUrl'] as String,
      followersUrl: map['followersUrl'] as String,
      followingUrl: map['followingUrl'] as String,
      gistsUrl: map['gistsUrl'] as String,
      starredUrl: map['starredUrl'] as String,
      subscriptionsUrl: map['subscriptionsUrl'] as String,
      organizationsUrl: map['organizationsUrl'] as String,
      reposUrl: map['reposUrl'] as String,
      eventsUrl: map['eventsUrl'] as String,
      receivedEventsUrl: map['receivedEventsUrl'] as String,
      type: map['type'] as String,
      siteAdmin: map['siteAdmin'] as bool,
      name: map['name'] as String,
      company: map['company'] as String,
      blog: map['blog'] as String,
      location: map['location'] as String,
      email: map['email'] != null ? map['email'] as String : null,
      hireable: map['hireable'] != null ? map['hireable'] as bool : null,
      bio: map['bio'] as String,
      twitterUsername: map['twitterUsername'] != null
          ? map['twitterUsername'] as String
          : null,
      publicRepos: map['publicRepos'] as int,
      publicGists: map['publicGists'] as int,
      followers: map['followers'] as int,
      following: map['following'] as int,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GitHubModel.fromJson(String source) =>
      GitHubModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GitHubModel(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin, name: $name, company: $company, blog: $blog, location: $location, email: $email, hireable: $hireable, bio: $bio, twitterUsername: $twitterUsername, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant GitHubModel other) {
    if (identical(this, other)) return true;

    return other.login == login &&
        other.id == id &&
        other.nodeId == nodeId &&
        other.avatarUrl == avatarUrl &&
        other.gravatarId == gravatarId &&
        other.url == url &&
        other.htmlUrl == htmlUrl &&
        other.followersUrl == followersUrl &&
        other.followingUrl == followingUrl &&
        other.gistsUrl == gistsUrl &&
        other.starredUrl == starredUrl &&
        other.subscriptionsUrl == subscriptionsUrl &&
        other.organizationsUrl == organizationsUrl &&
        other.reposUrl == reposUrl &&
        other.eventsUrl == eventsUrl &&
        other.receivedEventsUrl == receivedEventsUrl &&
        other.type == type &&
        other.siteAdmin == siteAdmin &&
        other.name == name &&
        other.company == company &&
        other.blog == blog &&
        other.location == location &&
        other.email == email &&
        other.hireable == hireable &&
        other.bio == bio &&
        other.twitterUsername == twitterUsername &&
        other.publicRepos == publicRepos &&
        other.publicGists == publicGists &&
        other.followers == followers &&
        other.following == following &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return login.hashCode ^
        id.hashCode ^
        nodeId.hashCode ^
        avatarUrl.hashCode ^
        gravatarId.hashCode ^
        url.hashCode ^
        htmlUrl.hashCode ^
        followersUrl.hashCode ^
        followingUrl.hashCode ^
        gistsUrl.hashCode ^
        starredUrl.hashCode ^
        subscriptionsUrl.hashCode ^
        organizationsUrl.hashCode ^
        reposUrl.hashCode ^
        eventsUrl.hashCode ^
        receivedEventsUrl.hashCode ^
        type.hashCode ^
        siteAdmin.hashCode ^
        name.hashCode ^
        company.hashCode ^
        blog.hashCode ^
        location.hashCode ^
        email.hashCode ^
        hireable.hashCode ^
        bio.hashCode ^
        twitterUsername.hashCode ^
        publicRepos.hashCode ^
        publicGists.hashCode ^
        followers.hashCode ^
        following.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
