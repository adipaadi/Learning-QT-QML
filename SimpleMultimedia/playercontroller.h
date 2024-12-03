#ifndef PLAYERCONTROLLER_H
#define PLAYERCONTROLLER_H

#include <QObject>

class PlayerController
{
    Q_OBJECT
    Q_PROPERTY(int currentSongIndex READ currentSongIndex NOTIFY currentSongIndexChanged)
    Q_PROPERTY(int songCount READ songCount NOTIFY songCountChanged)
    Q_PROPERTY(bool playing READ playing NOTIFY playingChanged)
public:
    PlayerController();
    int currentSongIndex();
    int songCount();
    bool playing() const;
    Q_INVOKABLE void switchToNextSong();
public slots:
    void switchToPreviousSong();
    void playPause();
ignals:
    void currenSongIndexChanged();
    void songCountChanged();
    void playingChanged();

private:
    int m_currentSongIndex = 0;
    int m_songCount = 3;
    bool m_playing = false;
};

#endif // PLAYERCONTROLLER_H
