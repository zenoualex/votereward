# Topfivem.net | Votereward

Developed by zenalex#7490

## How it works

Player will vote on your server and then in the game when he types /vote he will get the reward that you want.

Command:
```bash
/vote
```

## How to install

```python
[1.] Clone the repo.
[2.] Put ensure votereward in your server.cfg
[3.] Done.
```

## Modify rewards

```python
For rewarding white money
src_data.addMoney(amt);

For rewarding black money
src_data.addAccountMoney(item , amt)

For rewarding some item
src_data.addInventoryItem(item, amt)

For rewarding xp
TriggerClientEvent('esx_xp:Add', source, 1000)
```

Please make sure to update tests as appropriate.

## License
MIT License

Copyright (c) 2021 zenoualex

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
