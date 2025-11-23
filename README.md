chmod +x setup-kotlin.sh
chmod +x setup-kotlin.expect

./setup-kotlin.expect meu-projeto



cat > ~/.local/share/applications/snow.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Snow
Comment=Aplicação Kotlin GTK
Exec=/workspace/obs/kiko/snow/gradlew run
Icon=applications-games
Terminal=false
Categories=Development;
Path=/workspace/obs/kiko/snow/
EOF

chmod +x ~/.local/share/applications/snow.desktop

