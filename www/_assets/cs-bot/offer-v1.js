/* CS Bot — chování nabídky · offer-v1.js
   Přepínač světlý/tmavý (default světlý) + horní progress lišta. */
(function () {
  var root = document.documentElement;
  var btn = document.getElementById('themeBtn');
  var KEY = 'csbot-theme';
  var saved = localStorage.getItem(KEY);
  if (saved) root.setAttribute('data-theme', saved);
  if (btn) btn.addEventListener('click', function () {
    var n = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    root.setAttribute('data-theme', n);
    localStorage.setItem(KEY, n);
  });
  var pb = document.getElementById('printBtn');
  if (pb) pb.addEventListener('click', function () { window.print(); });
  var bar = document.getElementById('progress');
  if (bar) addEventListener('scroll', function () {
    var h = document.documentElement;
    bar.style.width = (h.scrollTop / (h.scrollHeight - h.clientHeight) * 100) + '%';
  }, { passive: true });
})();
