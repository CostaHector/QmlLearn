#ifndef TIEANALYSE_H
#define TIEANALYSE_H
#include <QObject>
class TieAnalyse : public QObject{
  Q_OBJECT
  Q_PROPERTY(double probability READ probability WRITE setProbability NOTIFY probabilityChanged FINAL)
public:

  static TieAnalyse& GetInst() {
    static TieAnalyse inst;
    return inst;
  }

  // Getter
  double probability() const { return m_probability; }

  // Setter
  void setProbability(double value) {
    if (qFuzzyCompare(m_probability, value)) {
      return;
    }

    m_probability = value;
    emit probabilityChanged();  // 发出信号通知QML更新
  }

  // 添加一个方法来模拟概率变化（用于测试）
  Q_INVOKABLE void updateProbability(double newValue) {
    setProbability(newValue);
  }

signals:
  void probabilityChanged();

private:
  using QObject::QObject;
  double m_probability{0};
};

#endif // TIEANALYSE_H
