// Generated by CoffeeScript 1.6.2
(function() {
  var intensify;

  intensify = function(n) {
    if (n > 0) {
      return n + 2;
    } else if (n < 0) {
      return n - 2;
    } else {
      return 0;
    }
  };

  runOnDemand(function() {
    testPure(intensify, [arbInt], 'intensify grows by 2 when positive', function(c, arg, result) {
      c.guard(arg > 0);
      return arg + 2 === result;
    });
    testPure(intensify, [arbInt], 'intensify grows by 2 when negative', function(c, arg, result) {
      c.guard(arg < 0);
      return arg - 2 === result;
    });
    testPure(intensify, [arbConst(0)], 'only non-zero intensify grows', function(c, arg, result) {
      return result === 0;
    });
    return test();
  });

}).call(this);
