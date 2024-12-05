#include "logic.h"
#include <QDebug>

Logic::Logic(QObject *parent)
    : QObject(parent), m_value(0)
{}

int Logic::value() const {
    return m_value;
}

void Logic::setValue(int value) {
    if (m_value != value) {
        m_value = value;
        emit valueChanged();  // Notify QML when the value changes
    }
}

void Logic::convertCurrency() {
    qDebug() << "Currency conversion triggered";
}
