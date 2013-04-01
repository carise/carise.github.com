window.setTimeout(af, 4500);
function af() {
  var d = document.createElement('div');
  d.className = 'af';
  d.innerHTML = '<a href="./index2.html">April Fools =)</a>';
  document.getElementById('notfound').appendChild(d);
}
