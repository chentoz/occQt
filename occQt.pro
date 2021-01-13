#-------------------------------------------------
#
# Project created by QtCreator 2013-08-18T15:52:09
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = occQt
TEMPLATE = app

SOURCES += main.cpp \
    occQt.cpp       \
    occView.cpp

CONFIG += c++11

HEADERS  += \
    occQt.h \
    occView.h

FORMS    += \
    occQt.ui

RESOURCES += \
    occqt.qrc

CASROOT = C:\Users\Lenovo\Desktop\OCCC\OpenCASCADE-7.5.0-vc14-64\opencascade-7.5.0
    
win32 {
    DEFINES +=  \
        WNT
    INCLUDEPATH +=  \
        $$CASROOT/inc

    compiler=vc14

    # Determine 32 / 64 bit and debug / release build
    !contains(QMAKE_TARGET.arch, x86_64) {
        CONFIG(debug, debug|release) {
            message("Debug 32 build")
            LIBS += -L$$CASROOT/win32/$$compiler/libd
        }
        else {
            message("Release 32 build")
            LIBS += -L$$CASROOT/win32/$$compiler/lib
        }
    }
    else {
        CONFIG(debug, debug|release) {
            message("Debug 64 build")
            LIBS += -L$$CASROOT/win64/$$compiler/libd
        }
        else {
            message("Release 64 build")
            LIBS += -L$$CASROOT/win64/$$compiler/lib
        }
    }
}

linux-g++ {
    INCLUDEPATH +=  \
        $$CASROOT/include/opencascade

    LIBS +=         \
        -L$$CASROOT/lib
}

LIBS +=         \
    -lTKernel   \
    -lTKMath    \
    -lTKG3d     \
    -lTKBRep    \
    -lTKGeomBase\
    -lTKGeomAlgo\
    -lTKTopAlgo \
    -lTKPrim    \
    -lTKBO      \
    -lTKBool    \
    -lTKOffset  \
    -lTKService \
    -lTKV3d     \
    -lTKOpenGl  \
    -lTKFillet
