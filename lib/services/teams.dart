import "package:appwrite/service.dart";
import "package:appwrite/client.dart";
import 'package:dio/dio.dart';

class Teams extends Service {
     
     Teams(Client client): super(client);

     /// Get a list of all the current user teams. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project teams. [Learn more about different API modes](/docs/admin).
    Future<Response> list({search = null, limit = 25, offset = null, orderType = 'ASC'}) async {
       String path = '/teams';

       Map<String, dynamic> params = {
         'search': search,
         'limit': limit,
         'offset': offset,
         'orderType': orderType,
       };

       return await this.client.call('get', path: path, params: params);
    }
     /// Create a new team. The user who creates the team will automatically be
     /// assigned as the owner of the team. The team owner can invite new members,
     /// who will be able add new owners and update or delete the team from your
     /// project.
    Future<Response> create({name, roles = const ["owner"]}) async {
       String path = '/teams';

       Map<String, dynamic> params = {
         'name': name,
         'roles': roles,
       };

       return await this.client.call('post', path: path, params: params);
    }
     /// Get team by its unique ID. All team members have read access for this
     /// resource.
    Future<Response> get({teamId}) async {
       String path = '/teams/{teamId}'.replaceAll(RegExp('{teamId}'), teamId);

       Map<String, dynamic> params = {
       };

       return await this.client.call('get', path: path, params: params);
    }
     /// Update team by its unique ID. Only team owners have write access for this
     /// resource.
    Future<Response> update({teamId, name}) async {
       String path = '/teams/{teamId}'.replaceAll(RegExp('{teamId}'), teamId);

       Map<String, dynamic> params = {
         'name': name,
       };

       return await this.client.call('put', path: path, params: params);
    }
     /// Delete team by its unique ID. Only team owners have write access for this
     /// resource.
    Future<Response> delete({teamId}) async {
       String path = '/teams/{teamId}'.replaceAll(RegExp('{teamId}'), teamId);

       Map<String, dynamic> params = {
       };

       return await this.client.call('delete', path: path, params: params);
    }
     /// Get team members by the team unique ID. All team members have read access
     /// for this list of resources.
    Future<Response> getMemberships({teamId}) async {
       String path = '/teams/{teamId}/memberships'.replaceAll(RegExp('{teamId}'), teamId);

       Map<String, dynamic> params = {
       };

       return await this.client.call('get', path: path, params: params);
    }
     /// Use this endpoint to invite a new member to your team. An email with a link
     /// to join the team will be sent to the new member email address. If member
     /// doesn't exists in the project it will be automatically created.
     /// 
     /// Use the 'url' parameter to redirect the user from the invitation email back
     /// to your app. When the user is redirected, use the [Update Team Membership
     /// Status](/docs/teams#updateTeamMembershipStatus) endpoint to finally join
     /// the user to the team.
     /// 
     /// Please note that in order to avoid a [Redirect
     /// Attacks](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
     /// the only valid redirect URL's are the once from domains you have set when
     /// added your platforms in the console interface.
    Future<Response> createMembership({teamId, email, roles, url, name = null}) async {
       String path = '/teams/{teamId}/memberships'.replaceAll(RegExp('{teamId}'), teamId);

       Map<String, dynamic> params = {
         'email': email,
         'name': name,
         'roles': roles,
         'url': url,
       };

       return await this.client.call('post', path: path, params: params);
    }
     /// This endpoint allows a user to leave a team or for a team owner to delete
     /// the membership of any other team member. You can also use this endpoint to
     /// delete a user membership even if he didn't accept it.
    Future<Response> deleteMembership({teamId, inviteId}) async {
       String path = '/teams/{teamId}/memberships/{inviteId}'.replaceAll(RegExp('{teamId}'), teamId).replaceAll(RegExp('{inviteId}'), inviteId);

       Map<String, dynamic> params = {
       };

       return await this.client.call('delete', path: path, params: params);
    }
     /// Use this endpoint to let user accept an invitation to join a team after he
     /// is being redirect back to your app from the invitation email. Use the
     /// success and failure URL's to redirect users back to your application after
     /// the request completes.
     /// 
     /// Please note that in order to avoid a [Redirect
     /// Attacks](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
     /// the only valid redirect URL's are the once from domains you have set when
     /// added your platforms in the console interface.
     /// 
     /// When not using the success or failure redirect arguments this endpoint will
     /// result with a 200 status code on success and with 401 status error on
     /// failure. This behavior was applied to help the web clients deal with
     /// browsers who don't allow to set 3rd party HTTP cookies needed for saving
     /// the account session key.
    Future<Response> updateMembershipStatus({teamId, inviteId, userId, secret}) async {
       String path = '/teams/{teamId}/memberships/{inviteId}/status'.replaceAll(RegExp('{teamId}'), teamId).replaceAll(RegExp('{inviteId}'), inviteId);

       Map<String, dynamic> params = {
         'userId': userId,
         'secret': secret,
       };

       return await this.client.call('patch', path: path, params: params);
    }
}