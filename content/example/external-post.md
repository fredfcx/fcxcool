+++
date = "2019-01-17"
title = "Hugo coder wiki"
slug = "hugo-coder-wiki"
tags = [
    "hugo",
    "development",
    "themes"
]
categories = [
    "Development",
]
externalLink = "https://github.com/luizdepra/hugo-coder/wiki"
series = ["Hugo"]
+++

```html
<script src="https://cdn.jsdelivr.net/npm/progressbar.js@1.1.0/dist/progressbar.min.js"></script>

<div id="container"></div>
```
```css
#container {
  margin: 20px;
  width: 80%;
  height: 20px;
  position: relative;
}
```
```js
// progressbar.js@1.0.0 version is used
// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/

var bar = new ProgressBar.Line(container, {
  strokeWidth: 100,
  easing: 'easeInOut',
  duration: 1000,
  color: '#FFEA82',
  trailColor: '#eee',
  trailWidth: 20,
  svgStyle: {width: '100%', height: '100%'},
  text: {
    style: {
      // Text color.
      // Default: same as stroke color (options.color)
      color: '#999',
      transform: null
    },
    autoStyleContainer: true
  },
  from: {color: '#FFEA82'},
  to: {color: '#ED6A5A'},
  step: (state, bar) => {
    bar.setText('能力：'+ Math.round(bar.value() * 100) + ' %');
  }
});

bar.animate(0.5);  // Number from 0.0 to 1.0
```
