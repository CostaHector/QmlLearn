#include "FileOpener.h"
#include <QUrl>
#include <QDesktopServices>
#include <QFile>
#include <QFileInfo>
#include <QDebug>

bool FileOpener::printPath(const QString &filePath) {
  qDebug() << QFileInfo(filePath).absoluteFilePath();
  return true;
}

bool FileOpener::openFile(const QString &filePath) const {
  if (!QFile::exists(filePath)) {
    qDebug() << "Path not exist[" << filePath << "]";
    return false;
  }
  return QDesktopServices::openUrl(QUrl::fromLocalFile(filePath));
}
