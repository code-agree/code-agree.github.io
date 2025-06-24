#!/bin/bash

# 重命名脚本 - 处理剩余的文件

# 重命名函数
rename_file() {
    local old_name=$1
    local new_name=$2
    
    # 如果新旧名称不同，执行重命名
    if [ "$old_name" != "$new_name" ]; then
        echo "重命名: $old_name -> $new_name"
        mv "$old_name" "$new_name"
    else
        echo "跳过: $old_name (已符合命名规范)"
    fi
}

# 重命名剩余的文件
rename_file "2025-06-19-perf_Case.md" "2025-06-19-perf_case_study.md"
rename_file "2025-06-20-14-lockfreeEventBus_perf_case.md" "2025-06-20-lockfree_eventbus_performance_analysis.md"
rename_file "2025-06-21-00-memory_order_performance_analyse.md" "2025-06-21-memory_order_performance_analysis.md"
rename_file "2025-06-23-02-cpu_data.md" "2025-06-23-cpu_data_structures.md"
rename_file "2025-06-23-15-cache_false_sharing.md" "2025-06-23-cache_false_sharing_analysis.md"
rename_file "2025-06-24-15-process_and.md" "2025-06-24-process_and_thread_management.md"
rename_file "2025-06-24-16-inline_function.md" "2025-06-24-inline_function_optimization.md"
rename_file "fupeng.md" "2025-06-24-fupeng_trading_system.md"

echo "剩余文件重命名完成！" 