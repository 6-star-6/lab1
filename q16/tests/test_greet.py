from greetlab.greet import greet


def test_normal_name():
    """正常姓名测试"""
    result = greet("Alice")
    assert result == "Hello, Alice!"


def test_blank_name():
    """空白姓名测试"""
    result = greet("")
    assert result == "Hello!"
