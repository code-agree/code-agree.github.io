#!/bin/bash

# 更新文章中的引用链接

# 定义文件名映射关系（旧文件名 -> 新文件名）
declare -A file_mapping
file_mapping["memory_order"]="2025-06-24-memory_ordering_in_cpp"
file_mapping["lock_free_queue"]="2025-06-24-lock_free_queue_implementation"
file_mapping["lockfree"]="2025-06-24-lockfree_programming_techniques"
file_mapping["2025-06-20-14-lockfreeEventBus_perf_case"]="2025-06-20-lockfree_eventbus_performance_analysis"
file_mapping["2025-06-19-how_to_design_order_inlocalmemory"]="2025-06-19-how_to_design_order_inlocalmemory"
file_mapping["fix_share_page_position"]="2025-06-24-fix_shared_page_position"
file_mapping["template_class"]="2025-06-24-cpp_template_class_guide"

# 遍历所有Markdown文件
for file in *.md; do
    # 跳过脚本文件
    if [[ "$file" == "update_references.sh" || "$file" == "rename_files.sh" || "$file" == "rename_remaining.sh" ]]; then
        continue
    fi
    
    # 检查文件是否包含引用
    if grep -q "ref \"" "$file"; then
        echo "处理文件: $file"
        
        # 创建临时文件
        temp_file="${file}.temp"
        
        # 复制原始文件内容
        cp "$file" "$temp_file"
        
        # 对每个映射关系进行替换
        for old_name in "${!file_mapping[@]}"; do
            new_name="${file_mapping[$old_name]}"
            echo "  替换引用: $old_name -> $new_name"
            
            # 使用sed替换引用
            sed -i '' "s|ref \"$old_name\"|ref \"$new_name\"|g" "$temp_file"
        done
        
        # 替换完成后，将临时文件移动回原始文件
        mv "$temp_file" "$file"
        echo "  完成"
    fi
done

echo "所有引用更新完成！" 