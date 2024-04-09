### Задача 2

Напишите скрипт, который удaлит файлы старше 30 дней в выбранной директории. Используйте утилиту find для поиска файлов. В пути до файлов, включая имя файлов, не должно быть пробелов и специальных символов. В этой задаче предполагается, что пути содержат только латинские буквы, цифры, тире и подчеркивания.


## Доп. функционал

Добавлена возможность для пользователя самостоятельно выбирать директорию для очистки, возраст файлов, подлежащих удалению, в днях. Также реализована концепция истории - файла, в который записывается порядок всех удалённых файлов с их полными именами и пометкой о времени удаления. По умолчанию, история сохраняется в файле в репозитории, в котором находится скрипт, однако пользователь также может самостоятельно выбрать,куда она сохранится.
Также в исходный код был добавлен функционал подсчёта общего числа удалённых файлов.

## Как использовать

Во первых, файл скрипта необходимо загрузить на устройство. Сделать это можно, например, склонировав репозиторий github, с помощью команды 
1. `git clone https://github.com/AlhemyD/test_repo.git`.

Как установить git на свою машину: https://github.com/git-guides/install-git

Предположим, что файл скрипта уже находится на вашей машине в папке`test_repo`, которая находится в корневом каталоге `~`.

Для начала, нужно убедиться, что у него есть все необходимые права.

Для этого нужно выполнить команду 
2. `chmod 664 ~/test_repo/old_file_remover.sh`.

Теперь скрипт готов к работе и его можно запускать.
Сделать это можно командой вида:

3. `bash ~/test_repo/old_file_remover.sh directory_to_clear days_threshold [history_path]`

где `~/test_repo/old_file_remover.sh` - это название скрипта

`directory_to_clear` - полный путь до директории, которую вы хотите очистить

`days_threshold` - возраст, файлы старше которого подлежат удалению.
Например, если этот параметр равен 30, то все файлы старше 30 дней будут удалены при выполнении скрипта.

`history_path` - необязательный параметр; путь для сохранения истории всех удалённых файлов, по умолчанию находится в папке скрипта.

## Пример ответа скрипта

`
Deleted: /home/yuji/ar/file
Total files deleted: 1
`
