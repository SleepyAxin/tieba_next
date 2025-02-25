class Rc4 
{
  final List<int> _s = List<int>.filled(256, 0);
  int _x = 0;
  int _y = 0;
  static const int xorConst = 42;

  Rc4(List<int> key) 
  {
    if (key.isEmpty) { throw ArgumentError('Key不可为空', 'key'); }
    _keySetup(key);
  }

  List<int> crypt(List<int> data) 
  {
    final List<int> output = List<int>.filled(data.length, 0);

    for (int i = 0; i < data.length; i++) 
    {
      _x = (_x + 1) & 255;
      _y = (_y + _s[_x]) & 255;
      _swap(_x, _y);

      final xorIndex = (_s[_x] + _s[_y]) & 255;
      // 先进行RC4加密/解密，然后额外进行一次42异或
      output[i] = (data[i] ^ _s[xorIndex]) ^ xorConst;
    }

    return output;
  }

  void _keySetup(List<int> key) 
  {
    final int keyLength = key.length;
    
    for (int i = 0; i < 256; i++) { _s[i] = i; }

    int j = 0;

    for (int i = 0; i < 256; i++) 
    {
      j = (j + _s[i] + key[i % keyLength]) & 255;
      _swap(i, j);
    }
  }

  void _swap(int i, int j) 
  {
    final temp = _s[i];
    _s[i] = _s[j];
    _s[j] = temp;
  }
}