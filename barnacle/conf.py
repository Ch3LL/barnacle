'''
Module to manage parsing the config file
'''

import yaml

def get_conf(path):
    '''
    helper method to get all config values from config file
    '''
    with open(path, 'r') as conf:
        try:
            config = yaml.safe_load(conf.read()) or {}
        except yaml.YAMLError:
            raise "Yaml Error. Could not Parse Config"
        return config
