# dev_log

## [当前状态]

- 已在本仓库根目录部署 **Academic Pages**（Jekyll + Minimal Mistakes 风格），与 [Aragorn 示例站](https://aragornbfrer.github.io/) 同类技术栈。
- 已配置 `url` / `repository` 为 `LeeYan25.github.io`，导航精简为 About / Publications / CV。
- 首页 `_pages/about.md` 已改为可编辑的本科生友好段落结构（About / News / Projects / Contact 等占位）。

## [关键决策]

- 选用 **Academic Pages** 官方模板而非从零写 HTML：GitHub Pages 原生支持 Jekyll，维护成本低，且与参考站一致。
- 顶部导航去掉 Talks / Teaching / Portfolio / Blog / Guide，减少空页面噪音；需要时在 `_data/navigation.yml` 取消注释即可。

## [待办事项]

- 替换 `_config.yml` 中 `author`（姓名、学校、`email`、头像 `images/profile.png`）。
- 将真实内容写入 `_pages/about.md`；论文条目放入 `_publications/`。
- 本地已 `git commit`，请在终端执行 `git push origin main`（若 HTTPS 报错可试：`git config http.version HTTP/1.1` 后重试）。
- 首次推送后在 GitHub **Settings → Pages** 确认 Source 为 **main** 分支 root，等待构建（约 1–3 分钟）。

## [本地 Jekyll / bundle 备忘]

- 系统自带 **Ruby 2.6 + Bundler 1.x** 易导致 `bundle install` 极慢或像卡住；应用 **Homebrew Ruby 3.x + Bundler 2**，删 `Gemfile.lock` 后重装；或改用 **`docker compose up`** 预览，无需本机 `bundle install`。

## [上下文锚点]

- 站点配置：`_config.yml`（`url`, `author`, `repository`）
- 首页正文：`_pages/about.md`（`permalink: /`）
- 顶栏：`_data/navigation.yml`
- 侧栏头像：`images/profile.png`
