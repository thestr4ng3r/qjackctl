// main.cpp
//
/****************************************************************************
   Copyright (C) 2003, rncbc aka Rui Nuno Capela. All rights reserved.

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

*****************************************************************************/

#include <qapplication.h>
#include <qtextcodec.h>

#include "qjackctlMainForm.h"

#include "config.h"

int main ( int argc, char **argv )
{
    QApplication app(argc, argv);

    QTranslator translator(0);
    QString sLocale = QTextCodec::locale();
    if (sLocale != "C") {
        QString sLocName = "qjackctl_" + sLocale;
        if (!translator.load(sLocName, ".")) {
            QString sLocPath = CONFIG_PREFIX "/share/locale";
            if (!translator.load(sLocName, sLocPath))
                fprintf(stderr, "Warning: no locale found: %s/%s.\n", sLocPath.latin1(), sLocName.latin1());
        }
        app.installTranslator(&translator);
    }

    qjackctlMainForm w;
    w.show();
    
    app.connect(&app, SIGNAL(lastWindowClosed()), &app, SLOT(quit()));
    
    return app.exec();
}

// end of main.cpp
