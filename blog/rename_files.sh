#!/bin/bash

# 重命名脚本 - 将文件名改为"时间+精简概括"格式

# 设置当前日期作为默认日期（如果文件没有日期信息）
CURRENT_DATE=$(date +"%Y-%m-%d")

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

# 已经符合格式的文件 (以年份-月份-日期开头)
# 这些文件不需要重命名

# 需要重命名的文件
rename_file "atom.md" "${CURRENT_DATE}-atomic_operations_reconnection_mechanism.md"
rename_file "Session_resumption.md" "${CURRENT_DATE}-session_resumption_techniques.md"
rename_file "batch_order.md" "${CURRENT_DATE}-batch_order_processing.md"
rename_file "bit_field_compression.md" "${CURRENT_DATE}-bit_field_compression_techniques.md"
rename_file "config_managemeng_in_HFT_system.md" "${CURRENT_DATE}-config_management_in_hft_systems.md"
rename_file "datareader_Design.md" "${CURRENT_DATE}-datareader_design_patterns.md"
rename_file "fix_share_page_position.md" "${CURRENT_DATE}-fix_shared_page_position.md"
rename_file "fork.md" "${CURRENT_DATE}-fork_system_call_analysis.md"
rename_file "high_performance.md" "${CURRENT_DATE}-high_performance_computing_principles.md"
rename_file "How_to_publish_new_blog.md" "${CURRENT_DATE}-how_to_publish_new_blog.md"
rename_file "io_uring.md" "${CURRENT_DATE}-io_uring_basics.md"
rename_file "io_uring_mechnism.md" "${CURRENT_DATE}-io_uring_mechanism_details.md"
rename_file "lock_free_queue.md" "${CURRENT_DATE}-lock_free_queue_implementation.md"
rename_file "lockfree.md" "${CURRENT_DATE}-lockfree_programming_techniques.md"
rename_file "memory_order.md" "${CURRENT_DATE}-memory_ordering_in_cpp.md"
rename_file "message_overstocked.md" "${CURRENT_DATE}-message_queue_overstocking_solutions.md"
rename_file "mmAvellaneda-Stoikov.md" "${CURRENT_DATE}-avellaneda_stoikov_market_making.md"
rename_file "multiQuotedata.md" "${CURRENT_DATE}-multi_quote_data_processing.md"
rename_file "mutex.md" "${CURRENT_DATE}-mutex_performance_analysis.md"
rename_file "orderbook.md" "${CURRENT_DATE}-orderbook_implementation.md"
rename_file "perf.md" "${CURRENT_DATE}-perf_tool_usage_guide.md"
rename_file "project_manage.md" "${CURRENT_DATE}-project_management_best_practices.md"
rename_file "queue_usage.md" "${CURRENT_DATE}-queue_usage_patterns.md"
rename_file "queue_usage2.md" "${CURRENT_DATE}-advanced_queue_usage_patterns.md"
rename_file "read.md" "${CURRENT_DATE}-efficient_reading_techniques.md"
rename_file "sendingorder.md" "${CURRENT_DATE}-order_sending_optimization.md"
rename_file "share_screen.md" "${CURRENT_DATE}-screen_sharing_techniques.md"
rename_file "solana.md" "${CURRENT_DATE}-solana_blockchain_analysis.md"
rename_file "solana_monitor.md" "${CURRENT_DATE}-solana_monitoring_system.md"
rename_file "string_mmap.md" "${CURRENT_DATE}-string_memory_mapping_techniques.md"
rename_file "template_class.md" "${CURRENT_DATE}-cpp_template_class_guide.md"
rename_file "two-first-post.md" "${CURRENT_DATE}-getting_started_guide.md"
rename_file "zero_copy.md" "${CURRENT_DATE}-zero_copy_optimization.md"

echo "重命名完成！" 