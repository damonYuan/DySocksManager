File.open('tmp', 'w') { |file|
  for i in 50000..50100
    file.write "upstream ss_#{i.to_s} {\n"
    file.write "  hash $remote_addr consistent;\n"
    file.write "  server {{ manager_1_ip }}:#{i.to_s};\n"
    file.write "  server {{ worker_1_ip }}:#{i.to_s};\n"
    file.write "  server {{ worker_2_ip }}:#{i.to_s};\n"
    file.write "  server {{ worker_3_ip }}:#{i.to_s};\n"
    file.write "}\n"
    file.write "\n"
  end

  for i in 50000..50100
    file.write "server {\n"
    file.write "  listen       #{i.to_s};\n"
    file.write "  proxy_pass ss_#{i.to_s};\n"
    file.write "  error_log /var/log/nginx/error_ss_#{i.to_s}.log;\n"
    file.write "}\n"
    file.write "\n"
  end
}