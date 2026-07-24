# homebrew-tap

Мои каски для homebrew.

## claude-limits-gachi-soundboard

Лимиты Claude Code в строке меню мака, заодно гачи-саундборд.
Репозиторий: [claude-limits-gachi-soundboard](https://github.com/marblecake88/claude-limits-gachi-soundboard)

    brew trust marblecake88/tap
    brew install --cask marblecake88/tap/claude-limits-gachi-soundboard

brew trust нужен один раз: свежие версии homebrew не грузят каски из сторонних
тапов, пока им не доверишь.

обновить:

    brew upgrade --cask claude-limits-gachi-soundboard

удалить вместе с настройками и логом:

    brew uninstall --zap --cask claude-limits-gachi-soundboard

Нужен macos 14 и установленный залогиненный Claude Code.
