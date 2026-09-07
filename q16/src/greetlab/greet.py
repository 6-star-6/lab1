def greet(name: str) -> str:
    if name.strip() == "":
        return "Hello!"
    return f"Hello, {name}!"
