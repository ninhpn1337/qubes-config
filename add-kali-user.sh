#!/bin/bash

# Tạo user 'kali' với home directory và shell bash
useradd -m -s /bin/bash kali

# Đặt mật khẩu là 'kali'
echo "kali:kali" | chpasswd

# Thêm user vào nhóm sudo
usermod -aG sudo kali

# Cho phép sudo không cần mật khẩu
echo "kali ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/kali
chmod 0440 /etc/sudoers.d/kali

echo "[+] User 'kali' đã được tạo với quyền root không cần nhập mật khẩu."
