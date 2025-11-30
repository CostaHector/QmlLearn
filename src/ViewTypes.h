#ifndef VIEWTYPES_H
#define VIEWTYPES_H
#include <QObject>
class ViewTypes : public QObject {
  Q_OBJECT
public:
  static ViewTypes& GetInst() {
    static ViewTypes inst;
    return inst;
  }
  enum class ViewTypeE {
    LIST = 0,
    TABLE = 1,
    TREE = 2
  };
  Q_ENUM(ViewTypeE)
private:
  using QObject::QObject;
};

#endif // VIEWTYPES_H
