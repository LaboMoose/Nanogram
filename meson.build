project('comcom.github.labomoose.nanogram', 'vala', 'c')

executable(
    meson.project_name(),
    'src/NanogramApplication.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

install_data(
    join_paths('data', 'nanogram.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications'),
    rename: meson.project_name() + '.desktop'
)

install_data(
    join_paths('data', 'nanogram.appdata.xml'),
    install_dir: join_paths(get_option('datadir'), 'metainfo'),
    rename: meson.project_name() + '.appadata.xml'
)

icon_sizes = ['16', '32', '48', '64', '128']

foreach i : icon_sizes
    install_data(
        join_paths('data', i + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor',
                                i + 'x', 'apps'),
        rename: meson.project_name() + '.svg'
    )
    
    install_data(
        join_paths('data', i + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor',
                                i + 'x' + i + '@2', 'apps'),
        rename: meson.project_name() + '.svg'
    )
endforeach
