# Tạo thư mục nếu chưa có và ghi nội dung chuẩn vào file
mkdir -p .devcontainer

cat << 'EOF' > .devcontainer/postCreate.sh
#!/bin/bash

sudo apt-get update
sudo apt-get install -y sl
echo "export PATH=\$PATH:/usr/games" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/games" >> ~/.zshrc
EOF

# Cấp quyền thực thi
chmod +x .devcontainer/postCreate.sh