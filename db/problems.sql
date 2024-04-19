INSERT INTO problem(title,description,cid,chapter,codeinit) VALUES('打印Hello World', '参考注释行,输入print语句,运行', 1, 1, '# print("Hello, World!")');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('个性化消息', '用变量表示一个人的名字，并向其显示一条消息。显示的消息非常简单: 你好,黄恪瑾,你今天想学点Python吗?', 2, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('删除人名中的空白', '用变量表示一个人的名字, 并在其开头和末尾都包含一些空白字符。分别使用函数lstrip(), rstrip() 和 strip()对人名进行处理, 并打印结果', 2, '## 不可改区域\nperson="\tAlbert Einstein\n\n"\n## 不可改区域\n\n## 用lstrip()\n\n##用rstrip()\n\n##用strip()\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('文件扩展名', 'Python 提供了 removesuffix() 方法，其工作原理与 removeprefix() 很像。请将值给变量 filename 使用 removesuffix() 方法来显示不包含扩展名的文件名，并打印此文件名。', 2, '## 不可改区域\nfilename="python_notes.txt"\n## 不可改区域\n\n');

INSERT INTO problem(title,description,chapter,codeinit) VALUES('朋友姓名', '将一些朋友的姓名存储在一个列表中，并将其命名为 names。依次访问该列表的每个元素，从而将每个朋友的姓名都打印出来。', 3, 'names=[]\n\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('问候语', '使用上一题的朋友列表, 为每人打印一条消息。每条消息都包含相同的问候语，但抬头为相应朋友的姓名。', 3, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('嘉宾名单', '创建一个列表,包含你想邀请的至少三个人。打印消息，邀请列表里的每个人来与你共进晚餐。', 3, 'guests=[]\n\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('修改嘉宾名单', '上题中有位嘉宾刚通知你无法赴约，因此需要另外邀请一位嘉宾。 \n1. 用print()指出哪位嘉宾无法赴约; \n2. 修改嘉宾名单，将无法赴约的嘉宾替换为新的嘉宾; \n3. 再次打印消息，邀请他们', 3, 'guests=["Jim","Kate","Bob"]\n\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('添加嘉宾', '你刚找到一张更大的餐桌，能容纳更多嘉宾入座，想想你还想邀请哪三位嘉宾。\n1. 用insert()将一位嘉宾添加到名单开头; \n2. 用insert()将另一位嘉宾添加到名单中间; \n3. 用append()将最后一名嘉宾添加到名单末尾。 ', 3, 'guests=["Jim","Merry","Bob"]\n\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('缩短名单', '你刚得知新购买的餐桌无法及时送达，因此只能邀请两位嘉宾。 \n1. 使用pop()不断地删除名单中的嘉宾，直到只有两位嘉宾为止。每次从名单中弹出一位嘉宾时，都打印一条消息，让嘉宾知道你很抱歉，无法邀请他共进晚餐; \n2.对余下的每位嘉宾都打印一条消息，指出他们依然在受邀之列; \n3.使用del将最后两位嘉宾从名单中删除。打印该名单，核实名单是空的。', 3, 'guests=["Mike","Jim","Lisa","Merry","Bob","Frank"]\n\n');

INSERT INTO problem(title,description,chapter,codeinit) VALUES('放眼世界', '想出至少5个你想去旅游的地方。 \n1. 将这些地方存储在一个列表中。 \n2. 按原顺序打印列表。 \n3. 使用sorted()按字母顺序打印列表。 \n4. 再次打印核实该列表顺序未变。 \n5. 使用sorted()按字母反序打印列表。 \n6.再次打印核实列表顺序未变。 \n7.使用reverse()改变排列顺序，并核实顺序变了。 \n8.再次使用reverse(),并核实列表恢复原来的排列顺序。 \n9.使用sort()按字母顺序排序，并核实顺序变了。 \n10. 使用sort()按字母顺序反序，并核实顺序变了。', 3, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('目的地数', '使用len()指出上题中，你的旅游目的地数', 3, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('喜欢去哪旅游', '1. 使用for循环，将上题中的目的地都打印出来。 \n2. 修改这个for循环, 循环打印包含目的地的句子，比如 I like Osaka  \n3. 程序末尾添加打印，你有多喜欢旅游。 I love traveling very much.', 4, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('数到20', '使用一个for循环打印数 1~20(含)。', 4, '');

