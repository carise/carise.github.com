window.setTimeout(af, 3500);
function af() {
  var d = document.createElement('div');
  d.className = 'af';
  d.innerHTML = '<a href="./index2.html">Oh, look here...</a>';
  document.getElementById('notfound').appendChild(d);
}
