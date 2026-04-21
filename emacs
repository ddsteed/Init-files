#!/usr/bin/env zsh
#-----------------------------------------------------------------------
# Emacs 配置切换脚本
#
# 功能说明：
#   - 通过符号链接切换不同的 Emacs 配置
#   - 支持 Doom Emacs 和 GNU Emacs 配置
#
# 作者：     Hao Feng (F1)
# 版权：     (c) 2022, RDS
# 创建日期：Mar. 10, 2022
# 最后更新：Mar. 20, 2025
#
# 版本历史：
#   v1.0.0 (2022-03-10) - 初始版本
#   v1.1.0 (2025-03-20) - 添加完整的中文注释和版本历史
#-----------------------------------------------------------------------

runname=$(basename $0)

# 移除现有的 Emacs 配置链接
rm -f ~/.emacs.d

# 根据调用名称创建相应的符号链接
case $runname in
  doom)
    # 使用 Doom Emacs 配置
    ln -s ~/.emacs.d.doom ~/.emacs.d
    ;;
  gnu)
    # 使用 GNU Emacs 配置
    ln -s ~/.emacs.d.gnu ~/.emacs.d
    ;;
esac
