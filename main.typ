#import "template.typ": conf

// 以下部分用于优化展示，可以删除
#import "@preview/tablex:0.0.9": cellx, tablex
#import "@preview/codly:1.3.0": codly
#import "@preview/codly-languages:0.1.10"

// 请根据需求修改信息
#show: doc => conf(
  head: "主标题",
  title: "副标题",
  author: "小明",
  student-id: "1145141314",
  major: "宇宙社会学",
  advisor: "罗",
  date: "2026年 06月 01日",
  doc,
)

// 前言部分（罗马数字页码）
#set page(numbering: "I")
#counter(page).update(1)

#include "abstract.typ"

#pagebreak()
#outline(title: "目录", depth: 3)
#pagebreak()

// 正文部分（阿拉伯数字页码）
#set page(numbering: "1")
#counter(page).update(1)

// 章节分文件，可根据需要增减
#include "chapter1.typ"
#include "chapter2.typ"
#include "chapter3.typ"
#include "chapter4.typ"
#include "chapter5.typ"
#include "chapter6.typ"

// 引用文献，如果想快速全部引用可以启用参考文献部分的full: true并删除此部分
#cite(label("ref1"), form: none)
#cite(label("ref2"), form: none)

#pagebreak()

// 致谢部分，需要可以启用此部分
//#include "acknowledgments.typ"

// 参考文献部分
#bibliography(
  "references.bib",
  title: "参考文献",
  //full: true,//如果要引入文件内所有参考文献可以启用本行
  style: "gb-7714-2015-numeric",
)
//#bibliography("references.yml",title: "参考文献",style: "gb-7714-2015-numeric",)//yml格式参考文献启用记得禁用前面bib格式参考文献（不太建议用这个）
