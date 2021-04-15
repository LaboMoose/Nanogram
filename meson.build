project('com.github.labomoose.nanogram', 'vala', 'c')

i18n = import('i18n')
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()), language: 'c')

executable(
    meson.project_name(),
    'src/NanogramApplication.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

i18n.merge_file(
    input: join_paths('data', 'nanogram.desktop.in'),
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications'),
)

i18n.merge_file(
    input: join_paths('data', 'nanogram.appdata.xml.in'),
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
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

subdir('po')
