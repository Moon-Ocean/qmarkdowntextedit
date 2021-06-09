add_rules("mode.debug", "mode.release")

target("qmarkdowntextedit")
    add_rules("qt.shared")
    add_defines("QMarkdownTextEdit_LIB")
    add_frameworks("QtWidgets", "QtGui", "QtNetwork")
    add_files("markdownhighlighter.cpp")
    add_files("qmarkdowntextedit.cpp")
    add_files("qownlanguagedata.cpp")
    add_files("qplaintexteditsearchwidget.ui")
    add_files("qplaintexteditsearchwidget.cpp")
    add_files("qmarkdowntextedit.h", 
        "qplaintexteditsearchwidget.h",
        "markdownhighlighter.h",
        "qownlanguagedata.h")
    add_headerfiles("qmarkdowntextedit.h", 
        "qplaintexteditsearchwidget.h",
        "markdownhighlighter.h")
    add_files("media.qrc")

target("test")
    set_default(false)
    add_rules("qt.console")
    add_includedirs("./")
    add_frameworks("QtWidgets", "QtGui", "QtNetwork")
    add_deps("qmarkdowntextedit")
    add_files("main.cpp")
    add_files("mainwindow.cpp", "mainwindow.h")
    add_files("mainwindow.ui")