# Generated from occQt.pro.

#####################################################################
## occQt Binary:
#####################################################################

qt_add_executable(occQt
    GUI
    SOURCES
        main.cpp
        occQt.cpp occQt.h occQt.ui
        occView.cpp occView.h
    PUBLIC_LIBRARIES
        Qt::Gui
        Qt::OpenGL
        TKBO
        TKBRep
        TKBool
        TKFillet
        TKG3d
        TKGeomAlgo
        TKGeomBase
        TKMath
        TKOffset
        TKOpenGl
        TKPrim
        TKSTL
        TKService
        TKTopAlgo
        TKV3d
        TKVRML
        TKernel
    ENABLE_AUTOGEN_TOOLS
        uic
)

# Resources:
set(occqt_resource_files
    "Resources/FitAll.png"
    "Resources/Home.png"
    "Resources/Pan.png"
    "Resources/Rotate.png"
    "Resources/Zoom.png"
    "Resources/box.png"
    "Resources/chamfer.png"
    "Resources/common.png"
    "Resources/cone.png"
    "Resources/cut.png"
    "Resources/cylinder.png"
    "Resources/extrude.png"
    "Resources/fillet.png"
    "Resources/fuse.png"
    "Resources/helix.png"
    "Resources/lamp.png"
    "Resources/loft.png"
    "Resources/revolve.png"
    "Resources/sphere.png"
    "Resources/torus.png"
)

qt_add_resource(occQt "occqt"
    PREFIX
        "/"
    FILES
        ${occqt_resource_files}
)


#### Keys ignored in scope 1:.:.:occQt.pro:<TRUE>:
# CASROOT = "C:\Users\Lenovo\Desktop\OCCC\OpenCASCADE-7.5.0-vc14-64\opencascade-7.5.0"
# TEMPLATE = "app"

## Scopes:
#####################################################################

qt_extend_target(occQt CONDITION (QT_MAJOR_VERSION GREATER 4)
    PUBLIC_LIBRARIES
        Qt::Widgets
)

qt_extend_target(occQt CONDITION WIN32
    DEFINES
        WNT
    INCLUDE_DIRECTORIES
        C:\Users\Lenovo\Desktop\OCCC\OpenCASCADE-7.5.0-vc14-64\opencascade-7.5.0/inc
)

#### Keys ignored in scope 3:.:.:occQt.pro:WIN32:
# compiler = "vc14"

qt_extend_target(occQt CONDITION ((WIN32) AND (NOT QMAKE_TARGET.arch___contains___x86_64)) AND ((CMAKE_BUILD_TYPE STREQUAL Debug))
    PUBLIC_LIBRARIES
        # Remove: L/win32//libd
)

qt_extend_target(occQt CONDITION ((WIN32) AND (NOT QMAKE_TARGET.arch___contains___x86_64)) AND (NOT ((CMAKE_BUILD_TYPE STREQUAL Debug)))
    PUBLIC_LIBRARIES
        # Remove: L/win32//lib
)

qt_extend_target(occQt CONDITION ((WIN32) AND (NOT (NOT QMAKE_TARGET.arch___contains___x86_64))) AND ((CMAKE_BUILD_TYPE STREQUAL Debug))
    PUBLIC_LIBRARIES
        # Remove: L/win64//libd
)

qt_extend_target(occQt CONDITION ((WIN32) AND (NOT (NOT QMAKE_TARGET.arch___contains___x86_64))) AND (NOT ((CMAKE_BUILD_TYPE STREQUAL Debug)))
    PUBLIC_LIBRARIES
        # Remove: L/win64//lib
)

qt_extend_target(occQt CONDITION linux-g++
    INCLUDE_DIRECTORIES
        C:\Users\Lenovo\Desktop\OCCC\OpenCASCADE-7.5.0-vc14-64\opencascade-7.5.0/include/opencascade
    PUBLIC_LIBRARIES
        # Remove: LC:\Users\Lenovo\Desktop\OCCC\OpenCASCADE-7.5.0-vc14-64\opencascade-7.5.0/lib
)
