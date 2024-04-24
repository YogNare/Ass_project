import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QTextEdit, QAction, QFileDialog, QPushButton, QVBoxLayout, QWidget, QShortcut, QHBoxLayout, QGridLayout
from PyQt5.QtGui import QKeySequence


class RoundedButton(QPushButton):
    def __init__(self, text):
        super().__init__(text)
        self.setStyleSheet("background-color: #666; color: white; border: none; padding: 10px; border-radius: 10px;")

class TextEditorApp(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Text Editor")
        self.setGeometry(100, 100, 800, 600)

        self.file_path = None

        self.central_widget = QWidget()
        self.setCentralWidget(self.central_widget)
        self.layout = QVBoxLayout()
        self.central_widget.setLayout(self.layout)

        self.text_box = QTextEdit()
        self.text_box.setStyleSheet("background-color: #333; color: white; border-radius: 10px;")
        self.layout.addWidget(self.text_box)

        open_action = QAction('O', self)
        open_action.triggered.connect(self.open_file)

        save_action = QAction('S', self)
        save_action.triggered.connect(self.save_file)

        hash_func_action = QAction('Hash Function', self)
        hash_func_action.triggered.connect(self.hash_function)

        self.toolbar = self.addToolBar('Toolbar')
        self.toolbar.setStyleSheet("background-color: #444")
        self.toolbar.addAction(open_action)
        self.toolbar.addAction(save_action)
        self.toolbar.addAction(hash_func_action)

        self.button_grid = QWidget()
        self.button_layout = QGridLayout()
        self.button_grid.setLayout(self.button_layout)

        arrow_symbols = ['↑', '←', '→', '↓']
        positions = [(0, 1), (1, 0), (1, 2), (2, 1)]

        for symbol, pos in zip(arrow_symbols, positions):
            button = RoundedButton(symbol)
            button.clicked.connect(lambda _, s=symbol: self.text_box.insertPlainText(s))
            self.button_layout.addWidget(button, *pos)

        button_labels = ['♠', '↑', '♣', '←', '~', '→', '♥', '↓', '♦']
        positions = [(i // 3, i % 3) for i in range(9)]

        for label, pos in zip(button_labels, positions):
            button = RoundedButton(label)
            button.clicked.connect(lambda _, text=label: self.text_box.insertPlainText(text))
            self.button_layout.addWidget(button, *pos)

        self.layout.addWidget(self.button_grid)

        # Добавляем второе текстовое поле для чтения
        self.read_only_text_box = QTextEdit()
        self.read_only_text_box.setReadOnly(True)
        self.read_only_text_box.setStyleSheet("background-color: #555; color: white; border-radius: 10px;")
        self.read_only_text_box.setMaximumHeight(100)  # Устанавливаем максимальную высоту в 100 пикселей
        self.layout.addWidget(self.read_only_text_box)

        save_shortcut = QShortcut(QKeySequence("Ctrl+S"), self)
        save_shortcut.activated.connect(self.save_file)

    def open_file(self):
        file_path, _ = QFileDialog.getOpenFileName(self, 'Open File', filter='Text files (*.txt)')
        if file_path:
            self.file_path = file_path
            with open(file_path, 'r') as file:
                self.text_box.setPlainText(file.read())

    def save_file(self):
        if self.file_path:
            with open(self.file_path, 'w') as file:
                file.write(self.text_box.toPlainText())

    def hash_function(self):
        text = self.text_box.toPlainText()
        num = 0
        out_string = ""
        com_flag = 0
        string_flag = 0
        for symbol in text:
            
            if symbol == '#' and string_flag == 0:
                com_flag = 1
            
            if com_flag == 1:
                if symbol == "\n":
                    com_flag = 0
                    continue
                else:
                    continue

            if symbol == "{" and string_flag == 0:
                string_flag = 1
                continue

            elif symbol == "}" and string_flag == 1:
                string_flag = 0
                continue

            if symbol in ('\n', ' ') and string_flag == 0:
                continue

            if symbol == '~' and string_flag == 0:
                out_string += "0x1b, 0x5b, 0x48, "
                num = 0

            elif symbol in ('♠', '♣', '♥', '♦'):
                string = str('♠'.encode("utf-8")).replace("\\", ", 0")
                out_string += string[4:-1] + ', '
            
            elif symbol == '↑':
                if num == 0:
                    out_string += "0x1b, 0x5b, 0x41, "
                else:
                    while num > 9:
                        out_string += "0x1b, 0x5b, 0x39, 0x41, "
                        num -= 9
                    if num > 0:
                        out_string += f"0x1b, 0x5b, 0x3{num}, 0x41, "
                        
                num = 0
            
            elif symbol == '→':
                if num == 0:
                    out_string += "0x1b, 0x5b, 0x43, "
                else:
                    while num > 9:
                        out_string += "0x1b, 0x5b, 0x39, 0x43, "
                        num -= 9
                    if num > 0:
                        out_string += f"0x1b, 0x5b, 0x3{num}, 0x43, "
                        
                num = 0
            
            elif symbol == '↓':
                if num == 0:
                    out_string += "0x1b, 0x5b, 0x42, "
                else:
                    while num > 9:
                        out_string += "0x1b, 0x5b, 0x39, 0x42, "
                        num -= 9
                    if num > 0:
                        out_string += f"0x1b, 0x5b, 0x3{num}, 0x42, "
                        
                num = 0
            
            elif symbol == '←':
                if num == 0:
                    out_string += "0x1b, 0x5b, 0x44, "
                else:
                    while num > 9:
                        out_string += "0x1b, 0x5b, 0x39, 0x44, "
                        num -= 9
                    if num > 0:
                        out_string += f"0x1b, 0x5b, 0x3{num}, 0x44, "
                        
                num = 0
            
            else:
                if string_flag == 1:
                    utf_symbol = symbol.encode("utf-8");
                    if len(utf_symbol) == len(utf_symbol):
                        out_string += f"0x{str(hex(ord(symbol)))[2:]}, "
                    else:
                        utf_symbol = str(utf_symbol).replace('\\', ', 0')[0:-1]
                        out_string += utf_symbol
                    num = 0
                else:
                    num *= 10
                    num += int(symbol)

        string_len = out_string[:-2].count('x')
        self.read_only_text_box.setPlainText(f"{string_len}({string_len * 2}) - {out_string[:-2]}")



def main():
    app = QApplication(sys.argv)
    window = TextEditorApp()
    window.setStyleSheet("background-color: #444;")

    for action in window.toolbar.actions():
        action_widget = window.toolbar.widgetForAction(action)
        action_widget.setStyleSheet("background-color: #555; color: white; border: none; padding: 10px; border-radius: 10px;")

    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
