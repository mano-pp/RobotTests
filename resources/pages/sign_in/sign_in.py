from robot.libraries.BuiltIn import BuiltIn

class LoginPage():
    
    # define locators dictionary where key name will became WebElement using PageFactory
    locators = {
        "username_input"      : ('ID', 'username_field'),
        "password_input"      : ('ID', 'password_field'),
        "login_button"        : ('ID', 'login_button')
    }

    def __init__(self, driver):
        self.selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
        # self.driver = driver
    
    def login(self, username, password):
        """
        Logs in with the given username and password.

        Args:
            username (str): The username to login with.
            password (str): The password to login with.
        """
        pgcomp = self.selenium_lib
        pgcomp.input_text("id=username_field", username)
        pgcomp.input_password("id=password_field", password)
        pgcomp.click_button("id=login_button")


        # self.selenium_lib.input_text("id=username_field", username)
        # self.selenium_lib.input_password("id=password_field", password)
        # self.selenium_lib.click_button("id=login_button")
        # self.username_input.send_keys(username)
        # self.username_input.send_keys(password)
        # self.login_button.click()