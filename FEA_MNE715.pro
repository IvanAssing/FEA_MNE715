#-------------------------------------------------
#
# FEA_MNE715 Project
#
# Copyright (C) 2017 Ivan Assing da Silva
# Contact: ivanassing@gmail.com
#
#-------------------------------------------------

QT       += core gui opengl widgets

TARGET = FEA_MNE715
TEMPLATE = app
DEFINES += QT_DEPRECATED_WARNINGS

#### EXTERNAL LIBRARIES ####
# Mth (Mathematics Library for Finite Elements Analysis)
# see exclusive repository on Github
INCLUDEPATH += ../library
LIBS += -L../library/mth/lib/ -lmth

# GLU
LIBS += -lGLU

# Freetype (to render text in Opengl)
LIBS += -L/usr/local/lib -lfreetype

# OpenMP (for parallel processing)
QMAKE_CXXFLAGS += -fopenmp
QMAKE_LFLAGS *= -fopenmp
DEFINES += FEM_NUM_THREADS=8
QMAKE_CXXFLAGS_RELEASE += -w

# dxflib (to read DXF files)
INCLUDEPATH += /opt/dxflib/include
LIBS += -L/opt/dxflib/lib -ldxflib


#### PROJECT FILES #####
SOURCES += \
        main.cpp \
        mainwindow.cpp \
    dxfreader.cpp \
    node3d.cpp \
    truss3d.cpp \
    truss3delement.cpp \
    truss3dfilemanager.cpp \
    truss3dreader.cpp \
    viewcontroller.cpp \
    graphicwindow.cpp \
    material.cpp \
    drawing.cpp \
    solid3d.cpp \
    solid3delement.cpp \
    solid3dreader.cpp \
    solid3dfilemanager.cpp \
    model.cpp

HEADERS += \
        mainwindow.h \
    dxfreader.h \
    node3d.h \
    truss3d.h \
    truss3delement.h \
    truss3dfilemanager.h \
    truss3dreader.h \
    viewcontroller.h \
    graphicwindow.h \
    material.h \
    drawing.h \
    solid3d.h \
    solid3delement.h \
    solid3dreader.h \
    solid3dfilemanager.h \
    model.h

FORMS += \
        mainwindow.ui

DISTFILES +=

RESOURCES += \
    shaders.qrc \
    icons.qrc
