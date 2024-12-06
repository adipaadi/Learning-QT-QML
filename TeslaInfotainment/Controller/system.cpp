#include "system.h"
System::System(QObject *parent)
    : QObject(parent)
    , m_carLocked(true)
    , m_outdoorTemp(37)
    , m_userName("Aditya")

{

}


bool System::carLocked() const
{
    return m_carLocked;
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

QString System::userName() const
{
    return m_userName;
}



void System::setCarLocked(bool carLocked)
{
    if (m_carLocked == carLocked)
        return;

    m_carLocked = carLocked;
    emit carLockedChanged(m_carLocked);
}

void System::setoutdoorTemp(int outdoorTemp)
{
    if (m_outdoorTemp == outdoorTemp)
        return;

    m_outdoorTemp = outdoorTemp;
    emit outdoorTempChanged(m_outdoorTemp);
}

void System::setUserName(QString userName)
{
    if (m_userName == userName)
        return;

    m_userName = userName;
    emit userNameChanged(m_userName);
}



