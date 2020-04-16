module.exports = {
    'appName': 'eros-leao',
    'appBoard': '/config/index.js',
    // android 监听全局事件homeBack 如果为true 安卓端需要自行调用router.finish方法来关闭应用
    'androidIsListenHomeBack': 'true',
    'customBundleUpdate': 'false',
    'version': {
        'android': '1.0.0',
        'iOS': '1.0.0'
    },
    'page': {
        'homePage': 'tabBar',
        'mediatorPage': '/mediator/index.js',
        'navBarColor': '#ff7d44',
        'navItemColor': '#ffffff'
    },
    'url': {
        'image': 'https://www.weex.eros/test/xxx',
        'bundleUpdate': 'http://localhosts:3001/app/check'
    },
    'zipFolder': {
        'iOS': '/ios/WeexEros/WeexEros',
        'android': '/android/WeexFrameworkWrapper/app/src/main/assets'
    },
    'getui': {
        'enabled': 'false',
        'appId': '',
        'appKey': '',
        'appSecret': ''
    },
    'tabBar': {
        'color': '#777777',
        'selectedColor': '#ff7d44',
        'backgroundColor': '#fafafa',
        'borderColor': '#dfe1eb',
        'list': [{
                'pagePath': '/pages/home.js',
                'text': '五十音',
                'icon': 'bmlocal://assets/tab/tab_home@2x.png',
                'selectedIcon': 'bmlocal://assets/tab/tab_home_pre@2x.png',
                'navShow': 'true',
                'navTitle': '五十音'
            },
            {
                'pagePath': '/pages/find.js',
                'text': '发现',
                'icon': 'bmlocal://assets//tab/tab_found@2x.png',
                'selectedIcon': 'bmlocal://assets/tab/tab_found_pre@2x.png',
                'navShow': 'true',
                'navTitle': '发现'
            },
            {
                'pagePath': '/pages/study.js',
                'text': '跟老师学',
                'icon': 'bmlocal://assets//tab/tab_web@2x.png',
                'selectedIcon': 'bmlocal://assets/tab/tab_web_pre@2x.png',
                'navShow': 'true',
                'navTitle': '跟老师学'
            },
            {
                'pagePath': '/pages/mine.js',
                'text': '我的',
                'icon': 'bmlocal://assets//tab/tab_set@2x.png',
                'selectedIcon': 'bmlocal://assets/tab/tab_set_pre@2x.png',
                'navShow': 'true',
                'navTitle': '我的'
            }
        ]
    }
}
