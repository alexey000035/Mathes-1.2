#include "helper.h"

Helper::Helper(QObject *parent) : QObject(parent)
{

}
int Helper:: randboxvalue(){
    int boxvalue = QRandomGenerator::global()->generate() % 21 + 20;
    return boxvalue;
}

int Helper:: randplayer(){
    int playervalue = QRandomGenerator::global()->generate() % 2;
    return playervalue;
}
