fx_version 'cerulean'
game 'gta5'

name        'cobra-loading'
description 'Blue Haven RP — Custom loading screen'
author      'Cobra Development'
version     '2.1.0'

lua54                     'yes'
use_experimental_fxv2_oal 'yes'

files {
    'html/index.html',
    'html/Logo.png',
    'html/logo.svg',
    'html/config.json',
    'html/*.png',
    'html/*.svg',
    'html/*.ico'
}

loadscreen              'html/index.html'
loadscreen_cursor       'yes'
loadscreen_manual_shutdown 'yes'
