// Generated by CoffeeScript 1.6.2
(function() {
  var range;

  range = function(n) {
    var number, _i, _results;

    _results = [];
    for (number = _i = 0; 0 <= n ? _i <= n : _i >= n; number = 0 <= n ? ++_i : --_i) {
      _results.push(number);
    }
    return _results;
  };

  show(range(5));

}).call(this);
