/*
   ktigcc - TIGCC IDE for KDE

   Copyright (C) 2004-2007 Kevin Kofler
   Copyright (C) 2006 Joey Adams
   Copyright (C) 2007 Konrad Meyer

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA.
*/

#pragma once

#include <cstddef>
#include <QList>
#include <kconfig.h>
#include <kaboutdata.h>
#include <QString>
#include <Q3ValueVector>
class QAssistantClient;
class QClipboard;
class SourceFileWindow;
typedef struct tprsettings tprSettings;
typedef struct tprlibopts tprLibOpts;

extern const char *tigcc_base;
extern const char *quill_drv;
extern bool have_fargo;
extern bool have_flashos;
extern bool have_usb;
extern char tempdir[];
void write_temp_file(const char *filename, const char *data, const size_t len);
void delete_temp_file(const char *filename);
void clear_temp_dir(void);
void force_qt_assistant_page(int n);
const char *lookup_doc_keyword(const char *keyword);
extern KSharedConfigPtr pconfig;
extern KAboutData *pabout;
extern const char *parg;
extern QAssistantClient *assistant;
extern QClipboard *clipboard;
extern QStringList findHistory, replacementHistory;
extern QList<SourceFileWindow *> sourceFiles;
extern tprSettings settings;
extern tprLibOpts libopts;

struct Tool {
  Tool() : title(), commandLine(), workingDirectory(), runInTerminal(false) {}
  Tool(const QString &t, const QString &c, const QString &w, bool r) :
    title(t), commandLine(c), workingDirectory(w), runInTerminal(r) {}
  QString title;
  QString commandLine;
  QString workingDirectory;
  bool runInTerminal;
};
typedef QVector<Tool> Tools;
extern Tools tools, tempTools;
extern int toolIndex;
extern bool disableViewEvents;
