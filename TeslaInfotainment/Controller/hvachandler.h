#ifndef HVACHANDLER_H
#define HVACHANDLER_H

#include <QObject>

class HVACHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int targetTemperature READ targetTemperature WRITE settargetTemperature NOTIFY targetTemperatureChanged)

    int m_targetTemperature;

public:
    explicit HVACHandler(QObject *parent = nullptr);
    Q_INVOKABLE void incrementTargetTemperature(const int & val);

int targetTemperature() const;

public slots:
void settargetTemperature(int targetTemperature);

signals:

void targetTemperatureChanged(int targetTemperature);
};

#endif // HVACHANDLER_H
