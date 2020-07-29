#!/usr/bin/env -S PYTHONPATH=python python

import pyopenkarotz
from pyopenkarotz.api.default_api import DefaultApi  # noqa: E501
from pyopenkarotz.rest import ApiException

if __name__ == "__main__":
    configuration=pyopenkarotz.Configuration()
    configuration.host = "http://localhost:80"
    configuration.debug = True

    client = pyopenkarotz.ApiClient(configuration)

    api = pyopenkarotz.api.default_api.DefaultApi(client)

    # Information
    version = api.version()
    print version
    status = api.status()
    print status

    # State
    api.wakeup()
    api.wakeup(silent=1)
