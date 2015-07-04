#!/usr/bin/env python

# source: https://raw.githubusercontent.com/bazaarvoice/HostedUIResources/12ac88868c91104b36810a930f72e55f4ff9b536/SEOIntegration/examples/python/bvseosdk/bv.py

from setuptools import setup
import bazaarvoice


setup(
    name='bazaarvoice',
    version=bazaarvoice.__version__,
    url = "https://github.com/bazaarvoice/HostedUIResources/blob/master/SEOIntegration/examples/python/bvseosdk/bv.py",
    packages = ['bazaarvoice'],
)
