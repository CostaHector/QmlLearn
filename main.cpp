#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "FileOpener.h"
#include "StaticCalulator.h"
#include "ViewTypes.h"
#include <QQmlContext>

int main(int argc, char *argv[]) {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
  QGuiApplication app(argc, argv);

  // 注册静态类
  qmlRegisterSingletonType<FileOpener>( //
      "com.example",
      1,
      0,
      "FileOpener",                           //
      [](QQmlEngine *, QJSEngine *) -> QObject * { //
        return &FileOpener::GetInst();        //
      });

  // 注册静态类
  qmlRegisterSingletonType<StaticCalulator>( //
      "com.example",
      1,
      0,
      "StaticCalulator",                           //
      [](QQmlEngine *, QJSEngine *) -> QObject * { //
        return &StaticCalulator::GetInst();        //
      });
  // 1. 注册为单例
  // qmlRegisterSingletonType<ViewTypes> //
  //     ("com.example",
  //      1,
  //      0,
  //      "ViewTypes",                           //
  //      [](QQmlEngine *, QJSEngine *) -> QObject * { //
  //        return &ViewTypes::GetInst();
  //      });
  // 2. 注册类型，而不是单例
  // qmlRegisterType<ViewTypes>("com.example", 1, 0, "ViewTypes");
  // 3. 或者注册为不可实例化的类型
  qmlRegisterUncreatableType<ViewTypes>("com.example", 1, 0, "ViewTypes", "ViewTypes 是枚举容器，不能实例化");

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/main.qml"));
  // 上下文属性法
  FileOpener fileOpenerInst;
  engine.rootContext()->setContextProperty("fileOpenerInst", &fileOpenerInst);
  QObject::connect(
      &engine,
      &QQmlApplicationEngine::objectCreated,
      &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
          QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
