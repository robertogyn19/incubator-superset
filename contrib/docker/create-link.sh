#!/usr/bin/env bash

if [[ ! -L superset/static/assets || ! -d superset/static/assets ]]; then
  if [[ -f superset/static/assets ]]; then
    rm superset/static/assets
  fi

  ln -s $PWD/superset/assets superset/static/assets && echo "" # ignora qualquer erro que ocorra
fi
