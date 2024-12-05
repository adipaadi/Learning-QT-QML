#ifndef LOGIC_H
#define LOGIC_H

#include <QObject>
#include <QtQml>

class Logic : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ value WRITE setValue NOTIFY valueChanged)

public:
    explicit Logic(QObject *parent = nullptr);  // Constructor declaration
    int value() const;                         // Getter declaration
    void setValue(int value);                  // Setter declaration
    Q_INVOKABLE void convertCurrency();        // Method declaration

signals:
    void valueChanged();  // Signal

private:
    int m_value;  // Private member variable
};

#endif // LOGIC_H

