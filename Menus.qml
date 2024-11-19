import FlatSiteBuilder 2.0

Menus {
    Menu {
        name: 'default'
        Menuitem {
            title: 'Home'
            url: 'index.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'Designer'
            url: 'designer.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'Documentation'
            url: 'docu.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'English'
            url: '#'
            icon: 'assets/images/flags/us.png'
            attributes: ''
            Menuitem {
                title: '[EN] English'
                url: 'index.html'
                icon: 'assets/images/flags/us.png'
            }
            Menuitem {
                title: '[DE] Deutsch'
                url: 'index-de.html'
                icon: 'assets/images/flags/de.png'
            }
        }
    }
    Menu {
        name: 'default-de'
        Menuitem {
            title: 'Home'
            url: 'index-de.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'Designer'
            url: 'designer-de.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'Dokumentation'
            url: 'docu.html'
            icon: ''
            attributes: ''
        }
        Menuitem {
            title: 'Deutsch'
            url: '#'
            icon: 'assets/images/flags/de.png'
            attributes: ''
            Menuitem {
                title: '[EN] English'
                url: 'index.html'
                icon: 'assets/images/flags/us.png'
            }
            Menuitem {
                title: '[DE] Deutsch'
                url: 'index-de.html'
                icon: 'assets/images/flags/de.png'
            }
        }
    }
}
