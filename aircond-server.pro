#-------------------------------------------------
#
# Project created by QtCreator 2018-05-12T15:06:32
#
#-------------------------------------------------

QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = aircond-server
TEMPLATE = app
DEFINES += QT_DEPRECATED_WARNINGS

#win32:RC_ICONS += res/main.icon
win32:RC_FILE += res/main.rc

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    quiwidget.cpp \
    panelwidget.cpp \
    client.cpp \
    detaillist.cpp

HEADERS += \
    mainwindow.h \
    quiwidget.h \
    panelwidget.h \
    client.h \
    IconsFontAwesome5.h \
    detaillist.h

FORMS += \
    mainwindow.ui \
    client.ui \
    detaillist.ui

RESOURCES += \
    res/qss.qrc \
    res/main.qrc

DISTFILES += \
    res/image/fontawesome-webfont.ttf \
    res/image/btn_close.png \
    res/image/btn_ok.png \
    res/image/msg_error.png \
    res/image/msg_info.png \
    res/image/msg_question.png \
    res/qss/bf/add_bottom.png \
    res/qss/bf/add_left.png \
    res/qss/bf/add_right.png \
    res/qss/bf/add_top.png \
    res/qss/bf/branch_close.png \
    res/qss/bf/branch_open.png \
    res/qss/bf/calendar_nextmonth.png \
    res/qss/bf/calendar_prevmonth.png \
    res/qss/bf/checkbox_checked.png \
    res/qss/bf/checkbox_checked_disable.png \
    res/qss/bf/checkbox_parcial.png \
    res/qss/bf/checkbox_parcial_disable.png \
    res/qss/bf/checkbox_unchecked.png \
    res/qss/bf/checkbox_unchecked_disable.png \
    res/qss/bf/radiobutton_checked.png \
    res/qss/bf/radiobutton_checked_disable.png \
    res/qss/bf/radiobutton_unchecked.png \
    res/qss/bf/radiobutton_unchecked_disable.png \
    res/qss/black/add_bottom.png \
    res/qss/black/add_left.png \
    res/qss/black/add_right.png \
    res/qss/black/add_top.png \
    res/qss/black/branch_close.png \
    res/qss/black/branch_open.png \
    res/qss/black/calendar_nextmonth.png \
    res/qss/black/calendar_prevmonth.png \
    res/qss/black/checkbox_checked.png \
    res/qss/black/checkbox_checked_disable.png \
    res/qss/black/checkbox_parcial.png \
    res/qss/black/checkbox_parcial_disable.png \
    res/qss/black/checkbox_unchecked.png \
    res/qss/black/checkbox_unchecked_disable.png \
    res/qss/black/radiobutton_checked.png \
    res/qss/black/radiobutton_checked_disable.png \
    res/qss/black/radiobutton_unchecked.png \
    res/qss/black/radiobutton_unchecked_disable.png \
    res/qss/blue/add_bottom.png \
    res/qss/blue/add_left.png \
    res/qss/blue/add_right.png \
    res/qss/blue/add_top.png \
    res/qss/blue/branch_close.png \
    res/qss/blue/branch_open.png \
    res/qss/blue/calendar_nextmonth.png \
    res/qss/blue/calendar_prevmonth.png \
    res/qss/blue/checkbox_checked.png \
    res/qss/blue/checkbox_checked_disable.png \
    res/qss/blue/checkbox_parcial.png \
    res/qss/blue/checkbox_parcial_disable.png \
    res/qss/blue/checkbox_unchecked.png \
    res/qss/blue/checkbox_unchecked_disable.png \
    res/qss/blue/radiobutton_checked.png \
    res/qss/blue/radiobutton_checked_disable.png \
    res/qss/blue/radiobutton_unchecked.png \
    res/qss/blue/radiobutton_unchecked_disable.png \
    res/qss/darkblack/add_bottom.png \
    res/qss/darkblack/add_left.png \
    res/qss/darkblack/add_right.png \
    res/qss/darkblack/add_top.png \
    res/qss/darkblack/branch_close.png \
    res/qss/darkblack/branch_open.png \
    res/qss/darkblack/calendar_nextmonth.png \
    res/qss/darkblack/calendar_prevmonth.png \
    res/qss/darkblack/checkbox_checked.png \
    res/qss/darkblack/checkbox_checked_disable.png \
    res/qss/darkblack/checkbox_parcial.png \
    res/qss/darkblack/checkbox_parcial_disable.png \
    res/qss/darkblack/checkbox_unchecked.png \
    res/qss/darkblack/checkbox_unchecked_disable.png \
    res/qss/darkblack/radiobutton_checked.png \
    res/qss/darkblack/radiobutton_checked_disable.png \
    res/qss/darkblack/radiobutton_unchecked.png \
    res/qss/darkblack/radiobutton_unchecked_disable.png \
    res/qss/darkblue/add_bottom.png \
    res/qss/darkblue/add_left.png \
    res/qss/darkblue/add_right.png \
    res/qss/darkblue/add_top.png \
    res/qss/darkblue/branch_close.png \
    res/qss/darkblue/branch_open.png \
    res/qss/darkblue/calendar_nextmonth.png \
    res/qss/darkblue/calendar_prevmonth.png \
    res/qss/darkblue/checkbox_checked.png \
    res/qss/darkblue/checkbox_checked_disable.png \
    res/qss/darkblue/checkbox_parcial.png \
    res/qss/darkblue/checkbox_parcial_disable.png \
    res/qss/darkblue/checkbox_unchecked.png \
    res/qss/darkblue/checkbox_unchecked_disable.png \
    res/qss/darkblue/radiobutton_checked.png \
    res/qss/darkblue/radiobutton_checked_disable.png \
    res/qss/darkblue/radiobutton_unchecked.png \
    res/qss/darkblue/radiobutton_unchecked_disable.png \
    res/qss/darkgray/add_bottom.png \
    res/qss/darkgray/add_left.png \
    res/qss/darkgray/add_right.png \
    res/qss/darkgray/add_top.png \
    res/qss/darkgray/branch_close.png \
    res/qss/darkgray/branch_open.png \
    res/qss/darkgray/calendar_nextmonth.png \
    res/qss/darkgray/calendar_prevmonth.png \
    res/qss/darkgray/checkbox_checked.png \
    res/qss/darkgray/checkbox_checked_disable.png \
    res/qss/darkgray/checkbox_parcial.png \
    res/qss/darkgray/checkbox_parcial_disable.png \
    res/qss/darkgray/checkbox_unchecked.png \
    res/qss/darkgray/checkbox_unchecked_disable.png \
    res/qss/darkgray/radiobutton_checked.png \
    res/qss/darkgray/radiobutton_checked_disable.png \
    res/qss/darkgray/radiobutton_unchecked.png \
    res/qss/darkgray/radiobutton_unchecked_disable.png \
    res/qss/flatblack/add_bottom.png \
    res/qss/flatblack/add_left.png \
    res/qss/flatblack/add_right.png \
    res/qss/flatblack/add_top.png \
    res/qss/flatblack/branch_close.png \
    res/qss/flatblack/branch_open.png \
    res/qss/flatblack/calendar_nextmonth.png \
    res/qss/flatblack/calendar_prevmonth.png \
    res/qss/flatblack/checkbox_checked.png \
    res/qss/flatblack/checkbox_checked_disable.png \
    res/qss/flatblack/checkbox_parcial.png \
    res/qss/flatblack/checkbox_parcial_disable.png \
    res/qss/flatblack/checkbox_unchecked.png \
    res/qss/flatblack/checkbox_unchecked_disable.png \
    res/qss/flatblack/radiobutton_checked.png \
    res/qss/flatblack/radiobutton_checked_disable.png \
    res/qss/flatblack/radiobutton_unchecked.png \
    res/qss/flatblack/radiobutton_unchecked_disable.png \
    res/qss/flatwhite/add_bottom.png \
    res/qss/flatwhite/add_left.png \
    res/qss/flatwhite/add_right.png \
    res/qss/flatwhite/add_top.png \
    res/qss/flatwhite/branch_close.png \
    res/qss/flatwhite/branch_open.png \
    res/qss/flatwhite/calendar_nextmonth.png \
    res/qss/flatwhite/calendar_prevmonth.png \
    res/qss/flatwhite/checkbox_checked.png \
    res/qss/flatwhite/checkbox_checked_disable.png \
    res/qss/flatwhite/checkbox_parcial.png \
    res/qss/flatwhite/checkbox_parcial_disable.png \
    res/qss/flatwhite/checkbox_unchecked.png \
    res/qss/flatwhite/checkbox_unchecked_disable.png \
    res/qss/flatwhite/radiobutton_checked.png \
    res/qss/flatwhite/radiobutton_checked_disable.png \
    res/qss/flatwhite/radiobutton_unchecked.png \
    res/qss/flatwhite/radiobutton_unchecked_disable.png \
    res/qss/gray/add_bottom.png \
    res/qss/gray/add_left.png \
    res/qss/gray/add_right.png \
    res/qss/gray/add_top.png \
    res/qss/gray/branch_close.png \
    res/qss/gray/branch_open.png \
    res/qss/gray/calendar_nextmonth.png \
    res/qss/gray/calendar_prevmonth.png \
    res/qss/gray/checkbox_checked.png \
    res/qss/gray/checkbox_checked_disable.png \
    res/qss/gray/checkbox_parcial.png \
    res/qss/gray/checkbox_parcial_disable.png \
    res/qss/gray/checkbox_unchecked.png \
    res/qss/gray/checkbox_unchecked_disable.png \
    res/qss/gray/radiobutton_checked.png \
    res/qss/gray/radiobutton_checked_disable.png \
    res/qss/gray/radiobutton_unchecked.png \
    res/qss/gray/radiobutton_unchecked_disable.png \
    res/qss/lightblack/add_bottom.png \
    res/qss/lightblack/add_left.png \
    res/qss/lightblack/add_right.png \
    res/qss/lightblack/add_top.png \
    res/qss/lightblack/branch_close.png \
    res/qss/lightblack/branch_open.png \
    res/qss/lightblack/calendar_nextmonth.png \
    res/qss/lightblack/calendar_prevmonth.png \
    res/qss/lightblack/checkbox_checked.png \
    res/qss/lightblack/checkbox_checked_disable.png \
    res/qss/lightblack/checkbox_parcial.png \
    res/qss/lightblack/checkbox_parcial_disable.png \
    res/qss/lightblack/checkbox_unchecked.png \
    res/qss/lightblack/checkbox_unchecked_disable.png \
    res/qss/lightblack/radiobutton_checked.png \
    res/qss/lightblack/radiobutton_checked_disable.png \
    res/qss/lightblack/radiobutton_unchecked.png \
    res/qss/lightblack/radiobutton_unchecked_disable.png \
    res/qss/lightblue/add_bottom.png \
    res/qss/lightblue/add_left.png \
    res/qss/lightblue/add_right.png \
    res/qss/lightblue/add_top.png \
    res/qss/lightblue/branch_close.png \
    res/qss/lightblue/branch_open.png \
    res/qss/lightblue/calendar_nextmonth.png \
    res/qss/lightblue/calendar_prevmonth.png \
    res/qss/lightblue/checkbox_checked.png \
    res/qss/lightblue/checkbox_checked_disable.png \
    res/qss/lightblue/checkbox_parcial.png \
    res/qss/lightblue/checkbox_parcial_disable.png \
    res/qss/lightblue/checkbox_unchecked.png \
    res/qss/lightblue/checkbox_unchecked_disable.png \
    res/qss/lightblue/radiobutton_checked.png \
    res/qss/lightblue/radiobutton_checked_disable.png \
    res/qss/lightblue/radiobutton_unchecked.png \
    res/qss/lightblue/radiobutton_unchecked_disable.png \
    res/qss/lightgray/add_bottom.png \
    res/qss/lightgray/add_left.png \
    res/qss/lightgray/add_right.png \
    res/qss/lightgray/add_top.png \
    res/qss/lightgray/branch_close.png \
    res/qss/lightgray/branch_open.png \
    res/qss/lightgray/calendar_nextmonth.png \
    res/qss/lightgray/calendar_prevmonth.png \
    res/qss/lightgray/checkbox_checked.png \
    res/qss/lightgray/checkbox_checked_disable.png \
    res/qss/lightgray/checkbox_parcial.png \
    res/qss/lightgray/checkbox_parcial_disable.png \
    res/qss/lightgray/checkbox_unchecked.png \
    res/qss/lightgray/checkbox_unchecked_disable.png \
    res/qss/lightgray/radiobutton_checked.png \
    res/qss/lightgray/radiobutton_checked_disable.png \
    res/qss/lightgray/radiobutton_unchecked.png \
    res/qss/lightgray/radiobutton_unchecked_disable.png \
    res/qss/psblack/add_bottom.png \
    res/qss/psblack/add_left.png \
    res/qss/psblack/add_right.png \
    res/qss/psblack/add_top.png \
    res/qss/psblack/branch_close.png \
    res/qss/psblack/branch_open.png \
    res/qss/psblack/calendar_nextmonth.png \
    res/qss/psblack/calendar_prevmonth.png \
    res/qss/psblack/checkbox_checked.png \
    res/qss/psblack/checkbox_checked_disable.png \
    res/qss/psblack/checkbox_parcial.png \
    res/qss/psblack/checkbox_parcial_disable.png \
    res/qss/psblack/checkbox_unchecked.png \
    res/qss/psblack/checkbox_unchecked_disable.png \
    res/qss/psblack/radiobutton_checked.png \
    res/qss/psblack/radiobutton_checked_disable.png \
    res/qss/psblack/radiobutton_unchecked.png \
    res/qss/psblack/radiobutton_unchecked_disable.png \
    res/qss/silvery/add_bottom.png \
    res/qss/silvery/add_left.png \
    res/qss/silvery/add_right.png \
    res/qss/silvery/add_top.png \
    res/qss/silvery/branch_close.png \
    res/qss/silvery/branch_open.png \
    res/qss/silvery/calendar_nextmonth.png \
    res/qss/silvery/calendar_prevmonth.png \
    res/qss/silvery/checkbox_checked.png \
    res/qss/silvery/checkbox_checked_disable.png \
    res/qss/silvery/checkbox_parcial.png \
    res/qss/silvery/checkbox_parcial_disable.png \
    res/qss/silvery/checkbox_unchecked.png \
    res/qss/silvery/checkbox_unchecked_disable.png \
    res/qss/silvery/radiobutton_checked.png \
    res/qss/silvery/radiobutton_checked_disable.png \
    res/qss/silvery/radiobutton_unchecked.png \
    res/qss/silvery/radiobutton_unchecked_disable.png \
    res/qss/test/add_bottom.png \
    res/qss/test/add_left.png \
    res/qss/test/add_right.png \
    res/qss/test/add_top.png \
    res/qss/test/branch_close.png \
    res/qss/test/branch_open.png \
    res/qss/test/calendar_nextmonth.png \
    res/qss/test/calendar_prevmonth.png \
    res/qss/test/checkbox_checked.png \
    res/qss/test/checkbox_checked_disable.png \
    res/qss/test/checkbox_parcial.png \
    res/qss/test/checkbox_parcial_disable.png \
    res/qss/test/checkbox_unchecked.png \
    res/qss/test/checkbox_unchecked_disable.png \
    res/qss/test/radiobutton_checked.png \
    res/qss/test/radiobutton_checked_disable.png \
    res/qss/test/radiobutton_unchecked.png \
    res/qss/test/radiobutton_unchecked_disable.png \
    res/qss/bf.css \
    res/qss/black.css \
    res/qss/blue.css \
    res/qss/darkblack.css \
    res/qss/darkblue.css \
    res/qss/darkgray.css \
    res/qss/flatblack.css \
    res/qss/flatwhite.css \
    res/qss/gray.css \
    res/qss/lightblack.css \
    res/qss/lightblue.css \
    res/qss/lightgray.css \
    res/qss/psblack.css \
    res/qss/silvery.css \
    res/qss/test.css \
    res/main.rc \
    res/main.ico
