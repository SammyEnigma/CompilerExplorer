DEFINES += COMPILEREXPLORER_LIBRARY

# CompilerExplorer files

SOURCES += \
    CompilerExplorerPlugin.cpp \
    gui/ExplorerOutputPane.cpp \
    gui/ExplorerOutputTable.cpp \
    gui/CompilerExplorerOptionsPage.cpp \
    gui/CompilerExplorerOptionsWidget.cpp

HEADERS += \
    compilerexplorerconstants.h \
    compilerexplorer_global.h \
    CompilerExplorerPlugin.h \
    gui/ExplorerOutputPane.h \
    gui/ExplorerOutputTable.h \
    gui/CompilerExplorerOptionsPage.h \
    gui/CompilerExplorerOptionsWidget.h

# Qt Creator linking

## Either set the IDE_SOURCE_TREE when running qmake,
## or set the QTC_SOURCE environment variable, to override the default setting
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = $$(QTC_SOURCE)
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = "/media/marvin/wrk/repositories/qt-creator-opensource-src-4.3.0"

## Either set the IDE_BUILD_TREE when running qmake,
## or set the QTC_BUILD environment variable, to override the default setting
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = "/media/marvin/wrk/repositories/qtcreator-4.3.0"

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on OS X
USE_USER_DESTDIR = no

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = CompilerExplorer
QTC_LIB_DEPENDS += \
    extensionsystem
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin \
    projectexplorer

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$IDE_SOURCE_TREE/src/qtcreatorplugin.pri)
include (src.pri)

DISTFILES += \
    src.pri

FORMS += \
    gui/CompilerExplorerOptionsWidget.ui
