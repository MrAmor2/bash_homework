#!/bin/bash

ps -u $USER --sort=-%mem -o pid,%mem,cmd