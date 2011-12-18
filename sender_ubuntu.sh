while inotifywait ~/yankring_history_v2.txt; do ~/dots/vim-yankring | nc -q1 localhost 2224; done;
