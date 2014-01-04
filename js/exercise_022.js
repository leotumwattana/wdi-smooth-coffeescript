// Generated by CoffeeScript 1.6.2
(function() {
  var processParagraph, stripPercent;

  stripPercent = function(string) {
    var count, indexOfPercent, type;

    count = 0;
    while ((indexOfPercent = string.indexOf('%')) >= 0) {
      string = string.slice(1);
      count++;
    }
    type = count === 0 ? 'p' : 'h' + count;
    return {
      content: string.trimLeft(),
      type: type
    };
  };

  show(stripPercent(' The Book of Programming'));

  show(stripPercent('% The Book of Programming'));

  show(stripPercent('%% The Book of Programming'));

  show(stripPercent('%%% The Book of Programming'));

  show(stripPercent('%%%% The Book of Programming'));

  show(stripPercent('%%%%% The Book of Programming'));

  processParagraph = function(paragraphs) {
    var array;

    array = paragraphs.split("\n\n");
    return array.map(function(p) {
      return stripPercent(p);
    });
  };

  show(processParagraph(recluseFile));

}).call(this);
