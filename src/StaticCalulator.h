#ifndef STATICCALULATOR_H
#define STATICCALULATOR_H
#include <QObject>
#include <functional>
#include <cmath>

class StaticCalulator : public QObject {
  Q_OBJECT
public:
  static StaticCalulator& GetInst() {
    static StaticCalulator inst;
    return inst;
  }

  Q_INVOKABLE int add(int lhs, int rhs) {
    return std::plus<int>()(lhs, rhs);
  }
  Q_INVOKABLE int substract(int lhs, int rhs) {
    return std::minus<int>()(lhs, rhs);
  }
  Q_INVOKABLE int multiply(int lhs, int rhs) {
    return std::multiplies<int>()(lhs, rhs);
  }
  Q_INVOKABLE int divide(int lhs, int rhs) {
    return std::divides<int>()(lhs, rhs);
  }
  Q_INVOKABLE int modulus(int lhs, int rhs) {
    return std::modulus<int>()(lhs, rhs);
  }

private:
  using QObject::QObject;
};


// 注册到元对象系统
Q_DECLARE_METATYPE(StaticCalulator*)
#endif // STATICCALULATOR_H
