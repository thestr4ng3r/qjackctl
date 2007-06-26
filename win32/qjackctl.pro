INCLUDEPATH += ../src

SOURCES += ../src/main.cpp \
           ../src/qjackctlSetup.cpp \
           ../src/qjackctlConnect.cpp \
           ../src/qjackctlConnectAlias.cpp \
           ../src/qjackctlAlsaConnect.cpp \
           ../src/qjackctlJackConnect.cpp \
           ../src/qjackctlPatchbay.cpp \
           ../src/qjackctlPatchbayFile.cpp \
           ../src/qjackctlPatchbayRack.cpp \
           ../src/qjackctlSystemTray.cpp

HEADERS += ../src/qjackctlAbout.h \
           ../src/qjackctlSetup.h \
           ../src/qjackctlStatus.h \
           ../src/qjackctlConnect.h \
           ../src/qjackctlConnectAlias.h \
           ../src/qjackctlAlsaConnect.h \
           ../src/qjackctlJackConnect.h \
           ../src/qjackctlPatchbay.h \
           ../src/qjackctlPatchbayFile.h \
           ../src/qjackctlPatchbayRack.h \
           ../src/qjackctlSystemTray.h

FORMS    = ../src/qjackctlMainForm.ui \
           ../src/qjackctlMessagesForm.ui \
           ../src/qjackctlStatusForm.ui \
           ../src/qjackctlConnectionsForm.ui \
           ../src/qjackctlPatchbayForm.ui \
           ../src/qjackctlSocketForm.ui \
           ../src/qjackctlSetupForm.ui \
           ../src/qjackctlAboutForm.ui

IMAGES   = ../icons/qjackctl.png \
           ../icons/displaybg1.png \
           ../icons/start1.png \
           ../icons/stop1.png \
           ../icons/quit1.png \
           ../icons/rewind1.png \
           ../icons/backward1.png \
           ../icons/play1.png \
           ../icons/pause1.png \
           ../icons/forward1.png \
           ../icons/messages1.png \
           ../icons/status1.png \
           ../icons/connections1.png \
           ../icons/patchbay1.png \
           ../icons/setup1.png \
           ../icons/about1.png \
           ../icons/accept1.png \
           ../icons/new1.png \
           ../icons/open1.png \
           ../icons/save1.png \
           ../icons/apply1.png \
           ../icons/add1.png \
           ../icons/copy1.png \
           ../icons/edit1.png \
           ../icons/remove1.png \
           ../icons/up1.png \
           ../icons/down1.png \
           ../icons/connect1.png \
           ../icons/disconnect1.png \
           ../icons/disconnectall1.png \
           ../icons/reset1.png \
           ../icons/refresh1.png \
           ../icons/socket1.png \
           ../icons/aclienti.png \
           ../icons/aclienti_32x32.png \
           ../icons/aclienti_64x64.png \
           ../icons/acliento.png \
           ../icons/acliento_32x32.png \
           ../icons/acliento_64x64.png \
           ../icons/aportlni.png \
           ../icons/aportlni_32x32.png \
           ../icons/aportlni_64x64.png \
           ../icons/aportlno.png \
           ../icons/aportlno_32x32.png \
           ../icons/aportlno_64x64.png \
           ../icons/aportlti.png \
           ../icons/aportlti_32x32.png \
           ../icons/aportlti_64x64.png \
           ../icons/aportlto.png \
           ../icons/aportlto_32x32.png \
           ../icons/aportlto_64x64.png \
           ../icons/aportpni.png \
           ../icons/aportpni_32x32.png \
           ../icons/aportpni_64x64.png \
           ../icons/aportpno.png \
           ../icons/aportpno_32x32.png \
           ../icons/aportpno_64x64.png \
           ../icons/aportpti.png \
           ../icons/aportpti_32x32.png \
           ../icons/aportpti_64x64.png \
           ../icons/aportpto.png \
           ../icons/aportpto_32x32.png \
           ../icons/aportpto_64x64.png \
           ../icons/mclienti.png \
           ../icons/mclienti_32x32.png \
           ../icons/mclienti_64x64.png \
           ../icons/mcliento.png \
           ../icons/mcliento_32x32.png \
           ../icons/mcliento_64x64.png \
           ../icons/mporti.png \
           ../icons/mporti_32x32.png \
           ../icons/mporti_64x64.png \
           ../icons/mporto.png \
           ../icons/mporto_32x32.png \
           ../icons/mporto_64x64.png \
           ../icons/asocketi.png \
           ../icons/asocketo.png \
           ../icons/msocketi.png \
           ../icons/msocketo.png \
           ../icons/xsocket1.png \
           ../icons/xstarting1.png \
           ../icons/xstarted1.png \
           ../icons/xstopping1.png \
           ../icons/xstopped1.png \
           ../icons/xactivating1.png \
           ../icons/xactive1.png \
           ../icons/xinactive1.png \
           ../icons/qtlogo.png

TEMPLATE = app
CONFIG  += qt warn_on debug
LANGUAGE = C++

win32 {
	CONFIG  += console
	INCLUDEPATH	+= C:\usr\local\include
	LIBS    += C:\usr\local\lib\libjack.lib
}

unix {
	LIBS    += -ljack
}

