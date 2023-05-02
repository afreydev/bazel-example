from libs.printer.printer import print_this_message

def test_print_message():
    message = "Hello Angel!"
    formatted_message = f"This is printing this: {message}"
    assert formatted_message == print_this_message(message)
