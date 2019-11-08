 ## Gitlab

修改 `config/omnibus_config.rb` 文件的配置项

示例使用 `10010` 为 `HTTP` 的端口  `10011` 为 `SSH` 的端口。

#### 启动

附加 4 个 `runner` 实例

```
sudo docker-compose up --scale gitlab-runner=4
```
