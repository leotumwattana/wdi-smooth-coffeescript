// Generated by CoffeeScript 1.6.2
(function() {
  var range;

  range = function(n, m) {
    var number, _i, _j, _results, _results1;

    if (arguments.length < 2) {
      _results = [];
      for (number = _i = 0; 0 <= n ? _i <= n : _i >= n; number = 0 <= n ? ++_i : --_i) {
        _results.push(number);
      }
      return _results;
    } else {
      _results1 = [];
      for (number = _j = n; n <= m ? _j <= m : _j >= m; number = n <= m ? ++_j : --_j) {
        _results1.push(number);
      }
      return _results1;
    }
  };

  show(range(5));

  show(range(2, 5));

}).call(this);