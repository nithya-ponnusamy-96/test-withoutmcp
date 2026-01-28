import pytest
from playwright.sync_api import Page

def add(a, b):
    return a + b


def test_add_function():
    """Test the add function with basic inputs"""
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
    assert add(0, 0) == 0


def test_playwright_example(page: Page):
    """Example Playwright test that navigates to a page"""
    page.goto("https://example.com")
    assert page.title() == "Example Domain"
    page.wait_for_timeout(1000)