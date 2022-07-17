# flutter_project_template
📖 Here you can see the demo of the test task from company I've applied for.

- Task description
  Test task requires create a simple app that changes background color of screen.
  Additional feature, as it was asked in the test task is displayed list of names, covered in Container with some decoration. Also each container has         rounded container with radius of 50 degrees, and changes its color synchronously with background golor of the app. Both background and rounded container 
  has the same colors while, as BackgroundColorFromRGB class extens from ChangeNotifier. So while background changes color rounded contained also notified
  by setNewColorAndNotifyListeners method.
  
# Demo
  

# Data
|    **Name**    |   **Type**   |                            **Path**                            |                         **Description**                         |   |
|:--------------:|:------------:|:--------------------------------------------------------------:|:---------------------------------------------------------------:|---|
| userList       | List<String> | /flutter_test_task/lib/domain/models.dart                      | list of user                                                    |   |
| random         | Random       | /flutter_test_task/lib/provider/background_color_from_rgb.dart | randomiser for generating random value                          |   |
| getRandomValue | int          | /flutter_test_task/lib/provider/background_color_from_rgb.dart | contains random number, generated by generateRandomValue method |   |
| _color         | Color        | /flutter_test_task/lib/provider/background_color_from_rgb.dart | contains generated color from RGBA                              |   |
| color          | Color        | /flutter_test_task/lib/provider/background_color_from_rgb.dart | getter of _color                                                |   |


# Classes
  |        **Name**        |                            **Path**                            |                                                                  **Description**                                                                  |   |   |
|:----------------------:|:--------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------:|:-:|---|
| BackgroundColorFromRGB | /flutter_test_task/lib/provider/background_color_from_rgb.dart | This class is provider of randomly generated color and supplys ChangeNotifie to notify all listeners that should be notified after color changes. |   |   |
| User                   | /flutter_test_task/lib/domain/models/user.dart                 | The model of user that contains list of users or its methond (in future)                                                                          |   |   |

