def test_package_importable():
    import health_ml

    assert health_ml.__doc__ is not None
