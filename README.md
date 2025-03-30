# MaskGIT Report
> DLP, Lab3


這是一個使用 LaTeX 編寫的 MaskGIT 論文報告專案。

## 專案結構

```
.
├── src/           # LaTeX 源文件
│   ├── main.tex   # 主文件
│   ├── cover.tex  # 封面
│   └── report.tex # 報告內容
├── build/         # 編譯產生的文件
├── figures/       # 圖片文件
├── references/    # 參考文獻
└── styles/        # LaTeX 樣式文件
```

## 編譯方法

### 使用 Makefile（推薦）

專案提供了 Makefile 來簡化編譯流程：

1. 一次性編譯：
```bash
make all
```

2. 清理編譯文件：
```bash
make clean
```

3. 持續監視並自動編譯：
```bash
make watch
```

### 系統需求

- XeLaTeX
- BibTeX
- 中文字體（Heiti TC）

## 注意事項

- 請確保已安裝所有必要的 LaTeX 包
- 圖片應放在 `figures/` 目錄中
- 參考文獻應放在 `references/references.bib` 中
- 編譯產生的文件會存放在 `build/` 目錄中
- 編譯後的 PDF 文件位於 `build/main.pdf`

## 報告內容

本報告主要討論 MaskGIT（Masked Generative Image Transformer）的技術細節和應用。報告包含以下主要部分：

1. 背景介紹
2. 技術原理
3. 實驗結果
4. 結論與展望

## 作者

劉宇舜  
Department of Computer Science and Information Engineering  
National Yang Ming Chiao Tung University 