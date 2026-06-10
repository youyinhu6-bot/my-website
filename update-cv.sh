#!/bin/bash
# 一键更新网站简历脚本
# 用法：把新简历放到 ~/Documents/ 文件夹，然后运行此脚本

WEBSITE_DIR="$HOME/Documents/my-website"
STATIC_CV="$WEBSITE_DIR/static/CV_Youyin_Hu.pdf"

# 找 ~/Documents/website-cv/ 里最新的 PDF 文件
mkdir -p ~/Documents/website-cv
NEW_CV=$(ls -t ~/Documents/website-cv/*.pdf 2>/dev/null | head -1)

if [ -z "$NEW_CV" ]; then
    echo "❌ 在 ~/Documents/website-cv/ 里没找到 PDF 文件，请把新简历放到那里。"
    exit 1
fi

echo "📄 找到新简历：$NEW_CV"

# 解锁并替换
chmod 644 "$STATIC_CV" 2>/dev/null
cp "$NEW_CV" "$STATIC_CV"

if [ $? -ne 0 ]; then
    echo "❌ 复制文件失败"
    exit 1
fi

echo "✅ 简历已替换"

# 推送到 GitHub
cd "$WEBSITE_DIR"
git add static/CV_Youyin_Hu.pdf
git commit -m "Update CV"
git pull --rebase origin main
git push

echo "🚀 已推送到 GitHub，网站将在几分钟内更新！"
