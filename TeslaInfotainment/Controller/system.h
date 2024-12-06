#ifndef SYSTEM_H
#define SYSTEM_H
#include <QObject>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged)
    Q_PROPERTY(int outdoorTemp READ outdoorTemp WRITE setoutdoorTemp NOTIFY outdoorTempChanged)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)

public:
    explicit System(QObject *parent = nullptr);
    bool carLocked() const;
    int outdoorTemp() const;
    QString userName() const;

public slots:
void setCarLocked(bool carLocked);
void setoutdoorTemp(int outdoorTemp);

void setUserName(QString userName);


private:
    bool m_carLocked;
    int m_outdoorTemp;
    QString m_userName;

signals:

void carLockedChanged(bool carLocked);
void outdoorTempChanged(int outdoorTemp);
void userNameChanged(QString userName);
};

#endif // SYSTEM_H
