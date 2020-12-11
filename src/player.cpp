#include "player.h"

player::player(const std::string &playername)
{
  name = playername;
}

std::string player::getName()
{
  return name;
}

void player::setName(const std::string& newName)
{
  name = newName;
}

unsigned int player::getHealth()
{
  return health;
}

void player::setHealth(const unsigned int newHealth)
{
  health = newHealth;
}
