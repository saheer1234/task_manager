class Urls {
  static const String _baseurl = 'http://35.73.30.144:2005/api/v1';
  static const String registrationUrl = '$_baseurl/Registration';
  static const String loginUrl = '$_baseurl/Login';
  static const String createTaskUrl = '$_baseurl/createTask';
  static const String taskCountByStatusUrl = '$_baseurl/taskStatusCount';
  static String taskListByStatusUrl(String status) => '$_baseurl/listTaskByStatus/$status';

}
