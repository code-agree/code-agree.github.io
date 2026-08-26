#!/bin/bash

# 更新文章中的引用链接 - 修复版

# 遍历所有Markdown文件
for file in *.md; do
    # 跳过脚本文件
    if [[ "$file" == *"update_references"* || "$file" == *"rename_files"* ]]; then
        continue
    fi
    
    echo "处理文件: $file"
    
    # 创建临时文件
    temp_file="${file}.temp"
    
    # 复制原始文件内容
    cp "$file" "$temp_file"
    
    # 替换各种引用
    sed -i '' 's|ref "memory_order"|ref "2025-06-24-memory_ordering_in_cpp"|g' "$temp_file"
    sed -i '' 's|ref "lock_free_queue"|ref "2025-06-24-lock_free_queue_implementation"|g' "$temp_file"
    sed -i '' 's|ref "lockfree"|ref "2025-06-24-lockfree_programming_techniques"|g' "$temp_file"
    sed -i '' 's|ref "2025-06-20-14-lockfreeEventBus_perf_case"|ref "2025-06-20-lockfree_eventbus_performance_analysis"|g' "$temp_file"
    sed -i '' 's|ref "fix_share_page_position"|ref "2025-06-24-fix_shared_page_position"|g' "$temp_file"
    sed -i '' 's|ref "template_class"|ref "2025-06-24-cpp_template_class_guide"|g' "$temp_file"
    
    # 替换完成后，将临时文件移动回原始文件
    mv "$temp_file" "$file"
    echo "  完成"
done

echo "所有引用更新完成！" 