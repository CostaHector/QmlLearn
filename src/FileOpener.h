// FileOpener.h
#ifndef FILEOPENER_H
#define FILEOPENER_H

#include <QObject>

class FileOpener : public QObject {
  Q_OBJECT
public:
  using QObject::QObject;
  static FileOpener& GetInst() {
    static FileOpener inst;
    return inst;
  }

  Q_INVOKABLE static bool printPath(const QString &filePath);

public slots:
  bool openFile(const QString &filePath) const;
};

#endif // FILEOPENER_H
