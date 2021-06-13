#ifndef HELPER_H
#define HELPER_H

#include <QObject>
#include <QVector>
#include <QRandomGenerator>

class Helper : public QObject
{
    Q_OBJECT
public:
    explicit Helper(QObject *parent = nullptr);

signals:

public slots:
    int randboxvalue();
    int randplayer();
};
#endif // HELPER_H
