# CO7102 Assignment2 README
[Github repository](https://github.com/LansiLiu/mycovidtesthub)

- ##### strong parameter is applied to prevent SQL injection.

- ##### Visit '/login' to login. Remember me feature available via encrypted cookies.

- ##### Visit "/dashboard" or root page "/" to accesss statistic data. Requesting this page without login will be refused and redierected to "/login". At dashboard page an administrative user can add new (unused) TTN code.

-  ##### Visit "/report" to submit a new test result. When the TTN you entered is used or not valid, error messages are printed. Test result can be submitted without login.