### Виселица
Программа - игра, где есть слово-загадка, а игрок предлагает букву, которая может входить в это загаданное слово. Если такая буква есть в слове, то программа выводит её над соответствующими этой букве чертами — столько раз, сколько она встречается в слове. Если такой буквы нет, то к виселице добавляется круг в петле, изображающий голову. Игрок продолжает отгадывать буквы до тех пор, пока не отгадает всё слово. За каждый неправильный ответ добавляется одна часть туловища к виселице.
Если туловище в виселице нарисовано полностью, то игрок проигрывает, считается повешенным.

Новые слова для игры можно добавлять в файл ```data/words.txt```. 

## Установка и запуск
1. установите гем ```bundler```, если у вас его нет:
```
gem install bundler
```
2. Установите все необходимые гемы и зависимости:
```
bundle install
```
3. Для запуска игры из консоли нужно выполнить комманду:
```
bundle exec ruby main.rb
```
