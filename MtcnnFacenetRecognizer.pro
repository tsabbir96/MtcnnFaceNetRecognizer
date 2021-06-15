#-------------------------------------------------
#
# Project created by QtCreator 2021-06-15T15:19:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MtcnnFacenetRecognizer
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += /usr/include/opencv4 /usr/local/cuda/include /usr/include/aarch64-linux-gnu/
LIBS +=  `pkg-config --cflags --libs opencv4` -lm -lX11 -llapack -lcurl -lcurlpp -ldlib -L/usr/local/cuda/lib64 -lcuda -lcurand -lcusolver -lcudart -lcblas -lcublas


INCLUDEPATH += /libs
LIBS += -lnvcaffe_parser\
    -lnvinfer_plugin\
    -lnvparsers\
    -lnvinfer \
    -lnvparsers \
    -lnvonnxparser

LIBS += /home/sigmind/MtcnnFacenetRecognizer/libs/libtrt_l2norm_helper.a


SOURCES += \
        main.cpp \
        faceNet.cpp \
        videoStreamer.cpp \
        network.cpp \
        mtcnn.cpp \
        common.cpp \
        onet_rt.cpp \
        pnet_rt.cpp \
        rnet_rt.cpp \
        baseEngine.cpp

HEADERS += \
        faceNet.h \
        videoStreamer.h \
        network.h \
        mtcnn.h \
        common.h \
        pBox.h \
        onet_rt.h \
        pnet_rt.h \
        rnet_rt.h \
        baseEngine.h






