class XPManager {
  int _xp = 0;

  int get xp => _xp;

  void addXP(int amount) {
    _xp += amount;
  }

  void resetXP() {
    _xp = 0;
  }
}
