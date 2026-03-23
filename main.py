#!/usr/bin/env python3
# This Python file uses the following encoding: utf-8
import sys
import certifi
import os
from PyQt6.QtWidgets import QApplication
from classes.mainwindow import MainWindow

# Fix for SSL certificates on some systems
os.environ['SSL_CERT_FILE'] = certifi.where()

def main():
    app = QApplication(sys.argv)
    
    # 1. FORCE THE NEW STYLE
    # This checks if your style file exists and applies it immediately
    style_file = "style_modified.qss"
    if os.path.exists(style_file):
        with open(style_file, "r") as f:
            app.setStyleSheet(f.read())
    else:
        print(f"Warning: {style_file} not found in the application folder.")

    # 2. OPEN THE MAIN WINDOW DIRECTLY
    # By calling MainWindow() here without any 'Login' checks, 
    # the app becomes free for everyone.
    widget = MainWindow()
    widget.reinit_model()
    widget.show()
    
    sys.exit(app.exec())

if __name__ == "__main__":
    main()
